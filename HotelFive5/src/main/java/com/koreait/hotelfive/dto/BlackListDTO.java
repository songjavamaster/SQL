package com.koreait.hotelfive.dto;

public class BlackListDTO {
	String mId,bReason;
	int bRight;
	 public BlackListDTO() {   }

	   public BlackListDTO(String mId, String bReason, int bRight) {
		   super();
	   		this.mId=mId;
	   		this.bReason=bReason;
	   		this.bRight=bRight;
	   }

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getbReason() {
		return bReason;
	}

	public void setbReason(String bReason) {
		this.bReason = bReason;
	}

	public int getbRight() {
		return bRight;
	}

	public void setbRight(int bRight) {
		this.bRight = bRight;
	}
	
	
	   
	   
}
