<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html class="no-js" lang="zxx">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>24Hours</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/x-icon" href="resources/img/24.png">

	<!--한글폰트 설정-->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Noto+Serif+KR:wght@200&display=swap">

	<!-- CSS here -->
	<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="/resources/css/flaticon.css">
	<link rel="stylesheet" href="/resources/css/slicknav.css">
	<link rel="stylesheet" href="/resources/css/animate.min.css">
	<link rel="stylesheet" href="/resources/css/magnific-popup.css">
	<link rel="stylesheet" href="/resources/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="/resources/css/themify-icons.css">
	<link rel="stylesheet" href="/resources/css/slick.css">
	<link rel="stylesheet" href="/resources/css/nice-select.css">
	<link rel="stylesheet" href="/resources/css/style.css">
	<link rel="stylesheet" href="/resources/css/order_style.css" type="text/css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
	
 <style>
      section#content ul li { margin:10px 0; padding:10px 0; /* border-bottom:1px solid #999; */ }
      section#content ul li img { width:250px; height:250px; }
      section#content ul li::after { content:""; display:block; clear:both; }
      section#content div.thumb { float:left; width:250px; }
      
      .delBtn { float:right; width:300px; text-align:right; }
      
      .checkBox { float:left;}
      .checkBox input {height:16px; }
      
      .listResult { padding:20px; background:#eee; }
      .listResult .sum { float:left; width:45%; font-size:22px; }
      
      .listResult .orderOpne { float:right; width:45%; text-align:right; }
      .listResult .orderOpne button { font-size:18px; padding:5px 10px; border:1px solid #999; background:#BDBDBD;}
      .listResult::after { content:""; display:block; clear:both; } 
      
      .orderInfo { border:5px solid #d6d6d64d; padding:20px; display:none;}
      .orderInfo .inputArea { margin:10px 0; }
      .orderInfo .inputArea label { display:inline-block; width:120px; margin-right:10px; }
      .orderInfo .inputArea input { font-size:14px; padding:5px; }
      #userAddr2, #userAddr3 { width:250px; }
      
      .orderInfo .inputArea:last-child { margin-top:30px; }
      .orderInfo .inputArea button { font-size:20px; padding:5px 10px; margin-right:20px;}
      
      .orderInfo .inputArea #userAddr1 { width:230px; }
      .orderInfo .inputArea #userAddr2 { width:280px; }
      .orderInfo .inputArea #userAddr3  { display:none; }
   </style>

</head>

   <body>
      <!--? Preloader Start -->
      <div id="preloader-active">
         <div
            class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
               <div class="preloader-circle"></div>
               <div class="preloader-img pere-text">
                  <img src="/resources/img/logo/logo.png" alt="">
               </div>
            </div>
         </div>
      </div>

      <header>
         <div class="header-area">
            <%@ include file="../include/header.jsp" %>
         </div>
</header>
<main>
      <!--? Hero Area Start-->
      <div class="slider-area ">
         <div class="single-slider slider-height2 d-flex align-items-center">
            <div class="container">
               <div class="row">
                  <div class="col-xl-12">
                     <div class="hero-cap text-center text-bold">
                        <h2 style="font-family: 'Noto Serif KR', serif;">장바구니</h2>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <br /><br /><br />
      <!-- 장바구니 -->
        <div class="container">
          <div class="cart_inner">
          
                   <!-- 삭제 -->
               <!-- 삭제 -->
               <div class="delBtn">
                     <button type="button" class="selectDelete_btn btn_1 checkout_btn_1" style="font-family: 'Noto Serif KR', serif;">선택 삭제</button>
                     </div>
                     
                  <br>
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr align="center">
                    <th scope="col"><input type="checkbox" name="allCheck" id="allCheck" /></th>
                    <th style="font-family: 'Noto Serif KR', serif;">상 품 명</th>
                    <th style="font-family: 'Noto Serif KR', serif;">가 격</th>
                    <th style="font-family: 'Noto Serif KR', serif;">구입수량</th>
                    <th style="font-family: 'Noto Serif KR', serif;">합 계</th>
                  </tr>
                </thead>
                <tbody>
                <c:set var="sum" value="0" />
                <c:forEach items="${cartList}" var="cartList">
                  <tr align="center">
                  
                     <!-- 체크박스 -->
                     <td width="7%">
                        <input type="checkbox" name="chBox" class="chBox" data-cartNum="${cartList.cartNum}" />
                    </td>
                    
                    <!-- 상품명 -->
                    <td width="40%">
                      <div class="media">
                      <div class="card card-solid">
                        <div style="width:30%;">
                         <img src="${cartList.pThumbImg}" width="160" height="155"/>
                        </div>
                        </div>
                        <div class="media-body">
                          <a style="font-family: 'Noto Serif KR', serif;">${cartList.pName}</a>
                        </div>
                      </div>
                    </td>
                    
                    <!-- 가격 -->
                    <td width="30%">
                    <a style="font-family: 'Noto Serif KR', serif;"><fmt:formatNumber pattern="###,###,###" value="${cartList.pPrice}" /> 원</a>
                    </td>
                    
                    <!-- 구입수량 -->
                    <td>
                      <div class="product_count">
                        <input class="input-number" type="text" value="${cartList.cartStock }" style="font-family: 'Noto Serif KR', serif;" disabled/>
                      </div>
                    </td>
                    
                    <!-- 합계 -->
                    <td width="20%">
                      <a style="font-family: 'Noto Serif KR', serif; text-align:right"><fmt:formatNumber pattern="###,###,###" value="${cartList.pPrice * cartList.cartStock}" /> 원</a>
                    </td>
                  </tr>                
               <%-- 반복할 때마다 sum에 상품 가격(pPrice)*상품 갯수(cartStock)만큼을 더함 --%>
               <c:set var="sum" value="${sum + (cartList.pPrice * cartList.cartStock)}" />
                  </c:forEach>
                </tbody>

              </table>
                 <div class="sum" style="float:right;">
               <a style="font-family: 'Noto Serif KR', serif;">총 합계 : <fmt:formatNumber pattern="###,###,###" value="${sum}" /> 원 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>
            
            <br>
            <hr />
               
              <div class="orderOpne">
                <button type="button" class="orderOpne_bnt btn_1 checkout_btn_1" style="font-family: 'Noto Serif KR', serif;">주문 정보 입력</button>
                
              </div>
              
            </div>
            
          </div>
          <table backgroundColor="red" border="1">
          <div class="orderInfo" align="left">
				<form role="form" method="post" autocomplete="off">
					<input type="hidden" name="amount" value="${sum}" />
						
					<!-- 수령인 -->
					<div class="inputArea">
						<label style="font-family: 'Noto Serif KR', serif;" for="">성 명</label>
						<input type="text" name="orderRec" id="orderRec" required="required" style="font-family: 'Noto Serif KR', serif;" value="${member.mUserName }" />
					</div>
					
					<!-- 수령인 연락처 -->
					<div class="inputArea">
						<label style="font-family: 'Noto Serif KR', serif;" for="orderPhon">연락처</label>
						<input type="text" name="orderPhon" id="orderPhon" required="required" style="font-family: 'Noto Serif KR', serif;" value="${member.mUserPhon }" />
					</div>
					
					<!-- 우편번호 -->
					<div class="inputArea">
						<p>
							<label style="font-family: 'Noto Serif KR', serif;" for="">주 소</label>
							<input style="font-family: 'Noto Serif KR', serif;" type="text" id="zipCode" placeholder="우편번호" readonly="readonly" >
							<input style="font-family: 'Noto Serif KR', serif;" type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기">
						</p>
						<p>
							<label></label>
							<input style="font-family: 'Noto Serif KR', serif;" type="text" name="userAddr1" id="userAddr1" placeholder="도로명 주소" readonly="readonly">
							<input style="font-family: 'Noto Serif KR', serif;" type="text" name="userAddr2" id="userAddr2" placeholder="상세주소" >
							<input style="font-family: 'Noto Serif KR', serif;" type="text" name="userAddr3" id="userAddr3" placeholder="참고항목" >
						</p>
						
						<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
						<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
						<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
						</div>
					</div>
					<div class="inputArea" align="right">
						<button type="submit" class="genric-btn info radius" style="font-family: 'Noto Serif KR', serif;">주문</button>
						<button type="button" class="genric-btn primary radius" id="cancel_btn" style="font-family: 'Noto Serif KR', serif;">취소</button>
					</div>
				</form>	
			</div>
          </table>
          </div>
          <br /><br /><br />
          
      <!-- 장바구니 끝-->

</main>

<footer>
   <div class="footer-area footer-padding">
      <%@ include file="../include/footer.jsp"%>
   </div>
</footer>
<!--? Search model Begin -->
<div class="search-model-box">
   <div class="h-100 d-flex align-items-center justify-content-center">
      <div class="search-close-btn">+</div>
      <form class="search-model-form">
         <input type="text" id="search-input" placeholder="Searching key.....">
      </form>
   </div>
</div>
<!-- Search model end -->

<!-- JS here -->
<script src="../resources/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="../resources/js/vendor/jquery-1.12.4.min.js"></script>
<script src="../resources/js/popper.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="../resources/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="../resources/js/owl.carousel.min.js"></script>
<script src="../resources/js/slick.min.js"></script>

<!-- One Page, Animated-HeadLin -->
<script src="../resources/js/wow.min.js"></script>
<script src="../resources/js/animated.headline.js"></script>
<script src="../resources/js/jquery.magnific-popup.js"></script>

<!-- Scrollup, nice-select, sticky -->
<script src="../resources/js/jquery.scrollUp.min.js"></script>
<script src="../resources/js/jquery.nice-select.min.js"></script>
<script src="../resources/js/jquery.sticky.js"></script>

<!-- contact js -->
<script src="../resources/js/contact.js"></script>
<script src="../resources/js/jquery.form.js"></script>
<script src="../resources/js/jquery.validate.min.js"></script>
<script src="../resources/js/mail-script.js"></script>
<script src="../resources/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->
<script src="../resources/js/plugins.js"></script>
<script src="../resources/js/main.js"></script>
<script src="/resources/jquery/jquery-3.3.1.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

	<script>
      $("#allCheck").click(function() {
         var chk = $("#allCheck").prop("checked");
         
         if (chk) {
            $(".chBox").prop("checked", true);
         } else {
            $(".chBox").prop("checked", false);
         }
      });
                     
      $(".selectDelete_btn").click(function() {
    	  var checkArr = new Array();
    	  
            // 체크된 체크박스의 갯수만큼 반복
            $("input[class='chBox']:checked").each(function() {
               checkArr.push($(this).attr("data-cartNum")); // 배열에 데이터 삽입
            });
            
            if (checkArr.length == 0){
                alert("선택된 상품이 없습니다.");
                return false;
             }
            
            else{
            var confirm_val = confirm("정말 삭제하시겠습니까?");
            $.ajax({
               url : "/shop/deleteCart",
               type : "post",
               data : {
                  chbox : checkArr
               },
               
               success : function(result) {

                  if (result == 1) {
                     location.href = "/shop/cartList";
                  } else {
                     alert("삭제 실패");
                  }
               }
            });
            }
      });
   </script>
   
   <script>
      // 우편번호 찾기 화면을 넣을 element
      var element_layer = document.getElementById('layer');

      function closeDaumPostcode() {
         // iframe을 넣은 element를 안보이게 한다.
         element_layer.style.display = 'none';
      }

      function sample2_execDaumPostcode() {
         new daum.Postcode({
                  oncomplete : function(data) {
                     // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                     // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                     // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                     var addr = data.roadAddress; // 주소 변수
                     var extraAddr = ''; // 참고항목 변수

                     	// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                     	
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                           extraAddr += data.bname;
                        }
                        
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if (data.buildingName !== '' && data.apartment === 'Y') {
                           extraAddr += (extraAddr !== '' ? ', '
                                 + data.buildingName : data.buildingName);
                        }
                        
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if (extraAddr !== '') {
                           extraAddr = ' (' + extraAddr + ')';
                        }
                        
                     	// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
    					if (addr !== '') {
    						addr += extraAddr;
    					}
 
                     // 우편번호와 주소 정보를 해당 필드에 넣는다.
                     document.getElementById('zipCode').value = data.zonecode;
                     document.getElementById("userAddr1").value = addr;
                     document.getElementById("userAddr3").value = extraAddr;
                          
                     
                     // 커서를 상세주소 필드로 이동한다.
                     document.getElementById("userAddr2").focus();

                     // iframe을 넣은 element를 안보이게 한다.
                     // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                     element_layer.style.display = 'none';
                  },
                  width : '100%',
                  height : '100%',
                  maxSuggestItems : 5
               }).embed(element_layer);

         // iframe을 넣은 element를 보이게 한다.
         element_layer.style.display = 'block';

         // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
         initLayerPosition();
      }

      // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
      // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
      // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
      function initLayerPosition() {
         var width = 850; //우편번호서비스가 들어갈 element의 width
         var height = 400; //우편번호서비스가 들어갈 element의 height
         var borderWidth = 3; //샘플에서 사용하는 border의 두께

         // 위에서 선언한 값들을 실제 element에 넣는다.
         element_layer.style.width = width + 'px';
         element_layer.style.height = height + 'px';
         element_layer.style.border = borderWidth + 'px solid';
         // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
         element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
               + 'px';
         element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
               + 'px';
      }
   </script>
   <script>
      $(".orderOpne_bnt").click(function() {
         $(".orderInfo").slideDown(); // $(".orderInfo")를 나타내고
         $(".orderOpne_bnt").slideUp(); // $(".orderOpne_bnt")를 숨김
      });
      
      $("#cancel_btn").click(function() {
         $(".orderInfo").slideUp(); // $(".orderInfo")를 숨기고
         $(".orderOpne_bnt").slideDown(); // $(".orderOpne_bnt")를 나타냄
      });
   </script>
</body>
</html>