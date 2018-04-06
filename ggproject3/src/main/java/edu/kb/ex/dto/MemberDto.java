package edu.kb.ex.dto;

public class MemberDto {
	
	private String memberId;
	private String pw;
	private String name;
	private String driveNum;
	private String phoneNum;
	private String address;
	private String laterPrice;
	private String mil;
	
	
	public MemberDto() {
		super();
	}


	public MemberDto(String memberId, String pw, String name, String driveNum, String phoneNum, String address,
			String laterPrice, String mil) {
		super();
		this.memberId = memberId;
		this.pw = pw;
		this.name = name;
		this.driveNum = driveNum;
		this.phoneNum = phoneNum;
		this.address = address;
		this.laterPrice = laterPrice;
		this.mil = mil;
	}


	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getDriveNum() {
		return driveNum;
	}


	public void setDriveNum(String driveNum) {
		this.driveNum = driveNum;
	}


	public String getPhoneNum() {
		return phoneNum;
	}


	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getLaterPrice() {
		return laterPrice;
	}


	public void setLaterPrice(String laterPrice) {
		this.laterPrice = laterPrice;
	}


	public String getMil() {
		return mil;
	}


	public void setMil(String mil) {
		this.mil = mil;
	}
	
	
	

}
