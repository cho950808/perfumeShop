package com.perfume.vo;

import java.util.Date;

public class ReplyVO {

	private int pNum; 	// 상품번호
	private String mUserId;	// 유저아이디
	private int prNum;	// 후기번호
	private String prCon;	// 후기내용
	private Date prDate;	// 후기날짜

	private String prImage;	// 이미지

	public String getPrImage() {
		return prImage;
	}

	public void setPrImage(String prImage) {
		this.prImage = prImage;
	}

	public int getpNum() {
		return pNum;
	}

	public void setpNum(int pNum) {
		this.pNum = pNum;
	}

	public String getmUserId() {
		return mUserId;
	}

	public void setmUserId(String mUserId) {
		this.mUserId = mUserId;
	}

	public int getPrNum() {
		return prNum;
	}

	public void setPrNum(int prNum) {
		this.prNum = prNum;
	}

	public String getPrCon() {
		return prCon;
	}

	public void setPrCon(String prCon) {
		this.prCon = prCon;
	}

	public Date getPrDate() {
		return prDate;
	}

	public void setPrDate(Date prDate) {
		this.prDate = prDate;
	}

}