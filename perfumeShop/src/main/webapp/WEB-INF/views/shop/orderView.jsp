<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="True"%>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>24Hours</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="/resources/img/24.png">
	
	<!-- Google Font -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" >
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
	<link rel="stylesheet" href="/resources/css/order_bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="/resources/css/order_font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="/resources/css/order_style.css" type="text/css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
	
</head>
<style>
	.orderInfo { border:5px solid #eee; padding:10px 20px; margin:20px 0;} 
	.orderInfo span { font-size:20px; font-weight:bold; display:inline-block; width:90px; }
	
	.orderView li { margin-bottom:20px; padding-bottom:20px; border-bottom:1px solid #999; }
	.orderView li::after { content:""; display:block; clear:both; }
	
	.thumb { float:left; width:200px; }
	.thumb img { width:200px; height:200px; }
	.pInfo { float:right; width:calc(100% - 220px); line-height:2; }
	.pInfo span { font-size:20px; font-weight:bold; display:inline-block; width:100px; margin-right:10px; }
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
<main>

	<!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2 style="font-family: 'Noto Serif KR', serif;">주문 상세 페이지</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End-->
        <br /><br /><br />
			
    <section class="room-details-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="room-details-item">
                    <c:forEach items="${orderView}" var="orderView">
                        <img src="${orderView.pThumbImg}" alt="" width="500" height="600" >
                        <div class="rd-text">
                            <div class="rd-title">
                                <h3 style="font-family: 'Noto Serif KR', serif;">${orderView.pName}</h3>
                            </div>
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="r-o" style="font-family: 'Noto Serif KR', serif;">가격 :</td>
                                        <td><div style="font-text:bold; font-size: 22px; font-family: 'Noto Serif KR', serif;"><fmt:formatNumber pattern="###,###,###" value="${orderView.pPrice}" /> 원</div></td>
                                    </tr>
                                    <tr>
                                        <td class="r-o" style="font-family: 'Noto Serif KR', serif;">구입 수량 :</td>
                                        <td><div style="font-text:bold; font-size: 22px; font-family: 'Noto Serif KR', serif;">${orderView.cartStock} 개</div></td>
                                    </tr>
                                    <tr>
                                        <td class="r-o" style="font-family: 'Noto Serif KR', serif;">최종 가격 :</td>
                                        <td><div style="font-text:bold; font-size: 22px; font-family: 'Noto Serif KR', serif;"><fmt:formatNumber pattern="###,###,###" value="${orderView.pPrice * orderView.cartStock}" /> 원</div></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <hr />
                        </c:forEach>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="room-booking">
                    <br /> <br /> <br />
                        <h3>Order Infomation</h3>
                        <form action="#">
                        <c:forEach items="${orderView}" var="orderView" varStatus="status">
                        
                        <c:if test="${status.first}">
                            <div class="check-date">
                                <label for="date-in" style="font-family: 'Noto Serif KR', serif;">수령인: </label>
                                <input type="text" value="${orderView.orderRec}" id="date-in" disabled style="font-family: 'Noto Serif KR', serif;">
                            </div>
                            <div class="check-date">
                                <label for="date-out" style="font-family: 'Noto Serif KR', serif;">주소: </label>
                                <input type="text" value="${orderView.userAddr1}" id="date-in" disabled style="font-family: 'Noto Serif KR', serif;" />
                                <input type="text" value="${orderView.userAddr2}" id="date-in" disabled style="font-family: 'Noto Serif KR', serif;" />
                            </div>
                            <div class="check-date">
                                <label for="guest" style="font-family: 'Noto Serif KR', serif;">가격: </label>
                                <input type="text" value="<fmt:formatNumber pattern="###,###,###" value="${orderView.amount}" /> 원" id="date-in" disabled style="font-family: 'Noto Serif KR', serif;"/>
                            </div>
                            <div class="check-date">
                                <label for="room" style="font-family: 'Noto Serif KR', serif;">상태: </label>
                                <input type="text" value="${orderView.delivery}" id="date-in" disabled style="font-family: 'Noto Serif KR', serif;" />
                            </div>
                            </c:if>
                            </c:forEach>
                            <button type="submit" disabled>배송지 변경</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section> 
</main>
			
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
			
</body>
</html>
