package com.perfume.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.perfume.dao.NoticeDAO;
import com.perfume.vo.NoticeViewVO;
import com.perfume.vo.PagingVO;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Inject
	private NoticeDAO dao;

	// 공지 리스트 조회
	@Override
	public List<NoticeViewVO> noticeList(Map<String, Object> paramMap) throws Exception {
		return dao.noticeList(paramMap);
	}

	// 공지 총 게시글 수
	@Override
	public int countNotice() throws Exception {
		return dao.countNotice();
	}

	// 공지 페이징
	@Override
	public Object selectNotice(PagingVO vo) throws Exception {
		return dao.selectNotice(vo);
	}

	// 공지 작성
	@Override
	public void noticeWrite(NoticeViewVO vo) throws Exception {
		dao.noticeWrite(vo);
	}

	// 공지 조회수 증가
	@Override
	public int viewCnt(int nNum) throws Exception {
		return dao.viewCnt(nNum);
	}

	// 공지 상세 페이지
	@Override
	public NoticeViewVO noticeDetail(int nNum) throws Exception {
		return dao.noticeDetail(nNum);
	}

	// 공지 수정
	@Override
	public void noticeModify(NoticeViewVO vo) throws Exception {
		dao.noticeModify(vo);
		
	}

	// 공지 삭제
	@Override
	public void noticeDelete(int nNum) throws Exception {
		dao.noticeDelete(nNum);
	}
	
	//공지사항 선택 삭제
	@Override
	public void chkDelete(String no) throws Exception {
		dao.chkDelete(no);
	}
}
