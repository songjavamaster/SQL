package com.koreait.hotelfive.dto;

public class SellerDTO {
	private int sNo, sNumber, sPhone;
	private String sId,sPw,hName;
	
	public SellerDTO() {}
	public SellerDTO(int sNo, int sNumber, int sPhone, String sId, String sPw, String hName ) {
		super();
		this.sNo =sNo;
		this.sNumber=sNumber;
		this.sPhone=sPhone;
		this.sId=sId;
		this.sPw=sPw;
		this.hName=hName;
	}
	public int getsNo() {
		return sNo;
	}
	public void setsNo(int sNo) {
		this.sNo = sNo;
	}
	public int getsNumber() {
		return sNumber;
	}
	public void setsNumber(int sNumber) {
		this.sNumber = sNumber;
	}
	public int getsPhone() {
		return sPhone;
	}
	public void setsPhone(int sPhone) {
		this.sPhone = sPhone;
	}
	public String getsId() {
		return sId;
	}
	public void setsId(String sId) {
		this.sId = sId;
	}
	public String getsPw() {
		return sPw;
	}
	public void setsPw(String sPw) {
		this.sPw = sPw;
	}
	public String gethName() {
		return hName;
	}
	public void sethName(String hName) {
		this.hName = hName;
	}
	
}
