package edu.kb.ex.dto;

import java.sql.Date;

public class ContractDto {
	
	private String memberId;
	private String carNum;	
	private int conNum;
	private String sumprice;
	private Date rentaldate;
	private Date returndate;
	
	
	
	public ContractDto() {	
	}

	

	public ContractDto(String memberId, String carNum, int conNum, String sumprice, Date rentaldate, Date returndate) {
		super();
		this.memberId = memberId;
		this.carNum = carNum;
		this.conNum = conNum;
		this.sumprice = sumprice;
		this.rentaldate = rentaldate;
		this.returndate = returndate;
	}

	public int getConNum() {
		return conNum;
	}



	public void setConNum(int conNum) {
		this.conNum = conNum;
	}



	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getCarNum() {
		return carNum;
	}

	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}

	public String getSumprice() {
		return sumprice;
	}

	public void setSumprice(String sumprice) {
		this.sumprice = sumprice;
	}

	public Date getRentaldate() {
		return rentaldate;
	}

	public void setRentaldate(Date rentaldate) {
		this.rentaldate = rentaldate;
	}

	public Date getReturndate() {
		return returndate;
	}

	public void setReturndate(Date returndate) {
		this.returndate = returndate;
	}
	
	

	

}
