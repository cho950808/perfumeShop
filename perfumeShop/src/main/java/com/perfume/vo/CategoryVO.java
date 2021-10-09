package com.perfume.vo;

public class CategoryVO {

	private String pCateName;	// 카테고리이름
	private String pCateCode;	// 카테고리코드
	private String pCateCodeRef;	// 카테고리참조
	private int level;	// 

	public String getpCateName() {
		return pCateName;
	}

	public void setpCateName(String pCateName) {
		this.pCateName = pCateName;
	}

	public String getpCateCode() {
		return pCateCode;
	}

	public void setpCateCode(String pCateCode) {
		this.pCateCode = pCateCode;
	}

	public String getpCateCodeRef() {
		return pCateCodeRef;
	}

	public void setpCateCodeRef(String pCateCodeRef) {
		this.pCateCodeRef = pCateCodeRef;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

}