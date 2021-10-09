package com.perfume.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.perfume.service.NoticeService;
import com.perfume.vo.NoticeViewVO;
import com.perfume.vo.PagingVO;


@Controller
@RequestMapping("/notice/*")
public class NoticeController {

	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	@Inject
	NoticeService service;
	
	// NOTICE 리스트 + 페이징(추가)
	@RequestMapping(value = "/noticeList", method = RequestMethod.GET)
	public void getList(Model model, PagingVO vo,
						@RequestParam(value="nowPage", required=false) String nowPage,
						@RequestParam(value="cntPerPage", required=false) String cntPerPage
						) throws Exception {
		logger.info("get noticeList");
		
		// 리스트 조회
		// empty parameter
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		List<NoticeViewVO> noticeList = service.noticeList(paramMap);
		
		
		// 페이징 처리
		// 페이지 총 개수
		int total = service.countNotice();
		
		// 페이징
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "5";
		}
		
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		// 리스트 조회 model
		model.addAttribute("noticeList", noticeList);
		// 페이징 처리 model
		model.addAttribute("paging", vo);
		model.addAttribute("viewAll", service.selectNotice(vo));
		
	}
	
	// NOTICE 작성 페이지로 이동
	@RequestMapping(value = "/noticeWrite", method = RequestMethod.GET)
	public void getNoticeWrite() throws Exception {
		logger.info("get noticeWrite");
	}
	
	// NOTICE 작성
	@RequestMapping(value = "/noticeWrite", method = RequestMethod.POST)
	public String postNoticeWrite(NoticeViewVO vo) throws Exception {
		logger.info("post noticeWrite");
		
		service.noticeWrite(vo);
		return "redirect:/notice/noticeList";
	}
	
	// NOTICE 상세 페이지 + 조회수 증가(추가)
	@RequestMapping(value = "/noticeDetail", method = RequestMethod.GET)
	public void postNoticeDetail(@RequestParam("nNum") int nNum, Model model) throws Exception {
		logger.info("get noticeDetail");
		
		// 조회수 증가
		service.viewCnt(nNum);
		
		NoticeViewVO vo = service.noticeDetail(nNum);
		
		model.addAttribute("noticeDetail", vo);
	}
	
	
	// NOTICE 수정(GET)
	@RequestMapping(value = "/noticeModify", method = RequestMethod.GET)
	public void getNoticeModify(@RequestParam("nNum") int nNum, Model model) throws Exception {
		logger.info("get noticeModify");
		
		NoticeViewVO vo = service.noticeDetail(nNum);
		
		model.addAttribute("noticeDetail", vo);
	}
	
	// NOTICE 수정(POST)
	@RequestMapping(value = "/noticeModify", method = RequestMethod.POST)
	public String postNoticeModify(NoticeViewVO vo) throws Exception {
		logger.info("post faqModify");
		
		service.noticeModify(vo);
		
		return "redirect:/notice/noticeDetail?nNum=" + vo.getnNum();
	}
	
	// NOTICE 삭제
	@RequestMapping(value = "/noticeDelete", method = RequestMethod.GET)
	public String getNoticeDelete(@RequestParam("nNum") int nNum) throws Exception {
		logger.info("get noticeDelete");
		
		service.noticeDelete(nNum);
		
		return "redirect:/notice/noticeList";
	}
}
