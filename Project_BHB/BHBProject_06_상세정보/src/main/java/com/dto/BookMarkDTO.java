package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("CartDTO")
public class BookMarkDTO {

	private String num;
	   private int gCode;
	   private int deposit;
	   private int gPrice_MP;
	   private int gPrice_YP;
	   private String room;
	   private String gImage1;
	   private String gImage2;
	   private String gimage3;
	   private String gimage4;
	   private String gimage5;
	   private String phone1;
	   private String phone2;
	   private String phone3;
	   private String userName;
	   private String userid;
	public BookMarkDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BookMarkDTO(String num, int gCode, int deposit, int gPrice_MP, int gPrice_YP, String room, String gImage1,
			String gImage2, String gimage3, String gimage4, String gimage5, String phone1, String phone2, String phone3,
			String userName, String userid) {
		super();
		this.num = num;
		this.gCode = gCode;
		this.deposit = deposit;
		this.gPrice_MP = gPrice_MP;
		this.gPrice_YP = gPrice_YP;
		this.room = room;
		this.gImage1 = gImage1;
		this.gImage2 = gImage2;
		this.gimage3 = gimage3;
		this.gimage4 = gimage4;
		this.gimage5 = gimage5;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.userName = userName;
		this.userid = userid;
	}
	@Override
	public String toString() {
		return "BookMarkDTO [num=" + num + ", gCode=" + gCode + ", deposit=" + deposit + ", gPrice_MP=" + gPrice_MP
				+ ", gPrice_YP=" + gPrice_YP + ", room=" + room + ", gImage1=" + gImage1 + ", gImage2=" + gImage2
				+ ", gimage3=" + gimage3 + ", gimage4=" + gimage4 + ", gimage5=" + gimage5 + ", phone1=" + phone1
				+ ", phone2=" + phone2 + ", phone3=" + phone3 + ", userName=" + userName + ", userid=" + userid + "]";
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public int getgCode() {
		return gCode;
	}
	public void setgCode(int gCode) {
		this.gCode = gCode;
	}
	public int getDeposit() {
		return deposit;
	}
	public void setDeposit(int deposit) {
		this.deposit = deposit;
	}
	public int getgPrice_MP() {
		return gPrice_MP;
	}
	public void setgPrice_MP(int gPrice_MP) {
		this.gPrice_MP = gPrice_MP;
	}
	public int getgPrice_YP() {
		return gPrice_YP;
	}
	public void setgPrice_YP(int gPrice_YP) {
		this.gPrice_YP = gPrice_YP;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getgImage1() {
		return gImage1;
	}
	public void setgImage1(String gImage1) {
		this.gImage1 = gImage1;
	}
	public String getgImage2() {
		return gImage2;
	}
	public void setgImage2(String gImage2) {
		this.gImage2 = gImage2;
	}
	public String getGimage3() {
		return gimage3;
	}
	public void setGimage3(String gimage3) {
		this.gimage3 = gimage3;
	}
	public String getGimage4() {
		return gimage4;
	}
	public void setGimage4(String gimage4) {
		this.gimage4 = gimage4;
	}
	public String getGimage5() {
		return gimage5;
	}
	public void setGimage5(String gimage5) {
		this.gimage5 = gimage5;
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}

	
	
	
}
