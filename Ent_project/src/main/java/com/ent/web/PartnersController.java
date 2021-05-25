package com.ent.web;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import common.CommonService;



@Controller
public class PartnersController {
	 @Autowired private CommonService common;
	 
	
	@RequestMapping("/partners_main")
	public String partnersmain(HttpSession session, Model model) {
		session.setAttribute("category", "partners");

		return "partners/partners_main";
	}
	
}