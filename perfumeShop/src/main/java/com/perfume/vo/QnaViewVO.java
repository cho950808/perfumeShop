package com.perfume.vo;

import java.util.Date;

public class QnaViewVO {

	private int qNum;	// 문의번호
	private String mUserName;	// 문의작성자
	private String qTitle;	// 문의제목
	private String qCon;	// 문의내용
	private Date qDate;	// 문의날짜

	private int[] check;
	private String mUserId; // 유저 아이디
	
	private int reCnt;

	public int getReCnt() {
		return reCnt;
	}

	public void setReCnt(int reCnt) {
		this.reCnt = reCnt;
	}

	public int[] getCheck() {
		return check;
	}

	public String getmUserId() {
		return mUserId;
	}

	public void setmUserId(String mUserId) {
		this.mUserId = mUserId;
	}

	public void setCheck(int[] check) {
		this.check = check;
	}

	public String getmUserName() {
		return mUserName;
	}

	public void setmUserName(String mUserName) {
		this.mUserName = mUserName;
	}

	public int getqNum() {
		return qNum;
	}

	public void setqNum(int qNum) {
		this.qNum = qNum;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqCon() {
		return qCon;
	}

	public void setqCon(String qCon) {
		this.qCon = qCon;
	}

	public Date getqDate() {
		return qDate;
	}

	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}

}
