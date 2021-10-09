package com.perfume.dao;

import java.util.List;
import java.util.Map;

import com.perfume.vo.NoticeViewVO;
import com.perfume.vo.PagingVO;

public interface NoticeDAO {
	
	// 공지 리스트 조회
	public List<NoticeViewVO> noticeList(Map<String, Object> paramMap) throws Exception;

	// 공지 총 게시글 수
	public int countNotice() throws Exception;

	// 공지 페이징
	public Object selectNotice(PagingVO vo) throws Exception;

	// 공지 작성
	public void noticeWrite(NoticeViewVO vo) throws Exception;

	// 공지 상세 페이지
	public NoticeViewVO noticeDetail(int nNum) throws Exception;

	// 공지 수정
	public void noticeModify(NoticeViewVO vo) throws Exception;

	// 공지 삭제
	public void noticeDelete(int nNum) throws Exception;
	
	// 조회수 증가
	public int viewCnt(int nNum) throws Exception;
	
	// 공지사항 선택 삭제
	public void chkDelete(String no) throws Exception;
	
	
}
