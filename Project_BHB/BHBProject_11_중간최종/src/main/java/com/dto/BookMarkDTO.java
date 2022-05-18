package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("BookMarkDTO")
public class BookMarkDTO {

	private int num;
    private int gCode;
    private int deposit;
    private int gPrice_MP;
    private int gPrice_YP;
    private String room;
    private String gImage1;
    private String phone1;
    private String phone2;
    private String phone3;
    private String userName;
    private String userid;
    private String location;
    private String address;
    private String nickname;
    private String lessorid;
	public BookMarkDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BookMarkDTO(int num, int gCode, int deposit, int gPrice_MP, int gPrice_YP, String room, String gImage1,
			String phone1, String phone2, String phone3, String userName, String userid, String location,
			String address, String nickname, String lessorid) {
		super();
		this.num = num;
		this.gCode = gCode;
		this.deposit = deposit;
		this.gPrice_MP = gPrice_MP;
		this.gPrice_YP = gPrice_YP;
		this.room = room;
		this.gImage1 = gImage1;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.userName = userName;
		this.userid = userid;
		this.location = location;
		this.address = address;
		this.nickname = nickname;
		this.lessorid = lessorid;
	}
	@Override
	public String toString() {
		return "BookMarkDTO [num=" + num + ", gCode=" + gCode + ", deposit=" + deposit + ", gPrice_MP=" + gPrice_MP
				+ ", gPrice_YP=" + gPrice_YP + ", room=" + room + ", gImage1=" + gImage1 + ", phone1=" + phone1
				+ ", phone2=" + phone2 + ", phone3=" + phone3 + ", userName=" + userName + ", userid=" + userid
				+ ", location=" + location + ", address=" + address + ", nickname=" + nickname + ", lessorid="
				+ lessorid + "]";
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
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
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getLessorid() {
		return lessorid;
	}
	public void setLessorid(String lessorid) {
		this.lessorid = lessorid;
	}
	
	
}
