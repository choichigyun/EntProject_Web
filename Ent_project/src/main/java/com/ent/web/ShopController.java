package com.ent.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import common.CommonService;
import shop.ShopServiceimpl;
import shop.ShopVO;

@Controller
public class ShopController {
	@Autowired private CommonService common;
	@Autowired private ShopServiceimpl service;
	
	@RequestMapping("/shop_main")
	public String shop(HttpSession session, Model model) {
		session.setAttribute("category", "shop");
		//앱에 연결된 db에서 사업자 가게 위치 가져오기
		List<ShopVO> list = service.shop_list();
		model.addAttribute("list", list);
		for (ShopVO shopVO : list) {
			System.out.println(shopVO.getEnt_lat());
		}
		return "shop/shop_main";
	}
	
	@RequestMapping("/shop_story")
	public String story(HttpSession session) {
			return "shop/shop_story";
	}
	
	@RequestMapping("/shop_inside01")
	public String shop_inside01(HttpSession session) {
		return "shop/shop_inside01";
	}
	@RequestMapping("/shop_inside02")
	public String shop_inside02(HttpSession session) {
		return "shop/shop_inside02";
	}
	@RequestMapping("/shop_inside03")
	public String shop_inside03(HttpSession session) {
		return "shop/shop_inside03";
	}
	@RequestMapping("/shop_inside04")
	public String shop_inside04(HttpSession session) {
		return "shop/shop_inside04";
	}
}