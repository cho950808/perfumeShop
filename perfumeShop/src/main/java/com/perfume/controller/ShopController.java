 package com.perfume.controller;

import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.perfume.service.MemberService;
import com.perfume.service.ShopService;
import com.perfume.vo.CartListVO;
import com.perfume.vo.CartVO;
import com.perfume.vo.CriteriaVO;
import com.perfume.vo.MemberVO;
import com.perfume.vo.OrderDetailVO;
import com.perfume.vo.OrderListVO;
import com.perfume.vo.OrderVO;
import com.perfume.vo.PageMakerVO;
import com.perfume.vo.ProductViewVO;
import com.perfume.vo.ReplyListVO;
import com.perfume.vo.ReplyVO;

@Controller
@RequestMapping("/shop/*")
public class ShopController {

	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);
	
	@Inject
	ShopService service;
	
	@Inject
	MemberService MemberService;
	
	@Autowired
	BCryptPasswordEncoder passEncoder;  // 비밀번호 암호화
	
	//파일 업로드
	@Resource(name = "uploadPath")
	private String uploadPath;
				
	//전체상품페이지
		@RequestMapping(value = "/product", method = RequestMethod.GET)
		public void getIndex(Model model) throws Exception {
			logger.info("get product"); 
			
			List<ProductViewVO> list = null;
			list = service.list();
			
			model.addAttribute("list", list);
		}
	
	// 상품 조회
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public void getView(@RequestParam("n") int pNum, Model model) throws Exception {
		logger.info("get view");
		
		ProductViewVO view = service.productView(pNum);
		model.addAttribute("view", view);
		
	}

	// 상품 소감(댓글) 작성
	@ResponseBody
	@RequestMapping(value = "/view/registReply", method = RequestMethod.POST)
	public void registReply(ReplyVO reply, HttpSession session, MultipartFile file) throws Exception {
		logger.info("regist reply");
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		reply.setmUserId(member.getmUserId());
		
		service.registReply(reply);
	}	
	
	// 상품 소감(댓글) 목록
	@ResponseBody
	@RequestMapping(value = "/view/replyList", method = RequestMethod.GET)
	public List<ReplyListVO> getReplyList(@RequestParam("n") int pNum) throws Exception {
		logger.info("get reply list");
				
		List<ReplyListVO> reply = service.replyList(pNum);
		
		return reply;
	}
	
	// 상품 소감(댓글) 삭제
	@ResponseBody
	@RequestMapping(value = "/view/deleteReply", method = RequestMethod.POST)
	public int getReplyList(ReplyVO reply,  HttpSession session) throws Exception {
		logger.info("post delete reply");

		// 정상작동 여부를 확인하기 위한 변수
		int result = 0;
		
		MemberVO member = (MemberVO)session.getAttribute("member");  // 현재 로그인한  member 세션을 가져옴
		String mUserId = service.idCheck(reply.getPrNum());  // 소감(댓글)을 작성한 사용자의 아이디를 가져옴
				
		// 로그인한 아이디와, 소감을 작성한 아이디를 비교
		if(member.getmUserId().equals(mUserId)) {
			
			// 로그인한 아이디가 작성한 아이디와 같다면
			
			reply.setmUserId(member.getmUserId());  // reply에 userId 저장
			service.deleteReply(reply);  // 서비스의 deleteReply 메서드 실행
			
			// 결과값 변경
			result = 1;
		}
		
		// 정상적으로 실행되면 소감 삭제가 진행되고, result값은 1이지만
		// 비정상적으로 실행되면 소감 삭제가 안되고, result값이 0
		return result;	
	}
	
	// 상품 소감(댓글) 수정
	@ResponseBody
	@RequestMapping(value = "/view/modifyReply", method = RequestMethod.POST)
	public int modifyReply(ReplyVO reply, HttpSession session) throws Exception {
		logger.info("modify reply");
		
		int result = 0;
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		String mUserId = service.idCheck(reply.getPrNum());
		
		if(member.getmUserId().equals(mUserId)) {
			
			reply.setmUserId(member.getmUserId());
			service.modifyReply(reply);
			result = 1;
		}
		
		return result;
		
	}	
		
	// 카트 담기
	@ResponseBody
	@RequestMapping(value = "/view/addCart", method = RequestMethod.POST)
	public int addCart(CartListVO cart, HttpSession session) throws Exception {
		
		int result = 0;
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member != null) {
			cart.setmUserId(member.getmUserId());
			service.addCart(cart);
			result = 1;
		}
		
		return result;
	}
		
	// 카트 목록
	@RequestMapping(value = "/cartList", method = RequestMethod.GET)
	public void getCartList(HttpSession session, Model model) throws Exception {
		logger.info("get cart list");
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		String mUserId = member.getmUserId();
		
		List<CartListVO> cartList = service.cartList(mUserId);
		
		model.addAttribute("cartList", cartList);
	}
	
	
	// 카트 삭제
	@ResponseBody
	@RequestMapping(value = "/deleteCart", method = RequestMethod.POST)
	public int deleteCart(HttpSession session, @RequestParam(value = "chbox[]") List<String> chArr, CartVO cart) throws Exception {
		logger.info("delete cart");
			
		MemberVO member = (MemberVO)session.getAttribute("member");
		String mUserId = member.getmUserId();
			
		int result = 0;
		int cartNum = 0;		
			
		// 로그인 여부 구분
		if(member != null) {
			cart.setmUserId(mUserId);
				
			for(String i : chArr) {  // 에이젝스에서 받은 chArr의 갯수만큼 반복
				cartNum = Integer.parseInt(i);  // i번째 데이터를 cartNum에 저장
				cart.setCartNum(cartNum);
				service.deleteCart(cart);
			}			
			result = 1;
		}		
		return result;		
	}

		
	/*
	 * // 장바구니
	 * 
	 * @RequestMapping(value = "/cartList", method = RequestMethod.POST) public
	 * String cartList(HttpSession session, OrderVO order, OrderDetailVO
	 * orderDetail) throws Exception { logger.info("post cartList");
	 * 
	 * MemberVO member = (MemberVO)session.getAttribute("member"); String mUserId =
	 * member.getmUserId();
	 * 
	 * order.setmUserId(mUserId);
	 * 
	 * return "redirect:/shop/order"; }
	 */
	
	/*
	 * // 주문 목록 (장바구니)
	 * 
	 * @RequestMapping(value = "/order", method = RequestMethod.GET) public void
	 * getorder(HttpSession session, Model model) throws Exception {
	 * logger.info("get order");
	 * 
	 * MemberVO member = (MemberVO)session.getAttribute("member"); String mUserId =
	 * member.getmUserId();
	 * 
	 * List<CartListVO> order = service.cartList(mUserId);
	 * 
	 * model.addAttribute("order", order); }
	 */
	
	// 주문
	@RequestMapping(value = "/cartList", method = RequestMethod.POST)
	public String order(HttpSession session, OrderVO order, OrderDetailVO orderDetail) throws Exception {
		logger.info("order");
			
		MemberVO member = (MemberVO)session.getAttribute("member");		
		String mUserId = member.getmUserId();
			
		// 캘린더 호출
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);  // 연도 추출
		String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);  // 월 추출
		String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));  // 일 추출
		String subNum = "";  // 랜덤 숫자를 저장할 문자열 변수
			
		for(int i = 1; i <= 6; i ++) {  // 6회 반복
			subNum += (int)(Math.random() * 10);  // 0~9까지의 숫자를 생성하여 subNum에 저장
		}
			
		String orderId = ymd + "_" + subNum;  // [연월일]_[랜덤숫자] 로 구성된 문자
			
		order.setOrderId(orderId);
		order.setmUserId(mUserId);
			
		service.orderInfo(order);
			
		orderDetail.setOrderId(orderId);			
		service.orderInfo_Details(orderDetail);
			
		// 주문 테이블, 주문 상세 테이블에 데이터를 전송하고, 카트 비우기
		service.cartAllDelete(mUserId);
			
		return "redirect:/shop/orderList";		
	}
	
	
	// 주문 내역
	@RequestMapping(value = "/orderList", method = RequestMethod.GET)
	public void getOrderList(HttpSession session, CriteriaVO cri, OrderVO order, Model model) throws Exception {
		logger.info("get order list");
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		String mUserId = member.getmUserId();
		
		order.setmUserId(mUserId);
		
		List<OrderVO> orderList = service.orderList(order);
		
		PageMakerVO pakeMaker = new PageMakerVO();
		pakeMaker.setCri(cri);
		pakeMaker.setTotalCount(service.orderListCount(order));
		
		model.addAttribute("orderList", orderList);
		model.addAttribute("pakeMaker", pakeMaker);
		model.addAttribute("Criteria", cri);
	}
	 
	// 주문 내역 상세
	@RequestMapping(value = "/orderView", method = RequestMethod.GET)
	public void getOrderList(HttpSession session,
							@RequestParam("n") String orderId,
							OrderVO order, Model model) throws Exception {
		logger.info("get order view");
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		String mUserId = member.getmUserId();
		
		order.setmUserId(mUserId);
		order.setOrderId(orderId);
		
		List<OrderListVO> orderView = service.orderView(order);
		
		model.addAttribute("orderView", orderView);
	}
	
	//오프라인샵 페이지
	@RequestMapping(value = "/offShop", method = RequestMethod.GET)
	public void getOffShop() throws Exception {
		logger.info("get OffShop"); 
	}
	

} 