package com.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.LessorDTO;
import com.dto.MemberDTO;
import com.service.LessorService;
import com.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	
	@Autowired
	LessorService service2;

	@RequestMapping(value = "/memberAdd")
	public String memberAdd(MemberDTO m, Model model) {

		service.memberAdd(m);
		System.out.println(m);
		model.addAttribute("success", "회원가입완료");
		return "main"; // main.jsp
	}

	@RequestMapping(value = "idDuplicateCheck", produces = "text/plain;charset=UTF-8") // 한글처리
	public @ResponseBody String idDuplicatedCheck(@RequestParam("id") String userid) {
		MemberDTO dto = service.myPage(userid);

		System.out.println("아이디 체크 : " + dto);
		String mesg = "아이디는 4~10자리로 입력해주세요";

		if (userid.length() >= 4 && userid.length() <= 10) {
			mesg = "아이디사용가능";
			if (dto != null) {
				mesg = "이미 사용중인 아이디 입니다";
			}
		}//end if

		return mesg;

	}//end idDuplicateCheck
	
	@RequestMapping(value = "/loginCheck/memberUpdate")
	public String memberUpdate(MemberDTO dto) {
		System.out.println("memberupdate"+dto);
		service.memberUpdate(dto);
		return "redirect:../loginCheck/myPage";
	}
	
	@RequestMapping(value = "/loginCheck/myPage")
	public  String myPage(HttpSession session) {
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		String userid = dto.getUserid();
		dto = service.myPage(userid);
		System.out.println(dto);
		session.setAttribute("login", dto);
		
		
		LessorDTO ldto=service2.lessorOffer(userid);
		System.out.println("ldto"+ldto);
		if(ldto!=null) {
			session.setAttribute("lessor", ldto);
		}else {
			session.setAttribute("lessor", null);
		}
		
		return "redirect:../myPage";
	}
		
}//end class
