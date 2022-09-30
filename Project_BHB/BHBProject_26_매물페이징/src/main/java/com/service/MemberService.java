package com.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.MemberDAO;
import com.dto.MemberDTO;

@Service
public class MemberService {
	
	@Autowired
	MemberDAO dao;

	public void memberAdd(MemberDTO m) {

		dao.memberAdd(m);

	}

	public MemberDTO login(Map<String, String> map) {
		MemberDTO dto = dao.login(map);
		return dto;
	}

	public MemberDTO myPage(String userid) {
		MemberDTO dto= dao.myPage(userid);
		return dto;
	}

	public void memberUpdate(MemberDTO dto) {
		dao.memberUpdate(dto);
		
	}

	public List<MemberDTO> memberList() {
		List<MemberDTO> mlist = dao.memberList();
		return mlist;
	}

	public void delMember(String userid) {
		dao.delMember(userid);
		
	}

	public void deleteAll(ArrayList<String> list) {
		dao.deleteAll(list);
	}

	

}
