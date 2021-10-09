package com.perfume.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.perfume.vo.CategoryVO;
import com.perfume.vo.MemberVO;
import com.perfume.vo.OrderListVO;
import com.perfume.vo.OrderVO;
import com.perfume.vo.ProductVO;
import com.perfume.vo.ProductViewVO;
import com.perfume.vo.QnaViewVO;
import com.perfume.vo.ReplyListVO;
import com.perfume.vo.SearchVO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Inject
	private SqlSession sql;
	
	// 매퍼 
	private static String namespace = "adminMapper";

	// 카테고리
	@Override
	public List<CategoryVO> category() throws Exception {
		return sql.selectList(namespace + ".category");
	}
	
	// 회원 목록
	@Override
	public List<MemberVO> memberList(SearchVO scri) throws Exception {
		return sql.selectList(namespace + ".memberList", scri);
	}
	
	// 회원 총 인원 수
	@Override
	public int memberListCount(SearchVO scri) throws Exception {
		return sql.selectOne(namespace + ".memberListCount", scri);
		
	}
	
	// 회원 목록 삭제
	@Override
	public void memberDelete(String mUserId) throws Exception {
		sql.delete(namespace + ".memberDelete", mUserId);
	}

	// 상품등록
	@Override
	public void register(ProductVO vo) throws Exception {
		sql.insert(namespace + ".register", vo);
	}
	
	// 상품목록 (페이징)
	@Override
	public List<ProductViewVO> productList(SearchVO scri) throws Exception {
		return sql.selectList(namespace + ".productList", scri);
	}
	
	// 상품목록 총 갯수
	@Override
	public int listCount(SearchVO scri) throws Exception {
		return sql.selectOne(namespace + ".listCount", scri);
		
	}

	// 상품조회 + 카테고리 조인
	@Override
	public ProductViewVO productView(int pNum) throws Exception {
		return sql.selectOne(namespace + ".productView", pNum);
	}

	// 상품 수정
	@Override
	public void productModify(ProductVO vo) throws Exception {
		sql.update(namespace + ".productModify", vo);
	}

	// 상품 삭제
	@Override
	public void productDelete(int gdsNum) throws Exception {
		sql.delete(namespace + ".productDelete", gdsNum);
	}
	
	// 주문 목록
	@Override
	public List<OrderVO> orderList(SearchVO scri) throws Exception {
		return sql.selectList(namespace + ".orderList", scri);
	}
	
	// 주문 목록 갯수
	@Override
	public int orderListCount(SearchVO scri) throws Exception {
		return sql.selectOne(namespace + ".orderListCount", scri);
		
	}
	
	// 특정 주문 목록 
	@Override
	public List<OrderListVO> orderView(OrderVO order) throws Exception {
		return sql.selectList(namespace + ".orderView", order);
	}

	// 배송 상태
	@Override
	public void delivery(OrderVO order) throws Exception {
		sql.update(namespace + ".delivery", order);
	}
	
	// 상품 수량 조절
	@Override
	public void changeStock(ProductVO product) throws Exception {		
		sql.update(namespace + ".changeStock", product);
	}

	// 모든 소감(댓글)
	@Override
	public List<ReplyListVO> allReply(SearchVO scri) throws Exception {
		return sql.selectList(namespace + ".allReply", scri);
	}
	
	// 모든 소감(댓글) 갯수
	@Override
	public int allReplyCount(SearchVO scri) throws Exception {
		return sql.selectOne(namespace + ".allReplyCount", scri);
		
	}

	// 소감(댓글) 삭제
	@Override
	public void deleteReply(int prNum) throws Exception {
		sql.delete(namespace + ".deleteReply", prNum);
	}
	
	// 문의 리스트
	@Override
	public List<QnaViewVO> list() throws Exception {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		return sql.selectList(namespace + ".list", map);
	}
} 