package com.perfume.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;

import com.perfume.dao.MemberDAO;
import com.perfume.utils.MailUtils;
import com.perfume.utils.TempKey;
import com.perfume.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	@Autowired 
	private JavaMailSender mailSender; // 메일

	// 회원 가입
	@Override
	public void signup(MemberVO vo) throws Exception {
		dao.signup(vo);
	}

	// 로그인
	@Override
	public MemberVO signin(MemberVO vo) throws Exception {
		return dao.signin(vo);
	}

	// 로그아웃
	@Override
	public void signout(HttpSession session) throws Exception {
		session.invalidate(); // 세션 정보를 제거
	}

	// 비밀번호 변경
	@Override
	public void PassUpdate(MemberVO vo) throws Exception {
		dao.PassUpdate(vo);
	}
	
	// 마이페이지 정보수정
	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		dao.memberUpdate(vo);
	}

	// 회원 탈퇴
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		dao.memberDelete(vo);
	}

	// 아이디 체크
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = dao.idChk(vo);
		return result;
	}

	// 패스워드 체크
	@Override
	public int passChk(MemberVO vo) throws Exception {
		int result = dao.passChk(vo);
		return result;
	}

	// 아이디 찾기
	@Override
	public List<MemberVO> memberFindId(String mUserEmail) throws Exception {
		return dao.memberFindId(mUserEmail);
	}
	
	// 아이디 찾기 조회
	@Override
	public int findIdCheck(String mUserEmail)throws Exception{
		return dao.findIdCheck(mUserEmail);
	}

	// 패스워드 찾기
	@Override
	public void memberFindPw(String mUserEmail,String mUserId) throws Exception {
		String authkey = new TempKey().getKey(6,false);
		String mUserPass = BCrypt.hashpw(authkey,BCrypt.gensalt());
		 dao.memberFindPw(mUserPass, mUserEmail, mUserId);
		 MailUtils sendMail = new MailUtils(mailSender);
			sendMail.setSubject("임시 비밀번호 입니다."); //메일제목
			sendMail.setText(
					"<h1>임시비밀번호 발급</h1>" +
							"<br/>"+mUserId+"님 "+
							"<br/>비밀번호 찾기를 통한 임시 비밀번호입니다."+
							"<br/>임시비밀번호 :   <h2>"+authkey+"</h2>"+
							"<br/>로그인 후 비밀번호 변경을 해주세요."+
							"<a href='http://localhost:8080/member/signin"+
							">로그인 페이지</a>");
			sendMail.setTo(mUserEmail);
			sendMail.send();
	}
		
	// 비밀번호 찾기 조회
	@Override
	public int findPwCheck(MemberVO memberVO)throws Exception{
		return dao.findPwCheck(memberVO);
	}

}
