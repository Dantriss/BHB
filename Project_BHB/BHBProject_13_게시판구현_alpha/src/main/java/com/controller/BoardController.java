package com.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.Board_LessorDTO;
import com.dto.Board_NoticeDTO;
import com.dto.Goods_MP_DTO;
import com.dto.Goods_YP_DTO;
import com.dto.LessorDTO;
import com.dto.MemberDTO;
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
		int max_num=service.boardNoticeCount();
		int min_num=1;
		
		ModelAndView mav= new ModelAndView();
		if(num==max_num) {
			mav.addObject("max_num",true);
			
		}else if(num==min_num) {
			mav.addObject("min_num",true);
		}
		mav.addObject("boardNotice",bdto);
		mav.setViewName("boardNotice");
		return mav;
	}
	@RequestMapping("boardLessor")
	public ModelAndView boardLessor(@RequestParam("num") int num) {
		
		Board_LessorDTO ldto=service.boardLessor(num);
		int max_num=service.boardLessorCount();
		int min_num=1;
		
		ModelAndView mav= new ModelAndView();
		if(num==max_num) {
			mav.addObject("max_num",true);
		}else if(num==min_num) {
			mav.addObject("min_num",true);
		}
		
		mav.addObject("boardLessor",ldto);
		
		mav.setViewName("boardLessor");
		return mav;
	}
	@RequestMapping("writeAction")
	public String writeAction(Board_LessorDTO m, HttpSession session) {
		System.out.println("writeAction=====================");
		int num=service.boardLessorCount();
		m.setBl_num(num+1);
		LessorDTO ldto = (LessorDTO) session.getAttribute("lessor");
		String lessorid = ldto.getUserid();
		String nickname =ldto.getNickname();
		m.setBl_lessorid(lessorid);
		m.setBl_nick(nickname);
		Date date=new Date();
		System.out.println("Date : "+date);
		m.setBl_date(date);
		System.out.println("insert 전 ldto"+m);
		service.writeAction(m);
		
		
		return "redirect:/";
	}
}
