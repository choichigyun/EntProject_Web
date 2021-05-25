package com.ent.web;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import about.AboutPage;
import about.AboutServiceimpl;
import about.AboutVO;
import common.CommonService;

@Controller
public class AboutController {
	@Autowired private AboutServiceimpl service;
	@Autowired private CommonService common;
	
	//공지 삭제처리
	@RequestMapping("/delete.ab")
	public String delete(int id, HttpSession session, Model model) {
		AboutVO vo = service.about_detail(id);
		if( vo.getFilename()!=null ) {
			String uuid = session.getServletContext().getRealPath("resources")
					+ "/" + vo.getFilepath();
			File file = new File(uuid);
			if( file.exists() ) file.delete();
		}
		service.about_delete(id);
		
		model.addAttribute("url", "list.ab");
		model.addAttribute("page", page);
		return "redirect:list.ab";
	}
	
	//공지 수정처리
	@RequestMapping("/update.ab")
	public String update(AboutVO vo, MultipartFile file
					, String attach, Model model
					, HttpSession session) {
		AboutVO about = service.about_detail(vo.getId());
		String uuid = session.getServletContext().getRealPath("resources")
				+ "/" + about.getFilepath();
		if( !file.isEmpty() ) {
			vo.setFilename( file.getOriginalFilename() );
			vo.setFilepath( common.fileUpload("review", file, session) );
			
			//변경 후 첨부 시
			if( about.getFilename()!=null ) {
				File f= new File(uuid);
				if( f.exists() ) f.delete();
			}
			
		}else { //첨부파일이 없을시
			if( !attach.isEmpty() ) { //원래 첨부된 파일을 사용하는 경우
				vo.setFilename( about.getFilename() );
				vo.setFilepath( about.getFilepath() );
			}else { 
				//첨부파일이 있었다면 삭제
				if( about.getFilename()!=null ) {
					File f = new File(uuid);
					if( f.exists() ) f.delete();
				}
			}
		}
		service.about_update(vo);
		
		model.addAttribute("id", vo.getId());
		model.addAttribute("url", "detail.ab");
		return "about_us/redirect";
	}
	
	//공지 수정화면
	@RequestMapping("/modify.ab")
	public String modify(int id, Model model) {
		model.addAttribute("vo", service.about_detail(id));
		model.addAttribute("crlf", "\r\n");
		model.addAttribute("page", page);
		return "about_us/aboutus_Modify";
	}

	//신규 공지 글 저장 요청
	@RequestMapping("/insert.ab")
	public String insert(AboutVO vo, HttpSession session
					, MultipartFile file) {
		if(!file.isEmpty()) {
			vo.setFilename( file.getOriginalFilename() );
			vo.setFilepath(
					common.fileUpload("about", file, session));
			
		}
		service.about_insert(vo);
		return "redirect:list.ab";
	}
	
	//신규 공지화면
	@RequestMapping("/new.ab")
	public String notice() {
		return "about_us/aboutus_New";
	}
	
	//공지 상세정보
	@RequestMapping("/detail.ab")
	public String detail(int id, Model model) {
		model.addAttribute("vo", service.about_detail(id));
		model.addAttribute("crlf", "\r\n");
		model.addAttribute("page", page);
		return "about_us/aboutus_Detail";
	}
	
	@Autowired private AboutPage page;
	//공지 목록
	@RequestMapping("/list.ab")
	public String list(HttpSession session
			, @RequestParam(defaultValue="20") int pageList
			, String search, String keyword 
			, @RequestParam(defaultValue="1") int curPage
			, Model model) {
		session.setAttribute("category", "About_us");
		session.setAttribute("Aboutus", "Notice");
		page.setCurPage(curPage);
		page.setSearch(search);
		page.setKeyword(keyword);
		page.setPageList(pageList);
		model.addAttribute("page", service.about_list(page));
		return "about_us/aboutus_Notice";
	}
	
}
