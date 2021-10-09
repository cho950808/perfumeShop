package com.perfume.dao;

import java.util.List;

import com.perfume.vo.CartListVO;
import com.perfume.vo.CartVO;
import com.perfume.vo.OrderDetailVO;
import com.perfume.vo.OrderListVO;
import com.perfume.vo.OrderVO;
import com.perfume.vo.ProductViewVO;
import com.perfume.vo.ReplyListVO;
import com.perfume.vo.ReplyVO;

public interface ShopDAO {

	// 전체 상품 리스트
	public List<ProductViewVO> list() throws Exception;
	
	// 상품조회
	public ProductViewVO productView(int pNum) throws Exception;
	
	// 상품 소감(댓글) 작성
	public void registReply(ReplyVO reply) throws Exception;
	
	// 상품 소감(댓글) 리스트
	public List<ReplyListVO> replyList(int pNum) throws Exception;
	
	// 상품 소감(댓글) 삭제
	public void deleteReply(ReplyVO reply) throws Exception;
	
	// 아이디 체크
	public String idCheck(int prNum) throws Exception;

	// 상품 소감(댓글) 수정
	public void modifyReply(ReplyVO reply) throws Exception;
	
	// 카트 담기
	public void addCart(CartListVO cart) throws Exception;
	
	// 카트 리스트
	public List<CartListVO> cartList(String mUserId) throws Exception;

	// 카트 삭제
	public void deleteCart(CartVO cart) throws Exception;
	
	// 주문 정보
	public void orderInfo(OrderVO order) throws Exception;
	
	// 주문 상세 정보
	public void orderInfo_Details(OrderDetailVO orderDetail) throws Exception;

	// 카트 비우기
	public void cartAllDelete(String mUserId) throws Exception;
	
	// 주문 목록
	public List<OrderVO> orderList(OrderVO order) throws Exception;
	
	// 주문 목록 갯수
	public int orderListCount(OrderVO order) throws Exception;
	
	// 특정 주문 목록
	public List<OrderListVO> orderView(OrderVO order) throws Exception;
	
		
}  