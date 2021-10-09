package com.perfume.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.perfume.service.AdminService;
import com.perfume.service.NoticeService;
import com.perfume.service.QnaService;
import com.perfume.utils.UploadFileUtils;
import com.perfume.vo.CategoryVO;
import com.perfume.vo.CriteriaVO;
import com.perfume.vo.MemberVO;
import com.perfume.vo.NoticeViewVO;
import com.perfume.vo.OrderListVO;
import com.perfume.vo.OrderVO;
import com.perfume.vo.PageMakerVO;
import com.perfume.vo.PagingVO;
import com.perfume.vo.ProductVO;
import com.perfume.vo.ProductViewVO;
import com.perfume.vo.QnaReplyVO;
import com.perfume.vo.QnaViewVO;
import com.perfume.vo.ReplyListVO;
import com.perfume.vo.ReplyVO;
import com.perfume.vo.SearchVO;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

   private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
   
   @Inject // = Autowired
   AdminService adminService;
   
   @Inject
   QnaService qnaService;
   
   @Inject
   NoticeService noticeService;
   
   // 파일 업로드
   @Resource(name="uploadPath")
   private String uploadPath;
   
   // 관리자화면
   @RequestMapping(value = "/index", method = RequestMethod.GET)
   public void getIndex(@ModelAttribute("scri") SearchVO scri, Model model) throws Exception {
      logger.info("get index"); 
    
      	// 회원 수
      	PageMakerVO member = new PageMakerVO(); 
        member.setCri(scri);
        member.setTotalCount(adminService.memberListCount(scri));
        model.addAttribute("memberList", member);
        
        // 상품 수
        PageMakerVO product = new PageMakerVO();
        product.setCri(scri);
        product.setTotalCount(adminService.listCount(scri));
        model.addAttribute("productList", product);
        
	    // 주문 목록 수
        PageMakerVO orderList = new PageMakerVO();
        orderList.setCri(scri);
        orderList.setTotalCount(adminService.orderListCount(scri));
		model.addAttribute("orderList", orderList);
        
        // 문의 수
        PageMakerVO qna = new PageMakerVO();
        qna.setCri(scri);
        qna.setTotalCount(qnaService.countSearch(scri));
		model.addAttribute("qnaList", qna);
		
        // 댓글 수
        PageMakerVO allReply = new PageMakerVO();
        allReply.setCri(scri);
        allReply.setTotalCount(adminService.allReplyCount(scri));
		model.addAttribute("allReplyList", allReply);
	
      
   }

	// 회원 목록
	@RequestMapping(value = "/member/memberList", method = RequestMethod.GET)
	public void getMemberList(@ModelAttribute("scri") SearchVO scri, CriteriaVO vo, Model model) throws Exception {
		logger.info("memberlist");
		
		List<MemberVO> list = adminService.memberList(scri);
		model.addAttribute("memberList", list);

		PageMakerVO pageMaker = new PageMakerVO();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(adminService.memberListCount(scri));
				
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("Criteria", vo);
		model.addAttribute("memberListCount", scri);
	}
	

   
   // 상품 등록
   @RequestMapping(value = "/product/register", method = RequestMethod.GET)
   public void getProductRegister(Model model) throws Exception {
      logger.info("get product register");
      
      List<CategoryVO> category = null;  // CatagoryVO 형태의 List형 변수 category 선언
      category = adminService.category();  // DB에 저장된 카테고리를 가져와서 category에 저장
      model.addAttribute("category", JSONArray.fromObject(category));  // 변수 category를 제이슨(json)타입으로 변환하여 category 세션에 부여
   }

   
   // 상품 등록
   @RequestMapping(value = "/product/register", method = RequestMethod.POST)
   public String postProductRegister(ProductVO vo, MultipartFile file) throws Exception {
      
      String imgUploadPath = uploadPath + File.separator + "imgUpload";  // 이미지를 업로드할 폴더를 설정 = /uploadPath/imgUpload 
      String ymdPath = UploadFileUtils.calcPath(imgUploadPath);  // 위의 폴더를 기준으로 연월일 폴더를 생성
      String fileName = null;  // 기본 경로와 별개로 작성되는 경로 + 파일이름
            
      if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
         // 파일 인풋박스에 첨부된 파일이 없다면(=첨부된 파일이 이름이 없다면)
         
         fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
   
         // pImg에 원본 파일 경로 + 파일명 저장
         vo.setpImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
         // pThumbImg에 썸네일 파일 경로 + 썸네일 파일명 저장
         vo.setpThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
         
      } else {  // 첨부된 파일이 없으면
         fileName = File.separator + "img" + File.separator + "none.png";
         // 미리 준비된 none.png파일을 대신 출력함
         
         vo.setpImg(fileName);
         vo.setpThumbImg(fileName);
      }
                           
      adminService.register(vo);
      
      return "redirect:/admin/index";
   }
        
   // 상품 목록 (페이징)
   @RequestMapping(value = "/product/list", method = RequestMethod.GET)
   public void getProductList(@ModelAttribute("scri") SearchVO scri, CriteriaVO vo, Model model) throws Exception {
	   		logger.info("get product list");
      
	
		List<ProductViewVO> list = adminService.productList(scri);
		model.addAttribute("list", list);
	
		PageMakerVO pageMaker = new PageMakerVO();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(adminService.listCount(scri));
				
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("Criteria", vo);
		model.addAttribute("listCount", scri);
   }
  

   // 상품 조회
   @RequestMapping(value = "/product/view", method = RequestMethod.GET)
   public void getProductView(@RequestParam("n") int pNum, Model model) throws Exception {
      logger.info("get product view");
      
      ProductViewVO product = adminService.productView(pNum);
      model.addAttribute("product", product);
   }
   
   // 상품 수정 
   @RequestMapping(value = "/product/modify", method = RequestMethod.GET)
   public void getProductModify(@RequestParam("n") int pNum, Model model) throws Exception {
   // @RequestParam("n")으로 인해, URL주소에 있는 n의 값을 가져와 pNum에 저장
      
      logger.info("get product modify");
      
      ProductViewVO product = adminService.productView(pNum);  // ProductViewVO형태 변수 product에 상품 정보 저장
      model.addAttribute("product", product);
      
      List<CategoryVO> category = null;
      category = adminService.category();
      model.addAttribute("category", JSONArray.fromObject(category));
   }
   
   // 상품 수정
   @RequestMapping(value = "/product/modify", method = RequestMethod.POST)
   public String postProductModify(ProductVO vo, MultipartFile file, HttpServletRequest req) throws Exception {
      logger.info("post product modify");
   
      // 새로운 파일이 등록되었는지 확인
      if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
         // 기존 파일을 삭제
         new File(uploadPath + req.getParameter("pImg")).delete();
         new File(uploadPath + req.getParameter("pThumbImg")).delete();
         
         // 새로 첨부한 파일을 등록
         String imgUploadPath = uploadPath + File.separator + "imgUpload";
         String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
         String fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
         
         vo.setpImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
         vo.setpThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
         
      } else {  // 새로운 파일이 등록되지 않았다면
         // 기존 이미지를 그대로 사용
         vo.setpImg(req.getParameter("pImg"));
         vo.setpThumbImg(req.getParameter("pThumbImg"));
         
      }
      
      adminService.productModify(vo);
      
      return "redirect:/admin/index";
   }
   
   // 상품 삭제
   @RequestMapping(value = "/product/delete", method = RequestMethod.POST)
   public String postProductDelete(@RequestParam("n") int pNum) throws Exception {
      logger.info("post product delete");
   
      adminService.productDelete(pNum);
      
      return "redirect:/admin/index";
   }
   
   // CK 에디터에서 파일 업로드
   @RequestMapping(value = "/product/ckUpload", method = RequestMethod.POST)
   public void postCKEditorImgUpload(HttpServletRequest req,
                             HttpServletResponse res,
                             @RequestParam MultipartFile upload) throws Exception {
      logger.info("post CKEditor img upload");
      
      // 랜덤 문자 생성
      UUID uid = UUID.randomUUID();
      
      OutputStream out = null;
      PrintWriter printWriter = null;
            
      // 인코딩
      res.setCharacterEncoding("utf-8");
      res.setContentType("text/html;charset=utf-8");
      
      try {
         
         String fileName = upload.getOriginalFilename();  // 파일 이름 가져오기
         byte[] bytes = upload.getBytes();
         
         // 업로드 경로
         String ckUploadPath = uploadPath + File.separator + "ckUpload" + File.separator + uid + "_" + fileName;
         
         out = new FileOutputStream(new File(ckUploadPath));
         out.write(bytes);
         out.flush();  // out에 저장된 데이터를 전송하고 초기화
         
         String callback = req.getParameter("CKEditorFuncNum");
         printWriter = res.getWriter();
         String fileUrl = "/ckUpload/" + uid + "_" + fileName;  // 작성화면
         
         // 업로드시 메시지 출력
         printWriter.println("<script type='text/javascript'>"
                  + "window.parent.CKEDITOR.tools.callFunction("
                  + callback+",'"+ fileUrl+"','이미지를 업로드하였습니다.')"
                  +"</script>");
         
         printWriter.flush();
         
      } catch (IOException e) { e.printStackTrace();
      } finally {
         try {
            if(out != null) { out.close(); }
            if(printWriter != null) { printWriter.close(); }
         } catch(IOException e) { e.printStackTrace(); }
      } 
      
      return;   
   }
   
   // 모든 소감(댓글)
   @RequestMapping(value = "/shop/allReply", method = RequestMethod.GET)
   public void getAllReply(@ModelAttribute("scri") SearchVO scri, CriteriaVO vo, Model model) throws Exception {
      logger.info("get all reply");
            
      List<ReplyListVO> reply = adminService.allReply(scri);
      model.addAttribute("allReply", reply);
      
      PageMakerVO pageMaker = new PageMakerVO();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(adminService.allReplyCount(scri));
				
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("Criteria", vo);
		model.addAttribute("allReplyCount", scri);
   }

   // 모든 소감(댓글)
   @RequestMapping(value = "/shop/allReply", method = RequestMethod.POST)
   public String postAllReply(ReplyVO reply) throws Exception {
      logger.info("post all reply");
            
      adminService.deleteReply(reply.getPrNum());
      
      return "redirect:/admin/shop/allReply";
   }  
   
   // 주문 목록 (페이징)
   @RequestMapping(value = "/shop/orderList", method = RequestMethod.GET)
   public void getOrderList(@ModelAttribute("scri") SearchVO scri, CriteriaVO vo, Model model) throws Exception {
      logger.info("get order list");
 
     List<OrderVO> list = adminService.orderList(scri);
     model.addAttribute("orderList", list);

	 PageMakerVO pageMaker = new PageMakerVO();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(adminService.orderListCount(scri));
				
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("Criteria", vo);
		model.addAttribute("orderListCount", scri);
   }
    
   // 주문 상세 목록
   @RequestMapping(value = "/shop/orderView", method = RequestMethod.GET)
   public void getOrderList(@RequestParam("n") String orderId,
                     OrderVO order, Model model) throws Exception {
      logger.info("get order view");
      
      order.setOrderId(orderId);      
      List<OrderListVO> orderView = adminService.orderView(order);
      
      model.addAttribute("orderView", orderView);
   }
   
   // 주문 상세 목록 - 상태 변경
   @RequestMapping(value = "/shop/orderView", method = RequestMethod.POST)
   public String delivery(OrderVO order) throws Exception {
      logger.info("post order view");
            
      adminService.delivery(order);
      
      // 새로운 Service → DAO → Mapper 를 사용하지 않고, 기존에 있던 Service를 사용
      List<OrderListVO> orderView = adminService.orderView(order);   
      
      // 생성자 사용
      ProductVO product = new ProductVO();
            
      for(OrderListVO i : orderView) {
         product.setpNum(i.getpNum());
         product.setpStock(i.getCartStock());
         adminService.changeStock(product);
      }
   
      return "redirect:/admin/shop/orderView?n=" + order.getOrderId();
   }
   
   	// QNA 목록(페이징, 검색)
	@RequestMapping(value = "/qna/qnaList", method = RequestMethod.GET)
	public void qnaList(@ModelAttribute("scri") SearchVO scri, CriteriaVO vo, Model model) throws Exception {
		logger.info("get qnaList");

		List<QnaViewVO> list = qnaService.qnaList(scri);
		model.addAttribute("list", list);

		PageMakerVO pageMaker = new PageMakerVO();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(qnaService.countSearch(scri));
				
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("Criteria", vo);
		model.addAttribute("countSearch", scri);
		
		
	} 
   
   // QNA 선택삭제
    @RequestMapping(value = "/qna/delete", method = RequestMethod.POST)
    public String qnaDelete(HttpServletRequest request) throws Exception {
            
        String[] ajaxMsg = request.getParameterValues("valueArr");
        int size = ajaxMsg.length;
        for(int i=0; i<size; i++) {
           qnaService.delete(ajaxMsg[i]);
        }
        return "redirect:/admin/qna/qnaList";
    }
    
   // QNA 작성 get
   @RequestMapping(value = "/qna/qnaWrite", method = RequestMethod.GET)
   public void getQnaWrite() throws Exception {
      logger.info("get qnaWrite");
   }
    
   // QNA 작성 post
   @RequestMapping(value = "/qna/qnaWrite", method = RequestMethod.POST)
   public String postQnaWrite(QnaViewVO vo) throws Exception {
      logger.info("post qnaWrite");
      
      qnaService.write(vo);
      return "redirect:/admin/qna/qnaList";
   }
    
   // QNA 상세페이지
   @RequestMapping(value = "/qna/qnaDetail", method = RequestMethod.GET)
   public void getDetail(@RequestParam("qNum") int qNum, Model model) throws Exception {
      logger.info("get qnaDetail");
      
      QnaViewVO vo = qnaService.detail(qNum);
      
      model.addAttribute("detail", vo);
      
      // 답변 조회
      List<QnaReplyVO> reply = null;
      reply = qnaService.list(qNum);
      model.addAttribute("reply", reply);
   }
     
	// QNA 답변 작성
	@RequestMapping(value = "/qna/qnaReplyWrite", method = RequestMethod.POST)
	public String postQnaReplyWirte(QnaReplyVO vo, HttpSession session) throws Exception {
		logger.info("post qnaReplyWrite");
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member != null) {
			vo.setmUserName(member.getmUserName());
			qnaService.write(vo);
		}
		
		return "redirect:/admin/qna/qnaDetail?qNum=" + vo.getqNum();
	}
   
	
	// 공지사항 리스트 (페이징 , 검색)
	@RequestMapping(value = "/notice/noticeList", method = RequestMethod.GET)
	public void getNoticeList(Model model, PagingVO vo,
						@RequestParam(value="nowPage", required=false) String nowPage,
						@RequestParam(value="cntPerPage", required=false) String cntPerPage
						) throws Exception {
		logger.info("get noticeList");
		
		System.out.println(vo);
		// 리스트 조회
		// empty parameter
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		List<NoticeViewVO> noticeList = noticeService.noticeList(paramMap);
		
		
		// 페이징 처리
		// 페이지 총 개수
		int total = noticeService.countNotice();
		
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
		model.addAttribute("viewAll", noticeService.selectNotice(vo));
		
	}
	
	// 공지사항 작성(GET)
	@RequestMapping(value = "/notice/noticeWrite", method = RequestMethod.GET)
	public void getNoticeWrite() throws Exception {
		logger.info("get noticeWrite");
	}
	
	// 공지사항 작성(POST)
	@RequestMapping(value = "/notice/noticeWrite", method = RequestMethod.POST)
	public String postNoticeWrite(NoticeViewVO vo, HttpSession session) throws Exception {
		logger.info("post noticeWrite");
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member != null) {
			vo.setmUserName(member.getmUserName());
			noticeService.noticeWrite(vo);
		}

		
		return "redirect:/admin/notice/noticeList";
	}
	
	// 공지사항 상세 페이지(조회수)
	@RequestMapping(value = "/notice/noticeDetail", method = RequestMethod.GET)
	public void postNoticeDetail(@RequestParam("nNum") int nNum, Model model) throws Exception {
		logger.info("get noticeDetail");
		
		// 조회수 증가
		noticeService.viewCnt(nNum);
		
		NoticeViewVO vo = noticeService.noticeDetail(nNum);
		
		model.addAttribute("noticeDetail", vo);
	}
	
	
	// 공지사항 수정(GET)
	@RequestMapping(value = "/notice/noticeModify", method = RequestMethod.GET)
	public void getNoticeModify(@RequestParam("nNum") int nNum, Model model) throws Exception {
		logger.info("get noticeModify");
		
		NoticeViewVO vo = noticeService.noticeDetail(nNum);
		
		model.addAttribute("noticeDetail", vo);
	}
	
	   
	// 공지사항 수정(POST)
	@RequestMapping(value = "/notice/noticeModify", method = RequestMethod.POST)
	public String postNoticeModify(NoticeViewVO vo, HttpSession session) throws Exception {
		logger.info("post faqModify");
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member != null) {
			vo.setmUserName(member.getmUserName());
			noticeService.noticeModify(vo);
		}
		
		return "redirect:/admin/notice/noticeDetail?nNum=" + vo.getnNum();
	}
	
	
	// 공지사항 삭제
	@RequestMapping(value = "/notice/noticeDelete", method = RequestMethod.POST)
	public String postNoticeDelete(@RequestParam("nNum") int nNum) throws Exception {
		logger.info("post noticeDelete");
		
		noticeService.noticeDelete(nNum);
		
		return "redirect:/admin/notice/noticeList";
	}
	
	
	// 공지사항 선택 삭제(체크박스)
	@RequestMapping(value = "/notice/noticeChkDelete", method = RequestMethod.POST)
    public String noticeChkDelete(HttpServletRequest request) throws Exception {
		logger.info("post amdin noticeChkDelete");    
		
        String[] ajaxMsg = request.getParameterValues("valueArr");
        int size = ajaxMsg.length;
        
        for(int i=0; i<size; i++) {
        	logger.info("ajaxMsg :: {}", ajaxMsg[i]);
        	
           noticeService.chkDelete(ajaxMsg[i]);
        }
        return "redirect:/admin/notice/noticeList";
    }
	
}