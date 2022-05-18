package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.BookMarkDTO;
import com.dto.LessorDTO;
import com.dto.MemberDTO;
import com.service.GoodsService;
import com.service.LessorService;

@Controller
public class ReserveController {
	@Autowired
	GoodsService service;
	
	@Autowired
	LessorService lservice;
	
	@RequestMapping("/loginCheck/reserve")
    public String reserve(@RequestParam("num") int num,RedirectAttributes xxx) {
       System.out.println("@loginCheck/reserve==============");
       
        BookMarkDTO bDTO= service.bookMarkByNum(num); //장바구니 정보가져오기 
        String userid=bDTO.getLessorid(); //북마크에서 lessorid가져오기
        LessorDTO lDTO =lservice.lessorOffer(userid); //lessorid로 lessordto가져오기
        
        xxx.addFlashAttribute("bDTO", bDTO); //request에 카트정보저장
        xxx.addFlashAttribute("lDTO",lDTO );//request에 레서정보저장
        
        return "redirect:../reserve"; //servlet-context에 등록
    }
	
	@RequestMapping("loginCheck/reserveDone")
	public String reserveDone(@RequestParam("num") int num) {
		System.out.println("@loginCheck/reserveDone==============");
		service.bookMarkDelete(num);
		
		return "redirect:../loginCheck/bookMark";
		
	}
}
