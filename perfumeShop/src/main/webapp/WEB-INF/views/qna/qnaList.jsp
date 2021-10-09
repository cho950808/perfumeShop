<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="True"%>
<html class="no-js" lang="zxx">
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
			<%@ include file="../include/header.jsp"%>
		</div>
		<!-- Header End -->
	</header>
	<main> <!--? Hero Area Start-->
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
	
	<!--? Hero Area End--> 
	<br /> <br />
		<div class="container" align="center" style="height: 600px; widows: 1000px;">
				<div class="post" style="width: 70%;">
					<div class="user-block">
						<img class="img-circle img-bordered-sm"
							src="/resources/img/logo/logo.png" alt="user image">
					</div>
				</div>
				<br /><hr /><br />
				<div>
					<h4 style="font-family: 'Noto Serif KR', serif; font-weight:bold;"> 고객센터 : 02 - 837 - 9922</h4>
					<a style="font-family: 'Noto Serif KR', serif;">상담시간 : AM 9:30 - PM 18:30 / 점심시간 : 13:30 - 14:30</a> 
				</div>
		<div id="container_box" class="container">
			<br />
			<table class="table table-striped">
				<tr align="center" style="font-family: 'Noto Serif KR', serif;">
					<th style="font-family: 'Noto Serif KR', serif;">문의번호</th>
					<th width="50%" style="font-family: 'Noto Serif KR', serif;">문의제목</th>
					<th style="font-family: 'Noto Serif KR', serif;">작성자</th>
					<th style="font-family: 'Noto Serif KR', serif;">등록날짜</th>
				</tr>
				<c:forEach items="${list}" var="list">
					<tr align="center" style="font-family: 'Noto Serif KR', serif;">
						<td>${list.qNum}</td>
						<td width="35%" style="font-weight: bold;">
							<a href="/qna/qnaDetail?qNum=${list.qNum}" style="color: black;">${list.qTitle}</a>
								<c:if test="${list.reCnt > 0}">
									<span> [${list.reCnt}]</span>
								</c:if>
							</td>
						<td>${list.mUserName}</td>
						<td><fmt:formatDate value="${list.qDate}" pattern="yyyy-MM-dd" /></td>
					</tr>
				</c:forEach>
			</table>
			
			<!-- 글작성 -->
			<div>
				<button type="button" class="selectDelete_btn btn_1 checkout_btn_1"
					style="font-family: 'Noto Serif KR', serif; float: right;"
					onclick="location.href='/qna/qnaWrite'">글쓰기</button>
				<br /><br />
			</div>
			
			<br /><br /><br />

				<!-- 페이징 -->
				<div style="width: 100%; margin-right: auto;">
					<ul class="pagination pagination-sm m-0 float-right">
						<c:if test="${pageMaker.prev}">
							<li><a class="page-link" href="qnaList${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
						</c:if>

						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="p">
							<c:choose>

								<c:when test="${p == Criteria.page }">
									<b><a class="page-link">${p }</a></b>
								</c:when>

								<c:when test="${p != Criteria.page }">
									<li class="page-item"><a class="page-link" href="qnaList${pageMaker.makeSearch(p)}">${p}</a></li>
								</c:when>

							</c:choose>
						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li><a class="page-link" href="qnaList${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a></li>
						</c:if>
					</ul>

					<!-- 검색 -->
					<div class="form-group row justify-content-center">
						<div class="w100" style="padding-right: 10px">
							<select name="searchType" class="form-control form-control-sm">
								<option value="t" class="m-2"
									<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
								<option value="w"
									<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
								<option value="tw"
									<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
							</select>
						</div>
						<div class="w350" style="padding-right: 10px">
							<input class="form-control form-control-sm" type="text" name="keyword" id="keywordInput" value="${scri.keyword}" />
						</div>
						<button class="btn btn-sm btn-primary" id="searchBtn">검색</button>
					</div>
					<br /> <hr />
				</div>
			</div>
		</div>
	</main>
	<div style="height: 200px;"></div>

	<footer>
		<!-- Footer Start-->
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
	<script src="/resources/jquery/jquery-3.3.1.min.js"></script>
	
</body>
</html>
