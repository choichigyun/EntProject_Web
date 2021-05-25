package com.ent.web;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpSession session, Model model) {
		session.removeAttribute("category");
		
		return "home";
	}
	
	@RequestMapping("/admin_login")
	public String admin_login(HttpSession session) {
		session.setAttribute("admin", "admin");
		session.removeAttribute("category");
		return "home";
	}
	
	@RequestMapping("/admin_logout")
	public String admin_logout(HttpSession session) {
		session.removeAttribute("admin");
		session.removeAttribute("category");
		return "home";
	}
	
}
