package com.perfume.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.perfume.dao.ShopDAO;
import com.perfume.vo.CartListVO;
import com.perfume.vo.CartVO;
import com.perfume.vo.OrderDetailVO;
import com.perfume.vo.OrderListVO;
import com.perfume.vo.OrderVO;
import com.perfume.vo.ProductViewVO;
import com.perfume.vo.ReplyListVO;
import com.perfume.vo.ReplyVO;

@Service
public class ShopServiceImpl implements ShopService {

	@Inject
	private ShopDAO dao;

	// 전체 상품 리스트
	@Override
	public List<ProductViewVO> list() throws Exception {
		return dao.list();
	}

	// 상품 조회
	@Override
	public ProductViewVO productView(int pNum) throws Exception {
		return dao.productView(pNum);
	}

	// 상품 소감(댓글) 작성
	@Override
	public void registReply(ReplyVO reply) throws Exception {
		dao.registReply(reply);		
	}

	// 상품 소감(댓글) 리스트
	@Override
	public List<ReplyListVO> replyList(int pNum) throws Exception {
		return dao.replyList(pNum);
	}

	// 상품 소감(댓글) 삭제
	@Override
	public void deleteReply(ReplyVO reply) throws Exception {
		dao.deleteReply(reply);
	}

	// 아이디 체크
	@Override
	public String idCheck(int prNum) throws Exception {
		return dao.idCheck(prNum);
	}

	// 상품 소감(댓글) 수정
	@Override
	public void modifyReply(ReplyVO reply) throws Exception {
		dao.modifyReply(reply);
	}

	// 카트 담기
	@Override
	public void addCart(CartListVO cart) throws Exception {
		dao.addCart(cart);
	}

	// 카트 리스트
	@Override
	public List<CartListVO> cartList(String mUserId) throws Exception {
		return dao.cartList(mUserId);
	}
	
	// 카트 삭제
	@Override
	public void deleteCart(CartVO cart) throws Exception {
		dao.deleteCart(cart);
	}
	
	// 주문 정보
	@Override
	public void orderInfo(OrderVO order) throws Exception {
		dao.orderInfo(order);
	}

	// 주문 상세 정보
	@Override
	public void orderInfo_Details(OrderDetailVO orderDetail) throws Exception {
		dao.orderInfo_Details(orderDetail);
	}

	// 카트 비우기 
	@Override
	public void cartAllDelete(String mUserId) throws Exception {
		dao.cartAllDelete(mUserId);
	}

	// 주문 목록
	@Override
	public List<OrderVO> orderList(OrderVO order) throws Exception {
		return dao.orderList(order);
	}
	
	// 주문 목록 총 갯수
	@Override
	public int orderListCount(OrderVO order) throws Exception {
		return dao.orderListCount(order);
	}

	// 특정 주문
	@Override
	public List<OrderListVO> orderView(OrderVO order) throws Exception {
		return dao.orderView(order);
	}
}  