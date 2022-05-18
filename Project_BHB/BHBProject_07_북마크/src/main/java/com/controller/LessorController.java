package com.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.LessorDTO;
import com.dto.MemberDTO;
import com.service.LessorService;

@Controller
public class LessorController {

	@Autowired
	LessorService service;

//	@RequestMapping("/loginCheck/orderConfirm")
//	public String lessorAdd(@RequestParam("num") int num, HttpSession session, 
//			RedirectAttributes xxx) {
//		MemberDTO mDTO=(MemberDTO)session.getAttribute("login");
//		String userid= mDTO.getUserid();
//		mDTO= mService.myPage(userid); //사용자 정보 가져오기 
//		LessorDTO lDTO= service.orderConfirmByNum(num); //장바구니 정보가져오기 
//		xxx.addFlashAttribute("mDTO", mDTO);  //request에 회원정보저장
//		xxx.addFlashAttribute("cDTO", cart); //request에 카트정보저장	
//		return "redirect:../orderConfirm"; //servlet-context에 등록
//	}

	@RequestMapping(value = "/loginCheck/lessorAdd")
	public String lessorAdd(LessorDTO dto, Model model, HttpSession session) {

		service.lessorAdd(dto);
		model.addAttribute("success", "회원가입성공");
		if (dto != null) {
			session.setAttribute("lessor", dto);
			System.out.println(dto);
			return "main";
		} else {
			model.addAttribute("mesg", "아이디 또는 비밀번호가 잘못되었습니다.");
			return "loginForm";
		}

	}

	@RequestMapping(value = "/loginCheck/lessorOffer")
	public String lessorOffer(HttpSession session) {
		LessorDTO dto = (LessorDTO) session.getAttribute("lessor");
		String userid = dto.getUserid();
		dto = service.lessorOffer(userid);
		System.out.println(dto);
		if (userid != null) {
			session.setAttribute("lessor", userid);

			return "redirect:../lessorOffer";
		} else {

			session.setAttribute("lessor", null);
			return "redirect:../myPage";
		}
	}

	
	  
	 
	

}
