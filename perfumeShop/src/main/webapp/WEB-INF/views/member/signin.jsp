<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>24Hours</title>
	<!-- CSS -->
	<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="../resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="../resources/css/flaticon.css">
	<link rel="stylesheet" href="../resources/css/slicknav.css">
	<link rel="stylesheet" href="../resources/css/animate.min.css">
	<link rel="stylesheet" href="../resources/css/magnific-popup.css">
	<link rel="stylesheet" href="../resources/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="../resources/css/themify-icons.css">
	<link rel="stylesheet" href="../resources/css/slick.css">
	<link rel="stylesheet" href="../resources/css/nice-select.css">
	<link rel="stylesheet" href="../resources/css/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
	<link rel="shortcut icon" type="image/x-icon" href="/resources/img/24.png">
	
	<!--한글폰트 설정-->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Noto+Serif+KR:wght@200&display=swap">

</head>
<body>
	<!--? Preloader Start -->
	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img src="../resources/img/logo/logo.png" alt="">
				</div>
			</div>
		</div>
	</div>

	<header>
		<!-- Header Start -->
		<div class="header-area">
			<%@ include file="../include/header.jsp" %>
		</div>
		<!-- Header End -->
	</header>
	<main> <!-- Hero Area Start-->
	<div class="slider-area ">
		<div class="single-slider slider-height2 d-flex align-items-center">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="hero-cap text-center">
							<h2 style="font-family: 'Noto Serif KR', serif;" >로그인</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<section id="container">
		<div id="container_box">
			<section class="login_part section_padding ">
				<div class="container">
					<div class="row align-items-center">
					
						<div class="col-lg-6 col-md-6">
							<div class="col-lg-6 col-md-6">
								<div>
									<img src="../resources/img/LoginImg.png"  width="550px" height="600px" style="margin-left: auto; margin-right: auto; display: block;"/>
								</div>
							</div>
						
						</div>
						
						<div class="col-lg-6 col-md-6">
							<div class="login_part_form">
								<div class="login_part_form_iner">
									<h3 align="center">
										Welcome Back ! <br> Please Sign in now
									</h3>

									<form role="form" method="post" autocomplete="off">
										<div class="col-md-12 form-group p_star">
											<input type="text" id="mUserId" class="form-control"
												name="mUserId" required="required" value=""
												placeholder="아이디를 입력하세요" style="font-family: 'Noto Serif KR', serif;">
										</div>
										<div class="col-md-12 form-group p_star">
											<input type="password" id="mUserPass" name="mUserPass"
												required="required" class="form-control" value=""
												name="password" placeholder="비밀번호를 입력하세요" style="font-family: 'Noto Serif KR', serif;">
										</div>
										
										<c:if test="${msg == false}">
												<p style="color: #f00;" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이디와 비밀번호를 확인해주세요</p>
										</c:if>
										
										<div class="col-md-12 form-group">
											<div class="creat_account d-flex align-items-center">
												&nbsp;
												<input type="checkbox" id="idSaveCheck">&nbsp;<a style="font-family: 'Noto Serif KR', serif;">아이디 기억</a>&nbsp;
											</div>
											<button type="submit" value="submit" class="btn_3" style="font-family: 'Noto Serif KR', serif;">Login</button>
											<div align="center">
													<a href="/member/findIdView" style="font-family: 'Noto Serif KR', serif;">아이디 찾기</a>&nbsp;|
													<a href="/member/findPwView" style="font-family: 'Noto Serif KR', serif;">비밀번호 찾기</a>&nbsp;|
													<a href="/member/signup" style="font-family: 'Noto Serif KR', serif;">회원가입</a><br>
											</div>
										</div>
										</form>
										
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</section>
	</main>
	<footer>
		<div class="footer-area footer-padding">
			<%@ include file="../include/footer.jsp"%>
		</div>
	</footer>


	<!-- JS here -->

	<script src="./../resources/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="./../resources/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="./../resources/js/popper.min.js"></script>
	<script src="./../resources/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="./../resources/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="./../resources/js/owl.carousel.min.js"></script>
	<script src="./../resources/js/slick.min.js"></script>

	<!-- One Page, Animated-HeadLin -->
	<script src="./../resources/js/wow.min.js"></script>
	<script src="./../resources/js/animated.headline.js"></script>
	<script src="./../resources/js/jquery.magnific-popup.js"></script>

	<!-- Scrollup, nice-select, sticky -->
	<script src="./../resources/js/jquery.scrollUp.min.js"></script>
	<script src="./../resources/js/jquery.nice-select.min.js"></script>
	<script src="./../resources/js/jquery.sticky.js"></script>

	<!-- contact js -->
	<script src="./../resources/js/contact.js"></script>
	<script src="./../resources/js/jquery.form.js"></script>
	<script src="./../resources/js/jquery.validate.min.js"></script>
	<script src="./../resources/js/mail-script.js"></script>
	<script src="./../resources/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="./../resources/js/plugins.js"></script>
	<script src="./../resources/js/main.js"></script>

	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		 
	    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
	    var key = getCookie("key");
	    $("#mUserId").val(key); 
	     
	    if($("#mUserId").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
	        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
	    }
	     
	    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
	        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
	            setCookie("key", $("#mUserId").val(), 7); // 7일 동안 쿠키 보관
	        }else{ // ID 저장하기 체크 해제 시,
	            deleteCookie("key");
	        }
	    });
	     
	    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
	    $("#mUserId").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
	        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
	            setCookie("key", $("#mUserId").val(), 7); // 7일 동안 쿠키 보관
	        }
	    });
	});
	 
	function setCookie(cookieName, value, exdays){
	    var exdate = new Date();
	    exdate.setDate(exdate.getDate() + exdays);
	    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	    document.cookie = cookieName + "=" + cookieValue;
	}
	 
	function deleteCookie(cookieName){
	    var expireDate = new Date();
	    expireDate.setDate(expireDate.getDate() - 1);
	    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
	}
	 
	function getCookie(cookieName) {
	    cookieName = cookieName + '=';
	    var cookieData = document.cookie;
	    var start = cookieData.indexOf(cookieName);
	    var cookieValue = '';
	    
	    if(start != -1){
	        start += cookieName.length;
	        var end = cookieData.indexOf(';', start);
	        if(end == -1)end = cookieData.length;
	        cookieValue = cookieData.substring(start, end);
	    }
	    return unescape(cookieValue);
	}

	</script>
</body>
</html>