package com.spring.ex02;

public class LoginVO {
	public String userId;
	public String userName;
	public LoginVO(String userId, String userName) {
		
		this.userId = userId;
		this.userName = userName;
	}
	public LoginVO() {
		
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	
	
}
