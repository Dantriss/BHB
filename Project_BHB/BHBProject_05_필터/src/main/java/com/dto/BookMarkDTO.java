package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("CartDTO")
public class BookMarkDTO {

	private String NUM;

	private int GCODE;

	private int DEPOSIT;

	private int GPRICE_MP;

	private int GPRICE_YP;

	private String ROOM;

	private String GIMAGE;

	private String PHONE1;

	private String PHONE2;

	private String PHONE3;

	private String USERNAME;

	private String USERID;

	public BookMarkDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "BookMarkDTO [NUM=" + NUM + ", GCODE=" + GCODE + ", DEPOSIT=" + DEPOSIT + ", GPRICE_MP=" + GPRICE_MP
				+ ", GPRICE_YP=" + GPRICE_YP + ", ROOM=" + ROOM + ", GIMAGE=" + GIMAGE + ", PHONE1=" + PHONE1
				+ ", PHONE2=" + PHONE2 + ", PHONE3=" + PHONE3 + ", USERNAME=" + USERNAME + ", USERID=" + USERID + "]";
	}

	public String getNUM() {
		return NUM;
	}

	public void setNUM(String nUM) {
		NUM = nUM;
	}

	public int getGCODE() {
		return GCODE;
	}

	public void setGCODE(int gCODE) {
		GCODE = gCODE;
	}

	public int getDEPOSIT() {
		return DEPOSIT;
	}

	public void setDEPOSIT(int dEPOSIT) {
		DEPOSIT = dEPOSIT;
	}

	public int getGPRICE_MP() {
		return GPRICE_MP;
	}

	public void setGPRICE_MP(int gPRICE_MP) {
		GPRICE_MP = gPRICE_MP;
	}

	public int getGPRICE_YP() {
		return GPRICE_YP;
	}

	public void setGPRICE_YP(int gPRICE_YP) {
		GPRICE_YP = gPRICE_YP;
	}

	public String getROOM() {
		return ROOM;
	}

	public void setROOM(String rOOM) {
		ROOM = rOOM;
	}

	public String getGIMAGE() {
		return GIMAGE;
	}

	public void setGIMAGE(String gIMAGE) {
		GIMAGE = gIMAGE;
	}

	public String getPHONE1() {
		return PHONE1;
	}

	public void setPHONE1(String pHONE1) {
		PHONE1 = pHONE1;
	}

	public String getPHONE2() {
		return PHONE2;
	}

	public void setPHONE2(String pHONE2) {
		PHONE2 = pHONE2;
	}

	public String getPHONE3() {
		return PHONE3;
	}

	public void setPHONE3(String pHONE3) {
		PHONE3 = pHONE3;
	}

	public String getUSERNAME() {
		return USERNAME;
	}

	public void setUSERNAME(String uSERNAME) {
		USERNAME = uSERNAME;
	}

	public String getUSERID() {
		return USERID;
	}

	public void setUSERID(String uSERID) {
		USERID = uSERID;
	}

	public BookMarkDTO(String nUM, int gCODE, int dEPOSIT, int gPRICE_MP, int gPRICE_YP, String rOOM, String gIMAGE,
			String pHONE1, String pHONE2, String pHONE3, String uSERNAME, String uSERID) {
		super();
		NUM = nUM;
		GCODE = gCODE;
		DEPOSIT = dEPOSIT;
		GPRICE_MP = gPRICE_MP;
		GPRICE_YP = gPRICE_YP;
		ROOM = rOOM;
		GIMAGE = gIMAGE;
		PHONE1 = pHONE1;
		PHONE2 = pHONE2;
		PHONE3 = pHONE3;
		USERNAME = uSERNAME;
		USERID = uSERID;
	}

	

	
	
	
}
