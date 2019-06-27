package com.mrp.company.dto;

public class LoginDto {
	int memNum;
	String id;
	String pw;
	String address;
	String phonNum;
	int compNum;
	public int getMemNum() {
		return memNum;
	}
	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhonNum() {
		return phonNum;
	}
	public void setPhonNum(String phonNum) {
		this.phonNum = phonNum;
	}
	public int getCompNum() {
		return compNum;
	}
	public void setCompNum(int compNum) {
		this.compNum = compNum;
	}
	@Override
	public String toString() {
		return "LoginDto [memNum=" + memNum + ", id=" + id + ", pw=" + pw + ", address=" + address + ", phonNum="
				+ phonNum + ", compNum=" + compNum + "]";
	}
	
	
}