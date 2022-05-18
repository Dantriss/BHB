package com.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.MemberDTO;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate template;

	public void memberAdd(MemberDTO m) {
		
		int n = template.insert("MemberMapper.memberAdd", m);
		System.out.println("회원가입 수  :  " +  n);
		
	}

	public MemberDTO login(Map<String, String> map) {
		MemberDTO dto = template.selectOne("MemberMapper.login", map);
		return dto;
	}

	public MemberDTO myPage(String userid) {
		MemberDTO dto = template.selectOne("MemberMapper.mypage",userid);
		return dto;
	}

	public void memberUpdate(MemberDTO dto) {
		template.update("MemberMapper.memberUpdate",dto);
		
	}

	

}
