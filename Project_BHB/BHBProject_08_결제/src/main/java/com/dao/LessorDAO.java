package com.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.LessorDTO;
import com.dto.MemberDTO;

@Repository
public class LessorDAO {
	
	@Autowired
	SqlSessionTemplate template;

	public int lessorAdd(LessorDTO dto) {
		int n = template.insert("LessorMapper.lessorAdd", dto);
		System.out.println("등록 수 : "+dto);
		return n;
	}

	public LessorDTO lessorOffer(String userid) {
		LessorDTO dto = template.selectOne("LessorMapper.lessorOffer", userid);
		return dto;
	}

	public LessorDTO regist(Map<String, String> map) {
		LessorDTO Ldto =  template.selectOne("LessorMapper.regist", map);
		return Ldto;
	}

}
