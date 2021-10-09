package com.perfume.vo;

import java.util.Date;

public class ProductViewVO {

	private int pNum;	// 상품번호
	private String pName;	// 상품이름
	private String pCateCode;	// 카테고리코드
	private int pPrice;	// 상품가격
	private int pStock;	// 상품수량
	private String pDetail;	// 상품설명
	private String pImg;	// 상품이미지
	private Date pDate;	// 상품날짜

	private String pCateCodeRef;	// 카테고리참조
	private String pCateName;	// 카테고리이름

	private String pThumbImg;	// 상품 상세이미지

	public int getpNum() {
		return pNum;
	}

	public void setpNum(int pNum) {
		this.pNum = pNum;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpCateCode() {
		return pCateCode;
	}

	public void setpCateCode(String pCateCode) {
		this.pCateCode = pCateCode;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}

	public int getpStock() {
		return pStock;
	}

	public void setpStock(int pStock) {
		this.pStock = pStock;
	}

	public String getpDetail() {
		return pDetail;
	}

	public void setpDetail(String pDetail) {
		this.pDetail = pDetail;
	}

	public String getpImg() {
		return pImg;
	}

	public void setpImg(String pImg) {
		this.pImg = pImg;
	}

	public Date getpDate() {
		return pDate;
	}

	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}

	public String getpCateCodeRef() {
		return pCateCodeRef;
	}

	public void setpCateCodeRef(String pCateCodeRef) {
		this.pCateCodeRef = pCateCodeRef;
	}

	public String getpCateName() {
		return pCateName;
	}

	public void setpCateName(String pCateName) {
		this.pCateName = pCateName;
	}

	public String getpThumbImg() {
		return pThumbImg;
	}

	public void setpThumbImg(String pThumbImg) {
		this.pThumbImg = pThumbImg;
	}

}