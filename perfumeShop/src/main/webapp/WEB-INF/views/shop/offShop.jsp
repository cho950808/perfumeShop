<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>24Hours</title>

	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/x-icon" href="/resources/img/24.png">
	
	<!-- Google Font -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap">
	
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
	
	<!-- Css Styles -->
	<link rel="stylesheet" href="/resources/css/order_bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="/resources/css/order_font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="/resources/css/order_style.css" type="text/css">
</head>

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
	<main> <!-- Hero Area Start-->
	
	<div class="slider-area ">
		<div class="single-slider slider-height2 d-flex align-items-center">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="hero-cap text-center">
							<h2 style="font-family: 'Noto Serif KR', serif;">찾아오시는 길</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Hero Area End--> <br />
	<br />

	<!-- Room Details Section Begin -->
	<section id="container">
		<div id="container_box">
			<div class="container" align="center" style="height: 600px; widows: 1000px;">
				<div class="post" style="width: 70%;">
					<div class="user-block">
						<img class="img-circle img-bordered-sm"
							src="/resources/img/logo/logo.png" alt="user image">
					</div>
				</div>
				<br /><hr /><br /><br />
				
				<div id="map" style="width: 500px; height: 400px; float: left; margin-right: auto; display: block;"></div>
				<div class="login_part_form_iner" style="float: none;">
					<br />
					<h3 style="font-family: 'Noto Serif KR', serif; font-weight:bold;">24HOURS 오시는 길</h3>
					<br /><br />

					<h5 style="font-family: 'Noto Serif KR', serif; font-weight:bold;">버스</h5>
					<br />
					<p style="font-family: 'Noto Serif KR', serif;">영등포 01 , 구로09 , 507 , 5634 , 5536</p>
					<br /><br />
					
					<h5 style="font-family: 'Noto Serif KR', serif; font-weight:bold;">지하철</h5>
					<br />
					<p style="font-family: 'Noto Serif KR', serif;">2호선 구로디지털단지역 2번, 3번 출구</p>
				</div>
				<br /><br /><br /><br /><hr />
			</div>
			<br /><br />
		</div>
	</section>
	<!-- Room Details Section End --> </main>

	<br /><br />

	<footer>
		<div class="footer-area footer-padding">
			<%@ include file="../include/footer.jsp"%>
		</div>
	</footer>

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
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b372530d0994ac95d63f108378117f6b"></script>
				<script>
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					mapOption = {
						center : new kakao.maps.LatLng(37.482033967241364,
								126.89817023908186), // 지도의 중심좌표
						level : 3
					// 지도의 확대 레벨
					};

					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

					// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
					var mapTypeControl = new kakao.maps.MapTypeControl();

					// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
					// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
					map.addControl(mapTypeControl,
							kakao.maps.ControlPosition.TOPRIGHT);

					// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
					var zoomControl = new kakao.maps.ZoomControl();
					map.addControl(zoomControl,
							kakao.maps.ControlPosition.RIGHT);

					// 마커가 표시될 위치입니다 
					var markerPosition = new kakao.maps.LatLng(
							37.482033967241364, 126.89817023908186);

					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
						position : markerPosition
					});

					// 마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map);

					var iwContent = '<div style="padding:5px;">24HOURS <br><a href="https://map.kakao.com/link/map/구트아카데미,37.482033967241364,126.89817023908186" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/구트아카데미,37.482033967241364,126.89817023908186" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
					iwPosition = new kakao.maps.LatLng(37.482033967241364,
							126.89817023908186); //인포윈도우 표시 위치입니다

					// 인포윈도우를 생성합니다
					var infowindow = new kakao.maps.InfoWindow({
						position : iwPosition,
						content : iwContent
					});

					// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
					infowindow.open(map, marker);
				</script>

</body>
</html>
