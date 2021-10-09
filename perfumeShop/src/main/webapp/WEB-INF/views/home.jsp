<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="True"%>
<html class="no-js" lang="zxx">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Perfume Shop</title>
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
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/css/flaticon.css">
	<link rel="stylesheet" href="resources/css/slicknav.css">
	<link rel="stylesheet" href="resources/css/animate.min.css">
	<link rel="stylesheet" href="resources/css/magnific-popup.css">
	<link rel="stylesheet" href="resources/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="resources/css/themify-icons.css">
	<link rel="stylesheet" href="resources/css/slick.css">
	<link rel="stylesheet" href="resources/css/nice-select.css">
	<link rel="stylesheet" href="resources/css/style.css">
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
					<img src="resources/img/logo/logo.png" alt="">
				</div>
			</div>
		</div>
	</div>

	<header>
		<div class="header-area">
			<%@ include file="./include/header.jsp" %>
		</div>
	</header>
	
	<main> 
	
		<!-- Single Slider -->
		<div class="container-fluid">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>
	
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<img src="resources/img/gallery/bg02.jpg" class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="resources/img/gallery/bg01.jpg" class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="resources/img/gallery/bg03.jpg" class="d-block w-100" alt="...">
					</div>
	
					<!-- 왼쪽 화살표 버튼 -->
					<!-- href는 carousel의 id를 가르킨다. -->
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <!-- 왼쪽 화살표 --> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					</a>
					<!-- 오른쪽 화살표 버튼 -->
					<!-- href는 carousel의 id를 가르킨다. -->
					<a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <!-- 오른쪽 화살표 --> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					</a>
				</div>
			</div>
		</div>


		<!-- slider Area End--> <!-- ? New Product Start -->
		<section class="new-product-area section-padding30">
			<div class="container-fluid">
				<!-- Section tittle -->
				<div class="row">
					<div class="col-xl-12">
						<div class="section-tittle mb-70" style="text-align: center">
							<h2 style="font-family: 'Noto Serif KR', serif; font-style: bold;">New Arrivals</h2>
							<p style="font-family: 'Noto Serif KR', serif;">새로 입고된 신상품</p>
							<br /><hr />
						</div>
					</div>
				</div>
	
				<!-- 새로 입고된 신상품 리스트 -->
				<div class="row">
					<c:forEach items="${list }" var="list" end="7">
						<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
							<div class="single-new-pro mb-30 text-center">
								<div class="product-img">
									<a href="/shop/view?n=${list.pNum }"> 
									<img src="${list.pImg }" width="230" height="auto" onerror="this.src='../resources/img/none.png'"></a>
								</div>
	
								<div class="popular-caption">
									<p style="font-family: 'Noto Serif KR', serif;">
										<Strong>${list.pCateName }<br> ${list.pName }
										</Strong>
									</p>
									<span><f:formatNumber pattern="###,###,###" value="${list.pPrice}" />원</span>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
	
	<!--? Video Area Start -->
		<div class="container-fluid">
		<div class="row align-items-center">
			<video muted autoplay loop>
				<source src="resources/videos/grass.mp4" type="video/mp4">
				<strong>Your browser does not support the video tag.</strong>
			</video>
		</div>
		<!-- Arrow -->
	</div>
	<!-- Video Area End --> <!--? Watch Choice  Start-->
	<div class="perfume-area section-padding30">
		<div class="container">
		
			<div class="row align-items-center justify-content-between padding-130">
				<div class="col-lg-5 col-md-6">
					<div class="perfume-details mb-40 nav nav-tabs">
						<h2 style="font-family: 'Noto Serif KR', serif;">CHANEL</h2>
						<p style="font-family: 'Noto Serif KR', serif;">
							2021년, 100년을 맞이한 유서 깊은 샤넬 N°5의 신선하면서도<br> 거부할 수 없는 매력의 매혹적이고
							아름다운 향기를 확인해 보세요.
						</p>
						<a href="shop/product#nav-chanel" class="btn">View Product</a>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-10">
					<div class="choice-perfume-img mb-40">
						<img src="resources/img/gallery/bg04.png" alt="">
					</div>
				</div>
			</div>
			
			<div class="row align-items-center justify-content-between padding-130">
				<div class="col-lg-6 col-md-6 col-sm-10">
					<div class="choice-perfume-img mb-40">
						<img src="resources/img/gallery/bg05.jpg" alt="">
					</div>
				</div>
				<div class="col-lg-5 col-md-6">
					<div class="perfume-details mb-40 nav nav-tabs">
						<h2 style="font-family: 'Noto Serif KR', serif; font-weight:bold;">JO MALONE</h2>
						<p style="font-family: 'Noto Serif KR', serif;">
							런던에서 온 부티끄 향수 앤 라이프 스타일 브랜드 <br>조말론에서 당신의 향을 연출해보세요.
						</p>
						<a href="shop/product" class="btn">View Product</a>
					</div>
				</div>
			</div>
			
			<div class="row align-items-center justify-content-between padding-130">
				<div class="col-lg-5 col-md-6">
					<div class="perfume-details mb-40 nav nav-tabs">
						<h2 style="font-family: 'Noto Serif KR', serif; font-weight:bold;">DIPTYQUE</h2>
						<p style="font-family: 'Noto Serif KR', serif;">프랑스의 향기브랜드
							딥디크의 기억을 환기시키는 독창적 향기와 디자인으로 니치와 럭셔리의 경계를 허문 향수들을 만나보세요.</p>
						<a href="shop/product" class="btn">View Product</a>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-10">
					<div class="choice-perfume-img mb-40">
						<img src="resources/img/gallery/bg07.jpg" alt="">
					</div>
				</div>
			</div>
			
			<div class="row align-items-center justify-content-between">
				<div class="col-lg-6 col-md-6 col-sm-10">
					<div class="choice-perfume-img mb-40">
						<img src="resources/img/gallery/bg06.jpg" alt="">
					</div>
				</div>
				<div class="col-lg-5 col-md-6">
					<div class="perfume-details mb-40 nav nav-tabs">
						<h2 style="font-family: 'Noto Serif KR', serif; font-weight:bold;">TOMFORD</h2>
						<p style="font-family: 'Noto Serif KR', serif;">
							톰포드만의 대담하고 센슈얼한 향기로 부드럽고 우아하게 또는 <br>강렬하고 과감하게 매력적이고 열정적인
							모습을 표현해보세요.
						</p>
						<a href="shop/product" class="btn">View Product</a>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- Watch Choice  End--> </main>
	<footer>
		<!-- Footer Start-->
		<div class="footer-area footer-padding">
			<%@ include file="./include/footer.jsp"%>
		</div>
		<!-- Footer End-->
	</footer>
	<!--? Search model Begin -->
	<div class="search-model-box">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-btn">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input"
					placeholder="Searching key.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

	<!-- JS here -->

	<script src="./resources/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="./resources/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="./resources/js/popper.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="./resources/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="./resources/js/owl.carousel.min.js"></script>
	<script src="./resources/js/slick.min.js"></script>

	<!-- One Page, Animated-HeadLin -->
	<script src="./resources/js/wow.min.js"></script>
	<script src="./resources/js/animated.headline.js"></script>
	<script src="./resources/js/jquery.magnific-popup.js"></script>

	<!-- Scrollup, nice-select, sticky -->
	<script src="./resources/js/jquery.scrollUp.min.js"></script>
	<script src="./resources/js/jquery.nice-select.min.js"></script>
	<script src="./resources/js/jquery.sticky.js"></script>

	<!-- contact js -->
	<script src="./resources/js/contact.js"></script>
	<script src="./resources/js/jquery.form.js"></script>
	<script src="./resources/js/jquery.validate.min.js"></script>
	<script src="./resources/js/mail-script.js"></script>
	<script src="./resources/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="./resources/js/plugins.js"></script>
	<script src="./resources/js/main.js"></script>


</body>
</html>
