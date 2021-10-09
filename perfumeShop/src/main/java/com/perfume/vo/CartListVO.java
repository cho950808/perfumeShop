package com.perfume.vo;

import java.util.Date;

public class CartListVO {

	private int cartNum;	// 장바구니번호
	private String mUserId;	// 유저아이디
	private int pNum;	// 상품번호
	private int cartStock;	// 장바구니수량
	private Date addDate;	// 장바구니날짜

	private int num; //
	private String pName; // 상품이름
	private int pPrice; // 상품가격
	private String pThumbImg; // 상품 상세이미지

	public int getCartNum() {
		return cartNum;
	}

	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}

	public String getmUserId() {
		return mUserId;
	}

	public void setmUserId(String mUserId) {
		this.mUserId = mUserId;
	}

	public int getpNum() {
		return pNum;
	}

	public void setpNum(int pNum) {
		this.pNum = pNum;
	}

	public int getCartStock() {
		return cartStock;
	}

	public void setCartStock(int cartStock) {
		this.cartStock = cartStock;
	}

	public Date getAddDate() {
		return addDate;
	}

	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}

	public String getpThumbImg() {
		return pThumbImg;
	}

	public void setpThumbImg(String pThumbImg) {
		this.pThumbImg = pThumbImg;
	}

}