package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("Goods_MP_DTO")
public class Goods_MP_DTO {

   private int gCode;
      private int deposit;
      private int gPrice;
      private String address;
      private String location;
      private String area;
      private String room;
      private int fee;
      private int floor;
      private String elv;
      private String parking;
      private String build;
      private String gImage1;
      private String lessorid;
      private String gImage2;
      private String gImage3;
      private String gImage4;
      private String gImage5;
   Goods_MP_DTO() {
      super();
      // TODO Auto-generated constructor stub
   }
public Goods_MP_DTO(int gCode, int deposit, int gPrice, String address, String location, String area, String room,
		int fee, int floor, String elv, String parking, String build, String gImage1, String lessorid, String gImage2,
		String gImage3, String gImage4, String gImage5) {
	super();
	this.gCode = gCode;
	this.deposit = deposit;
	this.gPrice = gPrice;
	this.address = address;
	this.location = location;
	this.area = area;
	this.room = room;
	this.fee = fee;
	this.floor = floor;
	this.elv = elv;
	this.parking = parking;
	this.build = build;
	this.gImage1 = gImage1;
	this.lessorid = lessorid;
	this.gImage2 = gImage2;
	this.gImage3 = gImage3;
	this.gImage4 = gImage4;
	this.gImage5 = gImage5;
}
@Override
public String toString() {
	return "Goods_MP_DTO [gCode=" + gCode + ", deposit=" + deposit + ", gPrice=" + gPrice + ", address=" + address
			+ ", location=" + location + ", area=" + area + ", room=" + room + ", fee=" + fee + ", floor=" + floor
			+ ", elv=" + elv + ", parking=" + parking + ", build=" + build + ", gImage1=" + gImage1 + ", lessorid="
			+ lessorid + ", gImage2=" + gImage2 + ", gImage3=" + gImage3 + ", gImage4=" + gImage4 + ", gImage5="
			+ gImage5 + "]";
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
public int getgPrice() {
	return gPrice;
}
public void setgPrice(int gPrice) {
	this.gPrice = gPrice;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
}
public String getArea() {
	return area;
}
public void setArea(String area) {
	this.area = area;
}
public String getRoom() {
	return room;
}
public void setRoom(String room) {
	this.room = room;
}
public int getFee() {
	return fee;
}
public void setFee(int fee) {
	this.fee = fee;
}
public int getFloor() {
	return floor;
}
public void setFloor(int floor) {
	this.floor = floor;
}
public String getElv() {
	return elv;
}
public void setElv(String elv) {
	this.elv = elv;
}
public String getParking() {
	return parking;
}
public void setParking(String parking) {
	this.parking = parking;
}
public String getBuild() {
	return build;
}
public void setBuild(String build) {
	this.build = build;
}
public String getgImage1() {
	return gImage1;
}
public void setgImage1(String gImage1) {
	this.gImage1 = gImage1;
}
public String getLessorid() {
	return lessorid;
}
public void setLessorid(String lessorid) {
	this.lessorid = lessorid;
}
public String getgImage2() {
	return gImage2;
}
public void setgImage2(String gImage2) {
	this.gImage2 = gImage2;
}
public String getgImage3() {
	return gImage3;
}
public void setgImage3(String gImage3) {
	this.gImage3 = gImage3;
}
public String getgImage4() {
	return gImage4;
}
public void setgImage4(String gImage4) {
	this.gImage4 = gImage4;
}
public String getgImage5() {
	return gImage5;
}
public void setgImage5(String gImage5) {
	this.gImage5 = gImage5;
}

    
}