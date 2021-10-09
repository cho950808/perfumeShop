package com.perfume.dao;

import java.util.List;

import com.perfume.vo.MemberVO;

public interface MemberDAO {

	// 회원 가입
	public void signup(MemberVO vo) throws Exception;

	// 로그인
	public MemberVO signin(MemberVO vo) throws Exception;
	
	// 비밀번호 변경
	public void PassUpdate(MemberVO vo) throws Exception;

	// 마이페이지 정보수정
	public void memberUpdate(MemberVO vo) throws Exception;

	// 회원 탈퇴
	public void memberDelete(MemberVO vo) throws Exception;

	// 아이디 체크
	public int idChk(MemberVO vo) throws Exception;

	// 패스워드 체크
	public int passChk(MemberVO vo) throws Exception;

	// 아이디 찾기
	public List<MemberVO> memberFindId(String mUserEmail) throws Exception;
	
	// 아이디 찾기 조회
	public int findIdCheck(String mUserEmail)throws Exception;
	
	// 패스워드 찾기
	public int memberFindPw(String mUserPass, String mUserEmail, String mUserId)throws Exception;
	
	// 패스워드 찾기 조회
	public int findPwCheck(MemberVO memberVO)throws Exception; 
}
