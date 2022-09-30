package com.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("Board_LessorDTO")
public class Board_LessorDTO {
	private int bl_num;
    private String bl_title;
    private String bl_content;
    private String bl_lessorid;
    private String bl_nick;
    private Date bl_date;
    private int bl_hit;
	public Board_LessorDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Board_LessorDTO(int bl_num, String bl_title, String bl_content, String bl_lessorid, String bl_nick,
			Date bl_date, int bl_hit) {
		super();
		this.bl_num = bl_num;
		this.bl_title = bl_title;
		this.bl_content = bl_content;
		this.bl_lessorid = bl_lessorid;
		this.bl_nick = bl_nick;
		this.bl_date = bl_date;
		this.bl_hit = bl_hit;
	}
	@Override
	public String toString() {
		return "Board_LessorDTO [bl_num=" + bl_num + ", bl_title=" + bl_title + ", bl_content=" + bl_content
				+ ", bl_lessorid=" + bl_lessorid + ", bl_nick=" + bl_nick + ", bl_date=" + bl_date + ", bl_hit="
				+ bl_hit + "]";
	}
	public int getBl_num() {
		return bl_num;
	}
	public void setBl_num(int bl_num) {
		this.bl_num = bl_num;
	}
	public String getBl_title() {
		return bl_title;
	}
	public void setBl_title(String bl_title) {
		this.bl_title = bl_title;
	}
	public String getBl_content() {
		return bl_content;
	}
	public void setBl_content(String bl_content) {
		this.bl_content = bl_content;
	}
	public String getBl_lessorid() {
		return bl_lessorid;
	}
	public void setBl_lessorid(String bl_lessorid) {
		this.bl_lessorid = bl_lessorid;
	}
	public String getBl_nick() {
		return bl_nick;
	}
	public void setBl_nick(String bl_nick) {
		this.bl_nick = bl_nick;
	}
	public Date getBl_date() {
		return bl_date;
	}
	public void setBl_date(Date bl_date) {
		this.bl_date = bl_date;
	}
	public int getBl_hit() {
		return bl_hit;
	}
	public void setBl_hit(int bl_hit) {
		this.bl_hit = bl_hit;
	}
    
}
