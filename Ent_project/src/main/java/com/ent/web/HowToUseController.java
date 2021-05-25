package com.ent.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HowToUseController {
	
	@RequestMapping("/open_store")
	public String open_store(HttpSession session) {
		session.setAttribute("category", "partners");
		session.setAttribute("partners", "open_store");
		return "partners/htu_open";
	}
	
	@RequestMapping("/menu")
	public String menu(HttpSession session) {
		session.setAttribute("category", "partners");
		session.setAttribute("partners", "menu");
		return "partners/htu_menu";
	}
}
