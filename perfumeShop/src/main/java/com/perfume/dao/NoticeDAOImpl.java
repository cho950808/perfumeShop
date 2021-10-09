package com.perfume.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.perfume.vo.NoticeViewVO;
import com.perfume.vo.PagingVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {
	
	@Inject
	private SqlSession sql;

	// 공지 리스트 조회
	@Override
	public List<NoticeViewVO> noticeList(Map<String, Object> paramMap) throws Exception {
		return sql.selectList("noticeMapper.noticeList", paramMap);
	}

	// 공지 총 게시글 개수
	@Override
	public int countNotice() throws Exception {
		return sql.selectOne("noticeMapper.countNotice");
	}

	// 공지 페이징
	@Override
	public List<NoticeViewVO> selectNotice(PagingVO vo) throws Exception {
		return sql.selectList("noticeMapper.selectNotice", vo);
	}

	// 공지 작성
	@Override
	public void noticeWrite(NoticeViewVO vo) throws Exception {
		sql.insert("noticeMapper.noticeWrite", vo);
	}

	// 공지 상세 페이지
	@Override
	public NoticeViewVO noticeDetail(int nNum) throws Exception {
		return sql.selectOne("noticeMapper.noticeDetail", nNum);
	}

	// 공지 수정
	@Override
	public void noticeModify(NoticeViewVO vo) throws Exception {
		sql.update("noticeMapper.noticeModify", vo);
	}

	// 공지 삭제
	@Override
	public void noticeDelete(int nNum) throws Exception {
		sql.delete("noticeMapper.noticeDelete", nNum);
	}

	// 조회수 증가
	@Override
	public int viewCnt(int nNum) throws Exception {
		return sql.update("noticeMapper.viewCnt", nNum);
	}
	
	// 공지사항 선택 삭제
	@Override
	public void chkDelete(String no) throws Exception {
		sql.delete("noticeMapper.chkDelete", no);
	}
	
}
