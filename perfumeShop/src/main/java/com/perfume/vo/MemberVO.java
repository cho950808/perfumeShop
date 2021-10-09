package com.perfume.vo;

import java.util.Date;

public class MemberVO {

	private int mNum; 		// 유저번호
	private String mUserId;	// 유저아이디
	private String mUserPass;	// 유저비밀번호
	private String mUserName;	// 유저이름
	private String mUserEmail;  // 유저이메일
	private String mUserPhon;	// 유저전화번호
	private String mUserAddr1;	// 우편번호
	private String mUserAddr2;	// 주소
	private String mUserAddr3;	// 상세주소
	private Date mRegDate;	// 가입날짜
	private int mVerify;	// 권한값

	public int getmNum() {
		return mNum;
	}

	public void setmNum(int mNum) {
		this.mNum = mNum;
	}
	
	public String getmUserId() {
		return mUserId;
	}

	public void setmUserId(String mUserId) {
		this.mUserId = mUserId;
	}

	public String getmUserPass() {
		return mUserPass;
	}

	public void setmUserPass(String mUserPass) {
		this.mUserPass = mUserPass;
	}

	public String getmUserName() {
		return mUserName;
	}

	public void setmUserName(String mUserName) {
		this.mUserName = mUserName;
	}

	public String getmUserPhon() {
		return mUserPhon;
	}

	public void setmUserPhon(String mUserPhon) {
		this.mUserPhon = mUserPhon;
	}

	public String getmUserAddr1() {
		return mUserAddr1;
	}

	public void setmUserAddr1(String mUserAddr1) {
		this.mUserAddr1 = mUserAddr1;
	}

	public String getmUserAddr2() {
		return mUserAddr2;
	}

	public void setmUserAddr2(String mUserAddr2) {
		this.mUserAddr2 = mUserAddr2;
	}

	public String getmUserAddr3() {
		return mUserAddr3;
	}

	public void setmUserAddr3(String mUserAddr3) {
		this.mUserAddr3 = mUserAddr3;
	}

	public Date getmRegDate() {
		return mRegDate;
	}

	public void setmRegDate(Date mRegDate) {
		this.mRegDate = mRegDate;
	}

	public int getmVerify() {
		return mVerify;
	}

	public void setmVerify(int mVerify) {
		this.mVerify = mVerify;
	}
	
	public String getmUserEmail() {
		return mUserEmail;
	}

	public void setmUserEmail(String mUserEmail) {
		this.mUserEmail = mUserEmail;
	}

	@Override
	public String toString() {
		return "MemberVO [mUserId=" + mUserId + ", mUserPass=" + mUserPass + ", mUserName=" + mUserName
				+ ", mUserEmail=" + mUserEmail + ", mUserPhon=" + mUserPhon + ", mUserAddr1=" + mUserAddr1
				+ ", mUserAddr2=" + mUserAddr2 + ", mUserAddr3=" + mUserAddr3 + ", mRegDate=" + mRegDate + ", mVerify="
				+ mVerify + "]";
	}
	


}