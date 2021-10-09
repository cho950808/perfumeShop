package com.perfume.service;

import java.util.List;

import com.perfume.vo.CategoryVO;
import com.perfume.vo.MemberVO;
import com.perfume.vo.OrderListVO;
import com.perfume.vo.OrderVO;
import com.perfume.vo.ProductVO;
import com.perfume.vo.ProductViewVO;
import com.perfume.vo.QnaViewVO;
import com.perfume.vo.ReplyListVO;
import com.perfume.vo.SearchVO;

public interface AdminService {

	// 카테고리 
	public List<CategoryVO> category() throws Exception;
	
	// 회원 목록
	public List<MemberVO> memberList(SearchVO scri) throws Exception;
	
	// 회원 총 인원 수
	public int memberListCount(SearchVO scri) throws Exception;
	
	// 회원 목록 선택 삭제
	public void memberDelete(String mUserId) throws Exception;
		
	// 상품등록
	public void register(ProductVO vo) throws Exception;

	// 상품목록 (페이징)
	public List<ProductViewVO> productList(SearchVO scri) throws Exception;
	
	// 상품목록 총 갯수
	public int listCount(SearchVO scri) throws Exception;

	// 상품조회  + 카테고리 조인
	public ProductViewVO productView(int pNum) throws Exception;

	// 상품 수정
	public void productModify(ProductVO vo) throws Exception;
	
	// 상품 삭제
	public void productDelete(int pNum) throws Exception;
	
	// 주문 목록
	public List<OrderVO> orderList(SearchVO scri) throws Exception;
	
	// 주문 목록 갯수
	public int orderListCount(SearchVO scri) throws Exception;
		
	// 특정 주문 목록
	public List<OrderListVO> orderView(OrderVO order) throws Exception;

	// 배송 상태
	public void delivery(OrderVO order) throws Exception;
	
	// 상품 수량 조절
	public void changeStock(ProductVO product) throws Exception;
	
	// 모든 소감(댓글)
	public List<ReplyListVO> allReply(SearchVO scri) throws Exception;
	
	// 모든 소감(댓글) 갯수
	public int allReplyCount(SearchVO scri) throws Exception;
	
	// 소감(댓글) 삭제
	public void deleteReply(int prNum) throws Exception;
	
	// 문의 리스트
	public List<QnaViewVO> list() throws Exception;
} 