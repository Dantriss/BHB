package com.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.LessorDAO;
import com.dto.LessorDTO;
import com.dto.MemberDTO;

@Service
public class LessorService {
	
	@Autowired
	LessorDAO dao;

	public void lessorAdd(LessorDTO dto) {
		dao.lessorAdd(dto);
		
		

	}

	public LessorDTO lessorOffer(String userid) {
		LessorDTO dto = dao.lessorOffer(userid);
		return dto;
	}

	public LessorDTO regist(Map<String, String> map) {
		LessorDTO Ldto = dao.regist(map);
		return Ldto;
	}

}
