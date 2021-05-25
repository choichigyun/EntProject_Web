package com.ent.web;

import java.io.File;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import common.CommonService;
import contact.ContactVO;
import review.ReviewCommentVO;
import review.ReviewPage;
import review.ReviewServiceimpl;
import review.ReviewVO;

@Controller
public class ReviewController {
	@Autowired private ReviewServiceimpl service;
	@Autowired private CommonService common;
	
	//댓글 삭제
	@RequestMapping("/review_comment_delete")
	public String review_reply_delete(int id, Model model) {
		service.review_reply_delete(id);
		
		model.addAttribute("id", id);
		model.addAttribute("url", "detail.re");
		return "review/redirect";
	}
	
	//댓글저장
	@RequestMapping("/review_comment_insert")
	public String review_reply_insert(ReviewVO vo, Model model) {
		service.review_reply_insert(vo);
		
		model.addAttribute("id", vo.getId());
		model.addAttribute("url", "detail.re");
		//return "redirect:detail.re?id=" + vo.getId();
		return "review/redirect";
	}
	
	//리뷰 삭제처리
	@RequestMapping("/delete.re")
	public String delete(int id, HttpSession session, Model model) {
		ReviewVO vo = service.review_detail(id);
		if( vo.getFilename()!=null ) {
			String uuid = session.getServletContext().getRealPath("resources")
				+ "/" + vo.getFilepath();
			File file = new File(uuid);
			if( file.exists() ) file.delete();
		}
		
		service.review_delete(id);
		
		model.addAttribute("url", "list.re");
		model.addAttribute("page", page);
		return "review/redirect";
	}
	
	//리뷰 수정저장처리
	@RequestMapping("/update.re")
	public String review_update(ReviewVO vo, MultipartFile file
						, String attach, Model model
						, HttpSession session) {
		ReviewVO review = service.review_detail(vo.getId());
		String uuid = session.getServletContext().getRealPath("resources")
					+ "/" + review.getFilepath();
		
		//첨부파일 존재 O
		if( !file.isEmpty() ) {
			vo.setFilename( file.getOriginalFilename() );
			vo.setFilepath( common.fileUpload("review", file, session) );
			
			//변경 후 첨부 시
			if( review.getFilename()!=null ) {
				File f= new File(uuid);
				if( f.exists() ) f.delete();
			}
			
		}else { //첨부파일이 없을시
			if( !attach.isEmpty() ) { //원래 첨부된 파일을 사용하는 경우
				vo.setFilename( review.getFilename() );
				vo.setFilepath( review.getFilepath() );
			}else { 
				//첨부파일이 있었다면 삭제
				if( review.getFilename()!=null ) {
					File f = new File(uuid);
					if( f.exists() ) f.delete();
				}
			}
		}
		
		//화면에서 변경한 정보를 DB에 변경저장 후 상세화면으로 연결
		service.review_update(vo);
		
		model.addAttribute("id", vo.getId());
		model.addAttribute("url", "detail.re");
		return "review/redirect";
//		return "redirect:detail.re?id=" + vo.getId();
	}
	
	//리뷰 수정화면
	@RequestMapping("/modify.re")
	public String modify(int id, Model model) {
		model.addAttribute("vo", service.review_detail(id));
		model.addAttribute("crlf", "\r\n");
		model.addAttribute("page", page);
		return "review/Review_Modify";
	}

	//리뷰 첨부파일 다운로드요청
	@ResponseBody @RequestMapping("/download.re")
	public void download(int id, HttpSession session
							, HttpServletResponse response) {
		ReviewVO vo = service.review_detail(id);
		common.fileDownload(session, response
				, vo.getFilename(), vo.getFilepath());
	}
	
	//신규 리뷰 글 저장 요청
	@RequestMapping("/insert.re")
	public String insert(ReviewVO vo, HttpSession session
					, MultipartFile file) {
		if(!file.isEmpty()) {
			vo.setFilename( file.getOriginalFilename() );
			vo.setFilepath(
					common.fileUpload("review", file, session));
		}
		service.review_insert(vo);
		return "redirect:list.re";
	}
	
	//신규 리뷰작성 화면 요청
	@RequestMapping("/new.re")
	public String review() {
		return "review/Review_New";
	}
	
	//리뷰 상세정보
	@RequestMapping("/detail.re")
	public String review_detail(int id, Model model) {
		model.addAttribute("vo", service.review_detail(id));
		model.addAttribute("crlf", "\r\n");
		model.addAttribute("page", page);
		return "review/Review_Detail";
	}
	
	@Autowired private ReviewPage page;
	//리뷰 목록화면 요청
	@RequestMapping("/list.re")
	public String list(HttpSession session
				, @RequestParam(defaultValue="20") int pageList
				, String search, String keyword
				, @RequestParam(defaultValue="1") int curPage
				, Model model) {
		session.setAttribute("category", "re");
		page.setCurPage(curPage);
		page.setSearch(search);
		page.setKeyword(keyword);
		page.setPageList(pageList);
		model.addAttribute("page", service.review_list(page));
		return "review/Review_List";
	}
}
