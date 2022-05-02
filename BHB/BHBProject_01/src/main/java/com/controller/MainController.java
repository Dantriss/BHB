package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.dto.Goods_MP_DTO;
import com.dto.Goods_YP_DTO;
import com.service.Goods_MP_service;
import com.service.Goods_YP_service;

@Controller
public class MainController {
	@Autowired
	Goods_YP_service service1;
	Goods_MP_service service2;

	@RequestMapping (value = "/")
	public ModelAndView goodsList() {
		List<Goods_MP_DTO> list = service2.goodsList("top");
		List<Goods_YP_DTO> list2 = service1.goodsList("top");
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("goodsList",list);
		mav.setViewName("main");
		System.out.println(list);
		return mav;
		
	}
}
