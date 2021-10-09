<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="True"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
	<main>
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
		<br><br><br><br>

	<section id="container">

		<!-- 한 번에 조회할 페이지 개수 선택 -->
		<div id="container_box" class="container">
			<div>
				<select id="cntPerPage" name="sel" onchange="selChange()">
					<!-- 줄 바꿈 옵션 선택 -->
					<option value="5"
						<c:if test="${paging.cntPerPage == 5 }">selected</c:if>>5줄	보기</option>
					<option value="10"
						<c:if test="${paging.cntPerPage == 10 }">selected</c:if>>10줄 보기</option>
					<option value="15"
						<c:if test="${paging.cntPerPage == 15 }">selected</c:if>>15줄 보기</option>
					<option value="20"
						<c:if test="${paging.cntPerPage == 20 }">selected</c:if>>20줄 보기</option>
				</select>

				<br /><br />
			</div>
			
			<br /> 
			<table class="table">
					<tr align="center" style="font-family: 'Noto Serif KR', serif;" bgcolor='#f2f2f2'>
						<th style="font-family: 'Noto Serif KR', serif;">번호</th>
						<th width="45%" style="font-family: 'Noto Serif KR', serif;">제목</th>
						<th style="font-family: 'Noto Serif KR', serif;">작성자</th>
						<th style="font-family: 'Noto Serif KR', serif;">작성일</th>
						<th style="font-family: 'Noto Serif KR', serif;">조회수</th>
					</tr>
					<c:forEach items="${viewAll }" var="noticeList">
						<tr align="center" style="font-family: 'Noto Serif KR', serif;">
							<td>
								<c:if test="${noticeList.nPin eq 'Y' }"><strong style="font-family: 'Noto Serif KR', serif; color : red;">[공지]</strong></c:if>
								<c:if test="${noticeList.nPin eq 'N' }">${noticeList.nNum }</c:if>	
							</td>
							<td width="45%" style="font-weight: bold;">
								<a href="/notice/noticeDetail?nNum=${noticeList.nNum }" style="color: black;">${noticeList.nTitle }</a>
							</td>
							<td>${noticeList.mUserName }</td>
							<td>
								<fmt:formatDate value="${noticeList.nDate }" pattern="yyyy-MM-dd" />
							</td>
							<td>${noticeList.nViewCnt }</td>
						</tr>
					</c:forEach>
			</table>
			
			<br /><br /><br />

			<!-- 페이징 처리 -->
			<div style="display: block; text-align: center;">
				<c:if test="${paging.startPage != 1 }">
					<a
						href="/notice/noticeList?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}" style="color: black;">&lt;</a> &nbsp;
					</c:if>
				<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
					<c:choose>
						<c:when test="${p == paging.nowPage }">
								&nbsp; <b style="font-weight: bold; font-size: 20px;">${p }</b> &nbsp; &nbsp;
						</c:when>
						<c:when test="${p != paging.nowPage }">
							<a href="/notice/noticeList?nowPage=${p }&cntPerPage=${paging.cntPerPage}" style="color: black; font-size: 20px;">${p }</a> &nbsp;
							</c:when>
					</c:choose>
				</c:forEach>
				<c:if test="${paging.endPage != paging.lastPage}">
						&nbsp;
						<a href="/notice/noticeList?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}" style="color: black;">&gt;</a>
				</c:if>
			</div>
		</div>
	</section>
	</main>

	<br /> <br />

	<footer>
		<div class="footer-area footer-padding">
			<%@ include file="../include/footer.jsp"%>
		</div>
	</footer>
	
	<div class="search-model-box">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-btn">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input"
					placeholder="Searching key.....">
			</form>
		</div>
	</div>


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
	
	<script type="text/javascript">
		function selChange() {
			var sel = document.getElementById('cntPerPage').value;
			location.href = "noticeList?nowPage=${paging.nowPage}&cntPerPage=" + sel;
		}
	</script>


</body>
</html>