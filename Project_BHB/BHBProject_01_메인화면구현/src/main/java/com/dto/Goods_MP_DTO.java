package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("Goods_MP_DTO")
public class Goods_MP_DTO {

	private int GCODE;
	private int DEPOSIT;
	private int GPRICE_MP;
	private String ADDRESS;
	private String LOCATION;
	private String AREA;
	private String ROOM;
	private int FEE;
	private String FLOOR;
	private int ELV;
	private String PARKING;
	private int BUILD;
	private String GIMAGE;

	
	public Goods_MP_DTO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Goods_MP_DTO(int gCODE, int dEPOSIT, int gPRICE_MP, String aDDRESS, String lOCATION, String aREA,
			String rOOM, int fEE, String fLOOR, int eLV, String pARKING, int bUILD, String gIMAGE) {
		super();
		GCODE = gCODE;
		DEPOSIT = dEPOSIT;
		GPRICE_MP = gPRICE_MP;
		ADDRESS = aDDRESS;
		LOCATION = lOCATION;
		AREA = aREA;
		ROOM = rOOM;
		FEE = fEE;
		FLOOR = fLOOR;
		ELV = eLV;
		PARKING = pARKING;
		BUILD = bUILD;
		GIMAGE = gIMAGE;
	}


	@Override
	public String toString() {
		return "Goods_MP_DTO [GCODE=" + GCODE + ", DEPOSIT=" + DEPOSIT + ", GPRICE_MP=" + GPRICE_MP + ", ADDRESS="
				+ ADDRESS + ", LOCATION=" + LOCATION + ", AREA=" + AREA + ", ROOM=" + ROOM + ", FEE=" + FEE + ", FLOOR="
				+ FLOOR + ", ELV=" + ELV + ", PARKING=" + PARKING + ", BUILD=" + BUILD + ", GIMAGE=" + GIMAGE + "]";
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


	public String getADDRESS() {
		return ADDRESS;
	}


	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}


	public String getLOCATION() {
		return LOCATION;
	}


	public void setLOCATION(String lOCATION) {
		LOCATION = lOCATION;
	}


	public String getAREA() {
		return AREA;
	}


	public void setAREA(String aREA) {
		AREA = aREA;
	}


	public String getROOM() {
		return ROOM;
	}


	public void setROOM(String rOOM) {
		ROOM = rOOM;
	}


	public int getFEE() {
		return FEE;
	}


	public void setFEE(int fEE) {
		FEE = fEE;
	}


	public String getFLOOR() {
		return FLOOR;
	}


	public void setFLOOR(String fLOOR) {
		FLOOR = fLOOR;
	}


	public int getELV() {
		return ELV;
	}


	public void setELV(int eLV) {
		ELV = eLV;
	}


	public String getPARKING() {
		return PARKING;
	}


	public void setPARKING(String pARKING) {
		PARKING = pARKING;
	}


	public int getBUILD() {
		return BUILD;
	}


	public void setBUILD(int bUILD) {
		BUILD = bUILD;
	}


	public String getGIMAGE() {
		return GIMAGE;
	}


	public void setGIMAGE(String gIMAGE) {
		GIMAGE = gIMAGE;
	}
	
	
	
	
}
