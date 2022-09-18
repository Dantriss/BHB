package com.dto;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@ToString
public class Criteria { 	// 페이징에 필요한 클래스
	private int pageNum; 	// 페이지
	private int amount; 	// 한번에 보여줄 게시물 수

//	private String type; 	// 검색종류
//	private String keyword; // 검색어

	public Criteria() {
		this(1, 10);
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

//	public String[] getTypeArr() {
//		return type == null ? new String[] {} : type.split("");
//	}
//
//	public String getListLink() {
//		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("").queryParam("pageNum", this.pageNum)
//				.queryParam("amount", this.amount).queryParam("type", this.type).queryParam("keyword", this.keyword);
//
//		return builder.toUriString();
//	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

//	public String getType() {
//		return type;
//	}
//
//	public void setType(String type) {
//		this.type = type;
//	}
//
//	public String getKeyword() {
//		return keyword;
//	}
//
//	public void setKeyword(String keyword) {
//		this.keyword = keyword;
//	}



	

    
}
	

