package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.Board_LessorDTO;
import com.dto.Board_NoticeDTO;

@Repository
public class BoardDAO {
	@Autowired
	SqlSessionTemplate template;

	public List<Board_NoticeDTO> noticeList() {
		List<Board_NoticeDTO> list=template.selectList("BoardMapper.noticeList");
		return list;
	}

	public Board_NoticeDTO boardNotice(int num) {
		Board_NoticeDTO bdto=template.selectOne("BoardMapper.boardNotice",num);
		return bdto;
	}

	public List<Board_LessorDTO> lessorList() {
		List<Board_LessorDTO> list=template.selectList("BoardMapper.lessorList");
		return list;
	}

	public List<Board_LessorDTO> boardLessorList() {
		List<Board_LessorDTO> list=template.selectList("BoardMapper.boardLessorList");
		return list;
	}

	public Board_LessorDTO boardLessor(int num) {
		Board_LessorDTO ldto=template.selectOne("BoardMapper.boardLessor",num);
		
		return ldto;
	}
}
