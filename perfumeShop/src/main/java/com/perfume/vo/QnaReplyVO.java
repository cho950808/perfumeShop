package com.perfume.vo;

import java.util.Date;

public class QnaReplyVO {

	private int qrNum;	// 문의답변번호
	private int qNum;	// 문의번호
	private String mUserName;	// 문의답변작성자
	private String qrCon;	// 문의답변내용
	private Date qrDate;	// 문의답변날짜
	
	public int getQrNum() {
		return qrNum;
	}

	public void setQrNum(int qrNum) {
		this.qrNum = qrNum;
	}

	public int getqNum() {
		return qNum;
	}

	public void setqNum(int qNum) {
		this.qNum = qNum;
	}

	public String getmUserName() {
		return mUserName;
	}

	public void setmUserName(String mUserName) {
		this.mUserName = mUserName;
	}

	public String getQrCon() {
		return qrCon;
	}

	public void setQrCon(String qrCon) {
		this.qrCon = qrCon;
	}

	public Date getQrDate() {
		return qrDate;
	}

	public void setQrDate(Date qrDate) {
		this.qrDate = qrDate;
	}

}
