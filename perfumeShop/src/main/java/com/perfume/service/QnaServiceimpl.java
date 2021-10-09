package com.perfume.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.perfume.dao.QnaDAO;
import com.perfume.vo.QnaReplyVO;
import com.perfume.vo.QnaViewVO;
import com.perfume.vo.SearchVO;

@Service
public class QnaServiceimpl implements QnaService {

	@Inject
	private QnaDAO dao;

	// QNA 목록(페이징, 검색)
	@Override
	public List<QnaViewVO> qnaList(SearchVO scri) throws Exception {
			return dao.qnaList(scri);
	}
	
	// QNA 총 갯수(페이징, 검색)
	@Override
	public int countSearch(SearchVO scri) throws Exception {
		return dao.countSearch(scri);
	}

	// QNA 작성
	@Override
	public void write(QnaViewVO vo) throws Exception {
		dao.write(vo);
	}

	// QNA 상세
	@Override
	public QnaViewVO detail(int qNum) throws Exception {
		return dao.detail(qNum);
	}

	// QNA 삭제
	@Override
	public void delete(String no) throws Exception {
		dao.delete(no);
	}

	// QNA 답변 조회
	@Override
	public List<QnaReplyVO> list(int qNum) throws Exception {
		return dao.list(qNum);
	}
	
	// QNA 답변 작성
	@Override
	public void write(QnaReplyVO vo) throws Exception {
		dao.write(vo);
	}

	// QNA 답변 수정
	@Override
	public void modify(QnaReplyVO vo) throws Exception {
		dao.modify(vo);
	}

	// QNA 답변 삭제
	@Override
	public void delete(QnaReplyVO vo) throws Exception {
		dao.delete(vo);
	}

}
