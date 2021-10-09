package com.perfume.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.perfume.dao.AdminDAO;
import com.perfume.vo.CategoryVO;
import com.perfume.vo.MemberVO;
import com.perfume.vo.OrderListVO;
import com.perfume.vo.OrderVO;
import com.perfume.vo.ProductVO;
import com.perfume.vo.ProductViewVO;
import com.perfume.vo.QnaViewVO;
import com.perfume.vo.ReplyListVO;
import com.perfume.vo.SearchVO;
 
@Service
public class AdminServiceImpl implements AdminService {

	@Inject
	private AdminDAO dao;

	// 카테고리
	@Override
	public List<CategoryVO> category() throws Exception {
		return dao.category();
	}
	
	// 회원 목록
	@Override
	public List<MemberVO> memberList(SearchVO scri) throws Exception {
		return dao.memberList(scri);
	}
	
	// 회원 총 인원 수
	@Override
	public int memberListCount(SearchVO scri) throws Exception {
		return dao.memberListCount(scri);
	}
	
	// 회원 목록 선택 삭제
	@Override
	public void memberDelete(String mUserId) throws Exception {
		dao.memberDelete(mUserId);
	}

	// 상품등록
	@Override
	public void register(ProductVO vo) throws Exception {
		dao.register(vo);		
	}

	// 상품목록 (페이징)
	@Override
	public List<ProductViewVO> productList(SearchVO scri) throws Exception {
		return dao.productList(scri);
	}
	
	// 상품목록 총 갯수
	@Override
	public int listCount(SearchVO scri) throws Exception {
		return dao.listCount(scri);
	}
	
	// 상품조회  + 카테고리 조인
	@Override
	public ProductViewVO productView(int pNum) throws Exception {
		return dao.productView(pNum);
	}

	// 상품 수정
	@Override
	public void productModify(ProductVO vo) throws Exception {
		dao.productModify(vo);
	}

	// 상품 삭제
	@Override
	public void productDelete(int pNum) throws Exception {
		dao.productDelete(pNum);
	}

	// 주문 목록
	@Override
	public List<OrderVO> orderList(SearchVO scri) throws Exception {
		return dao.orderList(scri);
	}
	
	// 상품목록 총 갯수
	@Override
	public int orderListCount(SearchVO scri) throws Exception {
		return dao.orderListCount(scri);
	}
	
	// 특정 주문
	@Override
	public List<OrderListVO> orderView(OrderVO order) throws Exception {
		return dao.orderView(order);
	}

	// 배송 상태
	@Override
	public void delivery(OrderVO order) throws Exception {
		dao.delivery(order);
	}

	// 상품 수량 조절
	@Override
	public void changeStock(ProductVO product) throws Exception {		
		dao.changeStock(product);
	}

	// 모든 소감(댓글)
	@Override
	public List<ReplyListVO> allReply(SearchVO scri) throws Exception {
		return dao.allReply(scri);
	}

	// 상품목록 총 갯수
	@Override
	public int allReplyCount(SearchVO scri) throws Exception {
		return dao.allReplyCount(scri);
	}
	
	// 소감(댓글) 삭제
	@Override
	public void deleteReply(int prNum) throws Exception {
		dao.deleteReply(prNum);
	}
	
	// qna list
	@Override
	public List<QnaViewVO> list() throws Exception {
		
		return dao.list();
	}
}