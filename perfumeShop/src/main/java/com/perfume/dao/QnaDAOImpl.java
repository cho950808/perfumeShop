package com.perfume.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.perfume.vo.QnaReplyVO;
import com.perfume.vo.QnaViewVO;
import com.perfume.vo.SearchVO;

@Repository
public class QnaDAOImpl implements QnaDAO {

	@Inject
	private SqlSession sql;
	
	// 매퍼
	private static String namespace = "qnaMapper";
	
	// QNA 목록(페이징, 검색)
	@Override
	public List<QnaViewVO> qnaList(SearchVO scri) throws Exception {
		return sql.selectList(namespace + ".qnaList", scri);
	}
	
	// QNA 총 갯수(페이징, 검색)
	@Override
	public int countSearch(SearchVO scri) throws Exception {
		return sql.selectOne(namespace + ".countSearch", scri);
	}
	
	// QNA 작성
	@Override
	public void write(QnaViewVO vo) throws Exception {
		sql.insert(namespace + ".write" , vo);
	}
	
	// QNA 상세
	@Override
	public QnaViewVO detail(int qNum) throws Exception {
		return sql.selectOne(namespace + ".detail", qNum);
	}

	// QNA 삭제
	@Override
	public void delete(String no) throws Exception {
		sql.delete(namespace + ".delete", no);
	}
	
	// QNA 답변 조회
	@Override
	public List<QnaReplyVO> list(int qNum) throws Exception {
		return sql.selectList(namespace + ".replyList", qNum);
	}

	// QNA 답변 작성
	@Override
	public void write(QnaReplyVO vo) throws Exception {
		sql.insert(namespace + ".replyWrite", vo);
		sql.update(namespace + ".replyCount", vo);
	}

	// QNA 답변 수정
	@Override
	public void modify(QnaReplyVO vo) throws Exception {
		sql.update(namespace + ".replyModify", vo);
	}

	// QNA 답변 삭제
	@Override
	public void delete(QnaReplyVO vo) throws Exception {
		sql.delete(namespace + ".replyDelete", vo);
		sql.update(namespace + ".replyCount", vo);
	}
	
}
