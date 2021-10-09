<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="True"%>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>24Hours</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/x-icon" href="/resources/img/24.png">

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
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

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
		<!-- Header Start -->
		<div class="header-area">
			<%@ include file="../include/header.jsp" %>
		</div>
		<!-- Header End -->
	</header>
	<main> <!-- Single Slider -->
		<!--? Hero Area Start-->
		<div class="slider-area ">
			<div class="single-slider slider-height2 d-flex align-items-center">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="hero-cap text-center">
								<h2 style="font-family: 'Noto Serif KR', serif;">문의&답변</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br> <br> 
		<section id="container">
			<div id="container_box" align="center">
				<div class="post" style="width: 70%;">
				
					<div class="user-block">
						<img class="img-circle img-bordered-sm" src="/resources/img/logo/logo.png" alt="user image">
						<hr style="border: solid 2px; color: #495057; ">
					</div>
					
					<div align="left" style="margin-left: 18px;">
						<span class="qDate" style="color: #000000; font-weight:bold; font-family: 'Noto Serif KR', serif;"><strong>${detail.qTitle }</strong></span>
					</div>
						<hr />
						
					<div align="left" style="margin-left: 18px;">
						<span class="mUserName" style="color: #777; font-weight:bold; font-family: 'Noto Serif KR', serif;">${detail.mUserName }</span>
						<a style="margin-left: 950px; font-weight:bold; font-family: 'Noto Serif KR', serif;">등록일 : </a>
						<span class="qDate" style="color: #777; font-weight:bold; font-family: 'Noto Serif KR', serif;"><fmt:formatDate value="${detail.qDate }" pattern="yyyy-MM-dd" /></span>
						<a style="margin-left: 50px; font-weight:bold; font-family: 'Noto Serif KR', serif;">댓글 : </a>
						<span class="qDate" style="color: #777; font-weight:bold; font-family: 'Noto Serif KR', serif;">${detail.reCnt }</span>
					</div>
					<hr>
					<div align="left" style="margin-left: 20px;">					
						<p style="font-family: 'Noto Serif KR', serif;">${detail.qCon }</p>
					</div>	
					<div style="margin-top: 340px;"></div>
					
					<!-- 답변 -->
					<h4>
						<span style="font-family: 'Noto Serif KR', serif; display:inline-block; width: 95%; text-align: left;"><Strong>☺ ັ 답글 확인 (${detail.reCnt })</Strong>
							<button type="button" class="genric-btn default radius float-right" onclick="location.href='/qna/qnaList' ">목 록</button>
						</span>
					</h4>
					<hr />
					<ul style="text-align: left;">
						<c:forEach items="${reply}" var="reply">
							<li>
								<div align="left" style="width: 70%; margin-left: 30px; font-family: 'Noto Serif KR', serif'">
									<span style='font-weight:bold; color: #ff3232; font-size:1.1em; font-family: Noto Serif KR, serif;'>${reply.mUserName}</span>&nbsp;&nbsp;
									<span class='date' style='color: #adb5bd;'><fmt:formatDate value="${reply.qrDate}" pattern="yyyy-MM-dd" /></span>
									<div class='replyContent' style="margin-left: 10px; margin-top: 20px; font-family: 'Noto Serif KR', serif;">${reply.qrCon }</div>
								</div>
							</li>
							<hr />
						</c:forEach>
					</ul>
				</div>
			</div>
		</section>
		<br /><br /><br /><br />
	</main>

	<footer>
		<div class="footer-area footer-padding">
			<%@ include file="../include/footer.jsp"%>
		</div>
	</footer>

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
</body>
</html>
