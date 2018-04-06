package edu.kb.ex.dto;

import java.sql.Date;

public class NBoardDto {
	
	private String boardSubject;
	private String boardContent;
	private int boardHit;
	private Date boardDate;
	private String memberId;
	
	
	public NBoardDto() {
		super();
	}

	public NBoardDto(String boardSubject, String boardContent, int boardHit, Date boardDate, String memberId) {
		super();
		this.boardSubject = boardSubject;
		this.boardContent = boardContent;
		this.boardHit = boardHit;
		this.boardDate = boardDate;
		this.memberId = memberId;
	}

	public String getBoardSubject() {
		return boardSubject;
	}

	public void setBoardSubject(String boardSubject) {
		this.boardSubject = boardSubject;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public int getBoardHit() {
		return boardHit;
	}

	public void setBoardHit(int boardHit) {
		this.boardHit = boardHit;
	}

	public Date getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	
	
	

}
