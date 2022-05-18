package com.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("Board_NoticeDTO")
public class Board_NoticeDTO {
	private int bn_num;
	   private String bn_title;
	   private String bn_content;
	   private Date bn_date;
	public Board_NoticeDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Board_NoticeDTO(int bn_num, String bn_title, String bn_content, Date bn_date) {
		super();
		this.bn_num = bn_num;
		this.bn_title = bn_title;
		this.bn_content = bn_content;
		this.bn_date = bn_date;
	}
	@Override
	public String toString() {
		return "Board_NoticeDTO [bn_num=" + bn_num + ", bn_title=" + bn_title + ", bn_content=" + bn_content
				+ ", bn_date=" + bn_date + "]";
	}
	public int getBn_num() {
		return bn_num;
	}
	public void setBn_num(int bn_num) {
		this.bn_num = bn_num;
	}
	public String getBn_title() {
		return bn_title;
	}
	public void setBn_title(String bn_title) {
		this.bn_title = bn_title;
	}
	public String getBn_content() {
		return bn_content;
	}
	public void setBn_content(String bn_content) {
		this.bn_content = bn_content;
	}
	public Date getBn_date() {
		return bn_date;
	}
	public void setBn_date(Date bn_date) {
		this.bn_date = bn_date;
	}
	   
}
