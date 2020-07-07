package com.mrp.company.dto;

public class CompanyDto {
	String compNum;
	String compName;
	String address;
	String phoneNum;
	String faxNum;
	public String getCompNum() {
		return compNum;
	}
	public void setCompNum(String compNum) {
		this.compNum = compNum;
	}
	public String getCompName() {
		return compName;
	}
	public void setCompName(String compName) {
		this.compName = compName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	public String getFaxNum() {
		return faxNum;
	}
	public void setFaxNum(String faxNum) {
		this.faxNum = faxNum;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	@Override
	public String toString() {
		return "CompanyDto [compNum=" + compNum + ", compName=" + compName + ", address=" + address + ", phoneNum="
				+ phoneNum + ", faxNum=" + faxNum + "]";
	}

	
}
