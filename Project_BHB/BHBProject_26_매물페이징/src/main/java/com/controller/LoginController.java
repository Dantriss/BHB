package com.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dto.MemberDTO;
import com.service.MemberService;

@Controller
public class LoginController {
@Autowired
MemberService Service;

	
	@RequestMapping(value = "/login")
	public String login(@RequestParam Map<String, String> map, Model model, HttpSession session) {
		MemberDTO dto = Service.login(map);
	
		
		if (dto != null) {
			
			String id =dto.getUserid();
			
			if(id.equals("admin")) {
				session.setAttribute("admin", true);
				System.out.println("admin==========================");
			}
			
			session.setAttribute("login", dto);
			return "main";
		} else {
			model.addAttribute("mesg", "아이디와 비밀번호를 확인해주세요");
			return "loginForm";
		}

	}

	@RequestMapping(value = "/loginCheck/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:../"; // main.jsp
	}

}
