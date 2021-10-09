package com.perfume.controller;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.perfume.service.MemberService;
import com.perfume.vo.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	MemberService service;

	@Autowired
	BCryptPasswordEncoder passEncoder; // 비밀번호 암호화
	
	@Autowired 
	private JavaMailSender mailSender; // 메일
	 
	
	// 회원 가입 get
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public void getSignup() throws Exception {
		logger.info("get signup");

	}

	// 회원 가입 post
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String postSignup(MemberVO vo) throws Exception {
		logger.info("post signup");
		
		int result = service.idChk(vo);
		try {
			if (result == 1) {
				return "/member/signup";
				
			} else if (result == 0) {
				String inputPass = vo.getmUserPass();
				String pwd = passEncoder.encode(inputPass);
				vo.setmUserPass(pwd);

				service.signup(vo);
			}
			
			// 여기에서~ 입력된 아이디가 존재한다면 -> 다시 회원가입 페이지로 돌아가기
			// 존재하지 않는다면 -> signup
		} catch (Exception e) {
			
		}
		return "redirect:/";
	}
	
	// 이메일 인증
	@ResponseBody
	@RequestMapping(value = "/mailCheck", method = RequestMethod.GET)
	public String mailCheck(@RequestParam("mUserEmail") String mUserEmail) throws Exception{
		
	    int serti = (int)((Math.random()* (99999 - 10000 + 1)) + 10000);
	    
	    String from = "perfume@gmail.com";//보내는 이 메일주소
	    String to = mUserEmail;
	    String title = "회원가입시 필요한 인증번호 입니다.";
	    String content = "[인증번호] "+ serti +" 입니다. <br/> 인증번호 확인란에 기입해주십시오.";
	    String num = "";
	    try {
	    	MimeMessage mail = mailSender.createMimeMessage();
	        MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8");
	        
	        mailHelper.setFrom(from);
	        mailHelper.setTo(to);
	        mailHelper.setSubject(title);
	        mailHelper.setText(content, true);       
	        
	        mailSender.send(mail);
	        num = Integer.toString(serti);
	        
	    } catch(Exception e) {
	        num = "error";
	    }
	    return num;
	}

	// 로그인 get
	@RequestMapping(value = "/signin", method = RequestMethod.GET)
	public void getSignin() throws Exception {
		logger.info("get signin");
	}

	// 로그인 post
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String postSignin(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post signin");

		MemberVO login = service.signin(vo); // MemberVO형 변수 login에 로그인 정보를 저장
		HttpSession session = req.getSession(); // 현재 세션 정보를 가져옴

		boolean pwdMatch;
		if (login != null) {
			pwdMatch = passEncoder.matches(vo.getmUserPass(), login.getmUserPass());
		} else {
			pwdMatch = false;
		}

		if (login != null && pwdMatch == true) {
			session.setAttribute("member", login);
		} else {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/member/signin";
		}

		return "redirect:/";

	}

	// 로그아웃
	@RequestMapping(value = "/signout", method = RequestMethod.GET)
	public String signout(HttpSession session) throws Exception {
		logger.info("get logout");

		service.signout(session); // 세션 정보를 제거

		return "redirect:/";
	}

	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	public int idChk(MemberVO vo) throws Exception {
		int result = service.idChk(vo);
		return result;
	}

	// 패스워드 체크
	@ResponseBody
	@RequestMapping(value = "/passChk", method = RequestMethod.POST)
	public boolean passChk(MemberVO vo) throws Exception {

		MemberVO signin = service.signin(vo);
		boolean pwdChk = passEncoder.matches(vo.getmUserPass(), signin.getmUserPass());
		return pwdChk;
	}

	// 회원정보 수정 get
	@RequestMapping(value = "/myPageView", method = RequestMethod.GET)
	public void getmyPageView() throws Exception {
		logger.info("get myPageView");
		
	}
	

	// 회원정보 수정 post
	@RequestMapping(value = "/myPageView", method = RequestMethod.POST)
	public String postmyPageView(HttpSession session, MemberVO vo) throws Exception {
		logger.info("post myPageView");
		
		service.memberUpdate(vo);

		return "redirect:/";
	}
	
	// 비밀번호 변경 get
	@RequestMapping(value = "/PassChangeView", method = RequestMethod.GET)
	public void getPassChangeView() throws Exception {
		logger.info("get PassChangeView");

	}
	
	// 비밀번호 변경 post
	@RequestMapping(value = "/PassChangeView", method = RequestMethod.POST)
	public String PassChangeView(HttpSession session, MemberVO vo) throws Exception {
		logger.info("post PassChangeView");
		
		String inputPass = vo.getmUserPass();
		String pwd = passEncoder.encode(inputPass);
		vo.setmUserPass(pwd);
		
		service.PassUpdate(vo);

		session.invalidate();

		return "redirect:/member/signin";
	}

	// 회원 탈퇴 get
	@RequestMapping(value = "/memberDeleteView", method = RequestMethod.GET)
	public String memberDeleteView() throws Exception {
		logger.info("get memberDeleteView");
		
		return "member/memberDeleteView";

	}

	// 회원 탈퇴 post
	@RequestMapping(value = "/memberDelete", method = RequestMethod.POST)
	public String memberDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception {
		logger.info("post memberDelete");
		
		service.memberDelete(vo);

		session.invalidate();

		return "redirect:/";
	}
	
	
	
	// 아이디 찾기 get
	@RequestMapping(value="/findIdView", method=RequestMethod.GET) 
	public String findIdView() throws Exception{ 
		return"/member/findIdView"; 
	  
	}
	  
	// 아이디 찾기 post
	@RequestMapping(value="/findId", method=RequestMethod.POST)
	public String findId(MemberVO memberVO, Model model) throws Exception {
		logger.info("memberEmail"+memberVO.getmUserEmail());
					
		if(service.findIdCheck(memberVO.getmUserEmail())==0) {
				model.addAttribute("msg", "이메일을 확인해주세요");
				return "/member/findIdView";
		} else {
			model.addAttribute("find", service.memberFindId(memberVO.getmUserEmail()));
			return "/member/findId";
		}
	}
	
	// 비밀번호 찾기 get
	@RequestMapping(value="/findPwView" , method=RequestMethod.GET)
	public String findPwView() throws Exception {
		return"/member/findPwView";
	}
		
	// 비밀번호 찾기 post
	@RequestMapping(value="/findPw", method=RequestMethod.POST)
	public String findPw(MemberVO memberVO,Model model) throws Exception {
		logger.info("mUserPass"+memberVO.getmUserId());
		
		if(service.findPwCheck(memberVO)==0) {
			logger.info("mUserPass");
			model.addAttribute("msg", "아이디와 이메일를 확인해주세요");
			
			return "/member/findPwView";
		} else {
	
		service.memberFindPw(memberVO.getmUserEmail(),memberVO.getmUserId());
		model.addAttribute("find", memberVO.getmUserEmail());
		
		return"/member/findPw";
		}
	}
	

}