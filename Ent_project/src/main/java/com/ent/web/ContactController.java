package com.ent.web;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import common.CommonService;
import contact.ContactPage;
import contact.ContactServiceimpl;
import contact.ContactVO;

@Controller
public class ContactController {
	@Autowired private ContactServiceimpl service;
	@Autowired private CommonService common;
	
	//어드민 리플 삭제
	@RequestMapping("/admin_reply_delete")
	public String admin_reply_delete(int id, Model model) {
		service.contact_reply_delete(id);
		model.addAttribute("id", id);
		model.addAttribute("url", "contact_detail");
		return "contact_us/redirect";
	}
	
	//어드민 리플 등록
	@RequestMapping("/admin_reply_insert")
	public String admin_reply_insert(ContactVO vo, Model model) {
		service.contact_reply_insert(vo);
		model.addAttribute("id", vo.getId());
		model.addAttribute("url", "contact_detail");
		return "contact_us/redirect";
	}
	
	@RequestMapping("/contact_update")
	public String contact_update(ContactVO vo, MultipartFile file, String attach, Model model, HttpSession session) {
		ContactVO contact = service.contact_detail(vo.getId());
		String uuid = session.getServletContext().getRealPath("resources")
					+ "/" + contact.getFilepath();
		//첨부파일이 있는 경우
		if( !file.isEmpty() ) {
			vo.setFilename( file.getOriginalFilename() );
			vo.setFilepath( common.fileUpload("board", file, session));
			
			//변경해서 첨부한 경우
			if( contact.getFilename()!=null ) {
				File f = new File(uuid);
				if( f.exists() ) f.delete();
			}
		}else { //첨부파일이 없는 경우
			if( !attach.isEmpty() ) {  //원래첨부된 파일을 사용하는 경우
				vo.setFilename( contact.getFilename() );
				vo.setFilepath( contact.getFilepath() );
			}else {
				//원래첨부파일이 있었다면 해당파일을 삭제
				if( contact.getFilename()!=null ) {
					File f = new File(uuid);
					if( f.exists() ) f.delete();
				}
			}
		}
		
		service.contact_update(vo);
		model.addAttribute("url", "contact_us");
		return "contact_us/redirect";
	}
	
	@RequestMapping("/contact_modify")
	public String contact_modify(int id, Model model) {
		model.addAttribute("vo", service.contact_detail(id));
		model.addAttribute("crlf", "\r\n");
		model.addAttribute("page", page);
		return "contact_us/modify";
	}
	
	@RequestMapping("/contact_delete")
	public String contact_delete(int id, HttpSession session, Model model) {
		ContactVO vo = service.contact_detail(id);
		if( vo.getFilename()!=null ) {
			String uuid = session.getServletContext().getRealPath("resources")
				+ "/" + vo.getFilepath();
			File file = new File(uuid);
			if( file.exists() ) file.delete();
		}
		
		//해당 글을 DB에서 삭제한 후 목록화면으로 연결
		service.contact_delete(id);
		
		model.addAttribute("url", "contact_us");
		model.addAttribute("page", page);
		return "contact_us/redirect";
	}
	
	@RequestMapping("/contact_detail")
	public String contact_detail(int id, Model model) {
		model.addAttribute("vo", service.contact_detail(id));
		model.addAttribute("crlf", "\r\n");
		model.addAttribute("page", page);
		return "contact_us/contactUs_detail";
	}
	
	@RequestMapping("/contact_insert")
	public String contact_insert(ContactVO vo, MultipartFile file, HttpSession session) {
		System.out.println("file : " +file);
		if( ! file.isEmpty() ) {
			vo.setFilename( file.getOriginalFilename() );
			vo.setFilepath( 
				common.fileUpload("contact", file, session) );
		}
		service.contact_insert(vo);
		return "redirect:contact_us";
	}
	
	
	@RequestMapping("/write")
	public String write() {
		return "contact_us/write";
	}
	
	@Autowired private ContactPage page;
	@RequestMapping("/contact_us")
	public String contact_us(HttpSession session
			, @RequestParam(defaultValue="20") int pageList
			, String search, String keyword 
			, @RequestParam(defaultValue="1") int curPage
			, Model model) {
		session.setAttribute("category", "contact_us");
		page.setCurPage(curPage);
		page.setSearch(search);
		page.setKeyword(keyword);
		page.setPageList(pageList);
		model.addAttribute("page", service.contact_list(page));
		return "contact_us/contactUs_Main";
	}

}
