package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.Board_LessorDTO;
import com.dto.Board_NoticeDTO;
import com.dto.Goods_MP_DTO;
import com.dto.Goods_YP_DTO;
import com.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
		
	@RequestMapping("/")
	public String boardNoticeList(RedirectAttributes attr, HttpSession session)throws Exception {
		System.out.println("@RequestMapping(\"boardNoticeList\")====================");
		List<Board_NoticeDTO> list=service.noticeList();
		session.setAttribute("noticeList", list);
		
		List<Board_LessorDTO> list2=service.boardLessorList();
		session.setAttribute("boardLessorList", list2);
		return "main";
			
		
	}
	
	@RequestMapping("boardNotice")
	public ModelAndView boardNotice(@RequestParam("num") int num) {
		
		Board_NoticeDTO bdto=service.boardNotice(num);
		ModelAndView mav= new ModelAndView();
		mav.addObject("boardNotice",bdto);
		mav.setViewName("boardNotice");
		return mav;
	}
	@RequestMapping("boardLessor")
	public ModelAndView boardLessor(@RequestParam("num") int num) {
		
		Board_LessorDTO ldto=service.boardLessor(num);
		ModelAndView mav= new ModelAndView();
		mav.addObject("boardLessor",ldto);
		mav.setViewName("boardLessor");
		return mav;
	}
}
