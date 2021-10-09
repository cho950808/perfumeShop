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
	<link rel="stylesheet" href="/resources/css/qnaStyle.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

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
								<h2 style="font-family: 'Noto Serif KR', serif;">문의 작성</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--? Hero Area End-->

		<br /><br />
		
		<c:if test="${member == null }">
			<br /><br /><br /><br /><br /><br /><br />
                    <p style="font-family: 'Noto Serif KR', serif; font-size: 25px" align="center">글작성을 하시려면<a href="/member/signin" style="font-family: 'Noto Serif KR', serif;" > 로그인 </a>해주세요</p>
            <br /><br /><br /><br /><br /><br /><br />     
		</c:if>
		<c:if test="${member.mVerify >= 0}">
			<section id="container">
			<div id="container_box" align="center">
				<div class="post" style="width: 70%;">
                    	
                        <!-- to get an API token!-->
                        <form method="post" id="regForm" data-sb-form-api-token="API_TOKEN" autocomplete="off">
                            <!-- Name input-->
                            <div class="form-floating mb-3" align="left" style="margin-left: 250px; margin-right: 250px;">
                            	<label for="name" style="font-family: 'Noto Serif KR', serif;">제 목</label>
                                <input class="form-control" name="qTitle" id="qTitle" type="text" placeholder="제목을 입력하세요." data-sb-validations="required" style="font-family: 'Noto Serif KR', serif;"/>
                            </div>
                            <!-- Email address input-->
                            <div class="form-floating mb-3" align="left" style="margin-left: 250px; margin-right: 250px;">
                            	<label for="name" style="font-family: 'Noto Serif KR', serif;">작성자</label>
                                <input class="form-control" name="mUserName" id="mUserName" type="text" value="${member.mUserName}" data-sb-validations="required" style="font-family: 'Noto Serif KR', serif;" disabled />
                            </div>
                            <!-- Message input-->
                            <div class="form-floating mb-3" align="left" style="margin-left: 250px; margin-right: 250px;">
                            	<label for="message" style="font-family: 'Noto Serif KR', serif;">내 용</label>
                                <textarea class="form-control" name="qCon" id="qCon" type="text" placeholder="내용을 입력하세요." style="height: 10rem; font-family: 'Noto Serif KR', serif;" data-sb-validations="required" ></textarea>
                            </div>   
                            <div align="left" style="margin-left: 250px;">
                            	<input style="font-family: 'Noto Serif KR', serif;" type="submit" id="submit" class="btn btn-sm btn-primary" value="작 성"/>
                            </div>
                        </form>
                    </div>
                </div>
        	</section>
        </c:if>
		
		<br /><br /><br />
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
					<input type="text" id="search-input"
						placeholder="Searching key.....">
				</form>
			</div>
		</div>


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

	<script>
	$(document).ready(function() {
		$("#submit").on("click", function() {
			
			var st = ['qTitle','qCon'];
			var st2 = ['제목','내용'];
			
			// 제목, 내용 공백 검사
			for (i = 0; i < st.length; i++) {
				if ($("#"+st[i]).val() == "") {
					alert(st2[i]+"을 입력해주세요");
					$("#"+st[i]).focus();
					return false;
				}
			}
			
			$("#regForm").submit();
			alert("문의 글이 작성되었습니다.");
		});
	})
	</script>


</body>
</html>
