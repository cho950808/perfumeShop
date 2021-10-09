package com.perfume.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.perfume.service.QnaService;
import com.perfume.vo.CriteriaVO;
import com.perfume.vo.MemberVO;
import com.perfume.vo.PageMakerVO;
import com.perfume.vo.QnaReplyVO;
import com.perfume.vo.QnaViewVO;
import com.perfume.vo.SearchVO;

@Controller
@RequestMapping("/qna/*")
public class QnaController {

	private static final Logger logger = LoggerFactory.getLogger(QnaController.class);
	
	@Inject
	QnaService service;
	
	
	// QNA 작성 get
	@RequestMapping(value = "/qnaWrite", method = RequestMethod.GET)
	public void getQnaWrite() throws Exception {
		logger.info("get qnaWrite");
	}
	
	// QNA 작성 post
	@RequestMapping(value = "/qnaWrite", method = RequestMethod.POST)
	public String postQnaWrite(QnaViewVO vo, HttpSession session) throws Exception {
		logger.info("post qnaWrite");
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member != null) {
			vo.setmUserName(member.getmUserName());
			service.write(vo);
		}

		return "redirect:/qna/qnaList";
	}
	
	// QNA 상세페이지
	@RequestMapping(value = "/qnaDetail", method = RequestMethod.GET)
	public void getDetail(@RequestParam("qNum") int qNum, Model model) throws Exception {
		logger.info("get qnaDetail");
		
		QnaViewVO qna = service.detail(qNum);
		
		model.addAttribute("detail", qna);
		
		// 답변 조회
		List<QnaReplyVO> reply = null;
		
		reply = service.list(qNum);
		model.addAttribute("reply", reply);
		
	}
	
	// QNA 목록(페이징, 검색)
	@RequestMapping(value = "/qnaList", method = RequestMethod.GET)
	public void qnaList(@ModelAttribute("scri") SearchVO scri, CriteriaVO vo, Model model) throws Exception {
		logger.info("get qnaList");

		List<QnaViewVO> list = service.qnaList(scri);
		model.addAttribute("list", list);

		PageMakerVO pageMaker = new PageMakerVO();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.countSearch(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("Criteria", vo);
		model.addAttribute("countSearch", scri);
	}
	
}
