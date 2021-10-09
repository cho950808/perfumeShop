package com.perfume.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.perfume.vo.MemberVO;

public class AdminInterceptor extends HandlerInterceptorAdapter {
//	특정 경로를 요청하여 컨트롤러에 접근하는 도중에 가로채서(interceptor) 그 전/후에 실행되는 기능	
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object obj) throws Exception {
		
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member == null) {
			res.sendRedirect("/member/signin");
			return false;
		}
		
		// 관리자 확인
		if(member.getmVerify() != 255) {
			res.sendRedirect("/");
			return false;
		}
		
		return true;
	}
	
}