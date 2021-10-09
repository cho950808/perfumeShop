package com.perfume.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.perfume.vo.CartListVO;
import com.perfume.vo.CartVO;
import com.perfume.vo.OrderDetailVO;
import com.perfume.vo.OrderListVO;
import com.perfume.vo.OrderVO;
import com.perfume.vo.ProductViewVO;
import com.perfume.vo.ReplyListVO;
import com.perfume.vo.ReplyVO;

@Repository
public class ShopDAOImpl implements ShopDAO {

	@Inject
	private SqlSession sql;
	
	// 매퍼 
	private static String namespace = "shopMapper";

	// 전체 상품 리스트
	@Override
	public List<ProductViewVO> list() throws Exception {
			
		return sql.selectList(namespace + ".list");
	}
	
	// 상품 조회
	@Override
	public ProductViewVO productView(int pNum) throws Exception {
		return sql.selectOne("adminMapper"+ ".productView", pNum);
	}

	// 상품 소감(댓글) 작성
	@Override
	public void registReply(ReplyVO reply) throws Exception {
		sql.insert(namespace + ".registReply", reply);
	}

	// 상품 소감(댓글) 리스트
	@Override
	public List<ReplyListVO> replyList(int pNum) throws Exception {
		return sql.selectList(namespace + ".replyList", pNum);
	}

	// 상품 소감(댓글) 삭제
	@Override
	public void deleteReply(ReplyVO reply) throws Exception {
		sql.delete(namespace + ".deleteReply", reply);
	}

	// 아이디 체크
	@Override
	public String idCheck(int prNum) throws Exception {
		return sql.selectOne(namespace + ".replyUserIdCheck", prNum);
	}

	// 상품 소감(댓글) 수정
	@Override
	public void modifyReply(ReplyVO reply) throws Exception {
		sql.update(namespace + ".modifyReply", reply);
	}

	// 카트 담기
	@Override
	public void addCart(CartListVO cart) throws Exception {
		sql.insert(namespace + ".addCart", cart);
	}

	// 카트 리스트
	@Override
	public List<CartListVO> cartList(String mUserId) throws Exception {
		return sql.selectList(namespace + ".cartList", mUserId);
	}

	// 카트 삭제
	@Override
	public void deleteCart(CartVO cart) throws Exception {
		sql.delete(namespace + ".deleteCart", cart);
	}
	
	// 주문 정보
	@Override
	public void orderInfo(OrderVO order) throws Exception {
		sql.insert(namespace + ".orderInfo", order);
	}
	
	// 주문 상세 정보
	@Override
	public void orderInfo_Details(OrderDetailVO orderDetail) throws Exception {
		sql.insert(namespace + ".orderInfo_Details", orderDetail);
	}

	// 카트 비우기
	@Override
	public void cartAllDelete(String mUserId) throws Exception {
		sql.delete(namespace + ".cartAllDelete", mUserId);
	}

	// 주문 목록
	@Override
	public List<OrderVO> orderList(OrderVO order) throws Exception {
		return sql.selectList(namespace + ".orderList", order);
	}
	
	// 주문 목록 갯수
	@Override
	public int orderListCount(OrderVO order) throws Exception {
		return sql.selectOne(namespace + ".orderListCount", order);
		
	}

	// 특정 주문 목록
	@Override
	public List<OrderListVO> orderView(OrderVO order) throws Exception {
		return sql.selectList(namespace + ".orderView", order);
	}

 
}  