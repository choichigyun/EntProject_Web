package com.ent.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AboutUsController {
	@RequestMapping("/about_us_howtouse")
	public String about_us_howtouse(HttpSession session) {
		session.setAttribute("category", "About_us");
		session.setAttribute("Aboutus", "How_to_use");
		return "about_us/how_to_use";
	}
	
	@RequestMapping("/about_us")
	   public String about_us_about_us(HttpSession session) {
	      session.setAttribute("category", "About_us");
	      session.setAttribute("Aboutus", "About_us");
	      return "about_us/about_us";
	   }
}
