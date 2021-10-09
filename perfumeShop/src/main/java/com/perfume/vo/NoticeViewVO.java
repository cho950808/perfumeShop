package com.perfume.vo;

import java.sql.Timestamp;

public class NoticeViewVO {

	private int nNum;	// 공지 번호
	private String mUserName; // 유저 닉네임
    private String nTitle;	// 공지 제목
    private String nContent;	// 공지 내용
    private Timestamp nDate;	// 공지 작성일
    private int nViewCnt;	// 공지 조회수
    
    private String nPin; // 고정
    
    
	public int getnNum() {
		return nNum;
	}
	public void setnNum(int nNum) {
		this.nNum = nNum;
	}
	
	public String getnTitle() {
		return nTitle;
	}
	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}
	public String getnContent() {
		return nContent;
	}
	public void setnContent(String nContent) {
		this.nContent = nContent;
	}
	public Timestamp getnDate() {
		return nDate;
	}
	public void setnDate(Timestamp nDate) {
		this.nDate = nDate;
	}
	public int getnViewCnt() {
		return nViewCnt;
	}
	public void setnViewCnt(int nViewCnt) {
		this.nViewCnt = nViewCnt;
	}
	
	public String getmUserName() {
		return mUserName;
	}
	public void setmUserName(String mUserName) {
		this.mUserName = mUserName;
	}
	
	public String getnPin() {
		return nPin;
	}
	public void setnPin(String nPin) {
		this.nPin = nPin;
	}
	
	 @Override
	 public String toString() {
		return "NoticeViewVO [nNum=" + nNum + ", mUserName=" + mUserName + ", nTitle=" + nTitle + ", nContent="
				+ nContent + ", nDate=" + nDate + ", nViewCnt=" + nViewCnt + ", nPin=" + nPin + "]";
	}
}
