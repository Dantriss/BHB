package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dto.Goods_MP_DTO;
import com.dto.Goods_YP_DTO;
import com.dto.LessorDTO;
import com.service.GoodsService;

@Controller
public class GoodsController {
	@Autowired
	GoodsService service;

	@RequestMapping("goodsMPAdd")
	public String goodsMPAdd(Goods_MP_DTO mpdto,Model model,HttpSession session)throws Exception {
		LessorDTO dto = (LessorDTO) session.getAttribute("lessor");
		String lessorid = dto.getUserid();
		int gCode=service.goodsMPCount()+1;
		
		mpdto.setLessorid(lessorid);
		mpdto.setgCode(gCode);
		service.goodsMPAdd(mpdto);
		model.addAttribute("goodsMPAdd", "물품등록성공");
		return "main";
			
		
	}
	@RequestMapping("goodsYPAdd")
	public String goodsYPAdd(Goods_YP_DTO ypdto,Model model,HttpSession session)throws Exception {
		LessorDTO dto = (LessorDTO) session.getAttribute("lessor");
		String lessorid = dto.getUserid();
		int gCode=service.goodsYPCount()+1;
		ypdto.setLessorid(lessorid);
		ypdto.setgCode(gCode);
		service.goodsYPAdd(ypdto);
		model.addAttribute("goodsYPAdd", "물품등록성공");
		return "main";
			
		
	}
	
	@RequestMapping("goodsList")
	public ModelAndView goodsList(@RequestParam("room") String room) {
		
		List<Goods_MP_DTO> list=service.goodsListMP(room);
		List<Goods_YP_DTO> list2=service.goodsListYP(room);
		
		System.out.println("list"+list);
		System.out.println();
		System.out.println("list2"+list2);
		
		ModelAndView mav= new ModelAndView();
		mav.addObject("goodsListMP",list);
		mav.addObject("goodsListYP",list2);
		mav.setViewName("main");
		return mav;
			
		
	}
	@RequestMapping("goodsListMP")
	public ModelAndView goodsListMP() {
		List<Goods_MP_DTO> list = service.goodsListMP();
		System.out.println("goodsListMP : "+list);
		ModelAndView mav = new ModelAndView();
		mav.addObject("goodsListMP",list);
		mav.setViewName("main");
		return mav;
	}//월세
	
	@RequestMapping("goodsListYP")
	public ModelAndView goodsListYP() {
		List<Goods_YP_DTO> list = service.goodsListYP();
		System.out.println(list);
		ModelAndView mav = new ModelAndView();
		mav.addObject("goodsListYP",list);
		mav.setViewName("main");
		return mav;
	}//전세
	
	@RequestMapping("goodsListLoc")
	public ModelAndView goodsListLoc(@RequestParam("location") String location) {
		
		List<Goods_MP_DTO> list=service.goodsListMP_Loc(location);
		List<Goods_YP_DTO> list2=service.goodsListYP_Loc(location);
		System.out.println("location");
		System.out.println("list"+list);
		System.out.println();
		System.out.println("list2"+list2);
		
		ModelAndView mav= new ModelAndView();
		mav.addObject("goodsListMP",list);
		mav.addObject("goodsListYP",list2);
		mav.setViewName("main");
		return mav;
	}//지역별 
	
	
	 @RequestMapping(value= {"goodsRetrieveYP","goodsRetrieveMP","goodsRetrieve"})  //.goodsRetrieve.jsp
	 public ModelAndView goodsRetrieve(@RequestParam("gCode") String gCode, HttpServletRequest request) {
		 String requestUrl=(String)request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		 ModelAndView mav= new ModelAndView();
		System.out.println("requestUrl"+requestUrl);
		 
		 if(requestUrl.equals("goodsRetrieveYP")) {
			
			 Goods_YP_DTO ypdto=service.goodsRetrieveYP(gCode);
			 System.out.println("ypdto"+ypdto);
			 
			 mav.addObject("goodsRetrieveYP", ypdto);
			 mav.setViewName("goodsRetrieve");
			 return mav;
		 }else if(requestUrl.equals("goodsRetrieveMP")) {
			 Goods_MP_DTO mpdto=service.goodsRetrieveMP(gCode);
			 System.out.println("mpdto"+mpdto);
			 mav.addObject("goodsRetrieveMP", mpdto);
			 mav.setViewName("goodsRetrieve");
			 return mav;
		 }else {
			 mav.setViewName("goodsRetrieve");
		 }
		return mav;
		
		 
	 }
	
	
}
