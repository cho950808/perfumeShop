<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
			<%@ include file="../include/header.jsp"%>
		</div>
		<!-- Header End -->
	</header>
	<main>
		<!-- Hero Area Start-->
		<div class="slider-area ">
			<div class="single-slider slider-height2 d-flex align-items-center">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="hero-cap text-center">
								<h2 style="font-family: 'Noto Serif KR', serif;">아이디 찾기</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br>
		<div class="container" align="center" style="height: auto; widows: 1000px;">
				<div class="post" style="width: 70%;">
					<div class="user-block">
						<img class="img-circle img-bordered-sm"
							src="/resources/img/logo/logo.png" alt="user image">
					</div>
				</div>
				<hr />
						<div class="col-lg-6 col-md-6">
							<div class="login_part_form">
								<div class="login_part_form_iner">
								<div class="card o-hidden border-0 shadow-lg my-5">
									<div class="jumbotron">
										<h2 style="font-family: 'Noto Serif KR', serif; font-weight:bold;">등록된 아이디</h2>
										<br /> <hr />
											<ul>
												<c:forEach items="${find}" var="find">
													<li style="font-family: 'Noto Serif KR', serif;">${find.mUserId}</li>
													<br />
												</c:forEach>
											</ul>
											<hr />
										<button type="button" class="btn btn-primary" onclick="location.href='/member/signin'" style="font-family: 'Noto Serif KR', serif;">로그인</button>&nbsp;
										<button type="button" class="btn btn-primary" onclick="location.href='/member/findPwView'" style="font-family: 'Noto Serif KR', serif;">비밀번호 찾기</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr />
				</div>
		</main>
			<div style="height: auto;"></div>
	<footer>
		<div class="footer-area footer-padding">
			<%@ include file="../include/footer.jsp"%>
		</div>
	</footer>

	<!-- JS here -->
	<script src="./../resources/js/vendor/modernizr-3.5.0.min.js"></script>

	<!-- Jquery, Popper, Bootstrap -->
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
	
</body>
</html>