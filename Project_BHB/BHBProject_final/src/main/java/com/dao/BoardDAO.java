package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.Board_LessorDTO;
import com.dto.Board_NoticeDTO;
import com.dto.Criteria;


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

	public void writeAction(Board_LessorDTO m) {
		
		template.insert("BoardMapper.writeAction",m);
		
	}

	public int boardLessorCount() {
	int n=template.selectOne("BoardMapper.boardLessorCount");
		return n;
	}

	public int boardNoticeCount() {
		int n=template.selectOne("BoardMapper.boardNoticeCount");
		return n;
	}

	public List<Board_LessorDTO> myBoardList(String lessorid) {
		List<Board_LessorDTO> list=template.selectList("BoardMapper.myBoardList",lessorid);
		return list;
	}

	public void myBoardDelete(int num) {
		
		template.delete("BoardMapper.myBoardDelete",num);
		
	}

	public void myBoardModify(Board_LessorDTO m) {
		template.update("BoardMapper.myBoardModify", m);
		
	}

	public void boardHitChange(Board_LessorDTO ldto) {
		template.update("BoardMapper.boardHitChange",ldto);
		
	}


	public int blListTotal() {
		int n = template.selectOne("BoardMapper.blListTotal");
		return n;
	}

	public List<Board_LessorDTO> getBlList(Criteria cri1) {
		List<Board_LessorDTO> list = template.selectList("BoardMapper.getBlList", cri1);
		return list;
	}

	public int blListTotal(Criteria cri) {
		int n = template.selectOne("BoardMapper.blListTotal", cri);
		return n;
	}

	public List<Board_NoticeDTO> getBnList(Criteria cri) {
		List<Board_NoticeDTO> list = template.selectList("BoardMapper.getBnList", cri);
		return list;
	}

	public int bnListTotal(Criteria cri) {
		int n = template.selectOne("BoardMapper.bnListTotal", cri);
		return n;
	}
}
