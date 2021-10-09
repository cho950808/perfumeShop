package com.perfume.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.perfume.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sql;

	// 매퍼
	private static String namespace = "memberMapper";

	// 회원 가입
	@Override
	public void signup(MemberVO vo) throws Exception {

		sql.selectList(namespace + ".signup", vo);
	}

	// 로그인
	@Override
	public MemberVO signin(MemberVO vo) throws Exception {
		return sql.selectOne(namespace + ".signin", vo);
	}

	// 비밀번호 변경
	@Override
	public void PassUpdate(MemberVO vo) throws Exception {
		sql.update(namespace + ".PassUpdate", vo);
	}
	
	// 마이페이지 정보수정
	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		sql.update(namespace + ".memberUpdate", vo);
	}

	// 회원탈퇴
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		sql.delete(namespace + ".memberDelete", vo);
	}

	// 아이디 체크
	@Override
	public int idChk(MemberVO vo) throws Exception {

		int result = sql.selectOne(namespace + ".idChk", vo);
		return result;
	}

	// 패스워드 체크
	@Override
	public int passChk(MemberVO vo) throws Exception {

		int result = sql.selectOne(namespace + ".passChk", vo);
		return result;
	}
	
	// 아이디 찾기
	@Override
	public List<MemberVO> memberFindId(String mUserEmail) throws Exception {
		
		return sql.selectList(namespace + ".memberFindId", mUserEmail);
	}
	
	// 아이디 찾기 조회
	@Override
	public int findIdCheck(String mUserEmail)throws Exception{
		return sql.selectOne(namespace + ".findIdCheck", mUserEmail);
	}

	// 비밀번호 찾기
	@Override
	public int memberFindPw(String mUserPass, String mUserEmail, String mUserId) throws Exception {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("mUserId", mUserId);
		map.put("mUserPass", mUserPass);
		map.put("mUserEmail", mUserEmail);
		return sql.update(namespace + ".memberFindPw", map);
	}
	
	// 비밀번호 찾기 조회
	@Override
	public int findPwCheck(MemberVO memberVO)throws Exception{
		return sql.selectOne(namespace + ".findPwCheck", memberVO);
	}
}