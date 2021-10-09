package com.perfume.service;

import java.util.List;

import com.perfume.vo.QnaReplyVO;
import com.perfume.vo.QnaViewVO;
import com.perfume.vo.SearchVO;

public interface QnaService {
		
	// QNA 목록(페이징, 검색)
	public List<QnaViewVO> qnaList(SearchVO scri) throws Exception;
	
	// QNA 총 갯수(페이징, 검색)
	public int countSearch(SearchVO scri) throws Exception;
	
	// QNA 작성
	public void write(QnaViewVO vo) throws Exception;
	
	// QNA 상세
	public QnaViewVO detail(int qNum) throws Exception;
	
	// QNA 삭제
	public void delete(String no) throws Exception;
	
	// QNA 답변 조회
	public List<QnaReplyVO> list(int qNum) throws Exception;

	// QNA 답변 작성
	public void write(QnaReplyVO vo) throws Exception;

	// QNA 답변 수정
	public void modify(QnaReplyVO vo) throws Exception;

	// QNA 답변 삭제
	public void delete(QnaReplyVO vo) throws Exception;
	
}
