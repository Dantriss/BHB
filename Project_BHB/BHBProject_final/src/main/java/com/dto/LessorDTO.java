package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("LessorDTO")
public class LessorDTO {
	private String nickname;
	   private String userid;
	   private String passwd;
	   private String post;
	   private String addr1;
	   private String addr2;
	   private String phone1;
	   private String phone2;
	   private String phone3;
	   private String email1;
	   private String email2;
	public LessorDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LessorDTO(String nickname, String userid, String passwd, String post, String addr1, String addr2,
			String phone1, String phone2, String phone3, String email1, String email2) {
		super();
		this.nickname = nickname;
		this.userid = userid;
		this.passwd = passwd;
		this.post = post;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.email1 = email1;
		this.email2 = email2;
	}
	@Override
	public String toString() {
		return "LessorDTO [nickname=" + nickname + ", userid=" + userid + ", passwd=" + passwd + ", post=" + post
				+ ", addr1=" + addr1 + ", addr2=" + addr2 + ", phone1=" + phone1 + ", phone2=" + phone2 + ", phone3="
				+ phone3 + ", email1=" + email1 + ", email2=" + email2 + "]";
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getPhone3() {
		return phone3;
	}
	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	   
	   
}