package com.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.GoodsDAO;
import com.dto.BookMarkDTO;
import com.dto.Goods_MP_DTO;
import com.dto.Goods_YP_DTO;

@Service
public class GoodsService {
@Autowired
GoodsDAO dao;
	public List<Goods_MP_DTO> goodsListMP(String room) {
		List<Goods_MP_DTO> list=dao.goodsListMP(room);
		return list;
	}
	
	public List<Goods_YP_DTO> goodsListYP(String room) {
		List<Goods_YP_DTO> list=dao.goodsListYP(room);
		return list;
	}

	public List<Goods_MP_DTO> goodsListMP() {
		List<Goods_MP_DTO> list = dao.goodsListMP();
		return list;
	}

	public List<Goods_YP_DTO> goodsListYP() {
		List<Goods_YP_DTO> list = dao.goodsListYP();
		return list;
	}

	public List<Goods_MP_DTO> goodsListMP_Loc(String location) {
		List<Goods_MP_DTO> list = dao.goodsListMP_Loc(location);
		return list;
	}

	public List<Goods_YP_DTO> goodsListYP_Loc(String location) {
		List<Goods_YP_DTO> list = dao.goodsListYP_Loc(location);
		return list;
	}

	public void goodsMPAdd(Goods_MP_DTO mpdto) {
		dao.goodsMPAdd(mpdto);
		
	}

	public void goodsYPAdd(Goods_YP_DTO ypdto) {
		dao.goodsYPAdd(ypdto);
		
	}

	public int goodsMPCount() {
		int n=dao.goodsMPCount();
		return n;
	}

	public int goodsYPCount() {
		int n=dao.goodsYPCount();
		return n;
	}

	public Goods_YP_DTO goodsRetrieveYP(String gCode) {
		 Goods_YP_DTO ypdto=dao.goodsRetrieveYP(gCode);
		return ypdto;
	}

	public Goods_MP_DTO goodsRetrieveMP(String gCode) {
		Goods_MP_DTO mpdto =dao.goodsRetrieveMP(gCode);
		return mpdto;
	}

	public List<BookMarkDTO> bookMark(String userid) {
		List<BookMarkDTO> list =dao.bookMark(userid);
		return list;
	}

	public void addBookMark_yp(BookMarkDTO bookmark) {
        dao.addBookMark_yp(bookmark);

    }

	public int bookMarkcount() {
		int n=dao.bookMarkcount();
		return n;
	}

	public void addBookMark_mp(BookMarkDTO bookmark) {
		dao.addBookMark_mp(bookmark);
		
	}

	public void bookMarkDelete(int num) {
	    dao.bookMarkDelete(num);

	}

	public void delBookMark(ArrayList<String> list) {
		dao.delBookMark(list);
		
	}

	public BookMarkDTO bookMarkByNum(int num) {
		BookMarkDTO bdto=dao.bookMarkByNum(num);
		return bdto;
	}


	public int bookmarkOverlap_yp(BookMarkDTO bookmark) {
		int n=dao.bookmarkOverlap_yp(bookmark);
		return n;
		
	}

	public int bookmarkOverlap_mp(BookMarkDTO bookmark) {
		int n=dao.bookmarkOverlap_mp(bookmark);
		return n;
	}

	public List<Goods_MP_DTO> SearchByRoom(String room) {
		List<Goods_MP_DTO> list = dao.SearchByRoom(room);
		return list;
	}

	public int countSearchByRoom(String room) {
		int n = dao.countSearchByRoom(room);
		return n;
	}

	public List<Goods_MP_DTO> SearchByLoc(String location) {
		List<Goods_MP_DTO> list=dao.SearchByLoc(location);
		return list;
	}




	
}
