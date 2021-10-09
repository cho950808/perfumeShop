package com.perfume.vo;

import java.sql.Timestamp;

public class FaqViewVO {
	private int fNum;	// FAQ 번호
	private String fWriter;	// FAQ 작성자
	private String fTitle;	// FAQ 제목
	private String fContent;	// FAQ 내용
	private Timestamp fDate;	// FAQ 작성일
	private int fViewCnt;	// FAQ 조회수
	
	public int getfNum() {
		return fNum;
	}
	public void setfNum(int fNum) {
		this.fNum = fNum;
	}
	public String getfWriter() {
		return fWriter;
	}
	public void setfWriter(String fWriter) {
		this.fWriter = fWriter;
	}
	public String getfTitle() {
		return fTitle;
	}
	public void setfTitle(String fTitle) {
		this.fTitle = fTitle;
	}
	public String getfContent() {
		return fContent;
	}
	public void setfContent(String fContent) {
		this.fContent = fContent;
	}
	public Timestamp getfDate() {
		return fDate;
	}
	public void setfDate(Timestamp fDate) {
		this.fDate = fDate;
	}
	public int getfViewCnt() {
		return fViewCnt;
	}
	public void setfViewCnt(int fViewCnt) {
		this.fViewCnt = fViewCnt;
	}
	
}
