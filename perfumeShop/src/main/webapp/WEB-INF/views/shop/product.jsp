<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="True"%>
<html class="no-js" lang="zxx">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	
<title>24Hours</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="shortcut icon" type="image/x-icon" href="../resources/img/24.png">

	<!--한글폰트 설정-->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Noto+Serif+KR:wght@200&display=swap">

	<!-- CSS here -->
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
			<div class="header-area">
				<%@ include file="../include/header.jsp" %>
			</div>
		</header>
 	<main>
 		
        <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2 style="font-family: 'Noto Serif KR', serif;">상품 리스트</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End-->
        <!-- Latest Products Start -->
        <br /><br />
        <section class="popular-items">
            <div class="container">
                <div class="row product-btn justify-content-between mb-40">
                
                <div class="container" align="center" style=" widows: 1000px;">
                <div class="post" style="width: 70%;">
					<div class="user-block">
						<img class="img-circle img-bordered-sm"
							src="/resources/img/logo/logo.png" alt="user image">
					</div>
				</div>
				<br /><hr /><br /><br />
                
                
                    <div class="properties__button">
                       <!--Nav Button  -->
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">All Products</a>
                                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-chanel" role="tab" aria-controls="nav-profile" aria-selected="false">CHANEL</a>
                                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-tomford" role="tab" aria-controls="nav-contact" aria-selected="false">TOMFORD</a>
                                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-diptyque" role="tab" aria-controls="nav-contact" aria-selected="false">DIPTYQUE</a>
                                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-jomalone" role="tab" aria-controls="nav-contact" aria-selected="false">JO MALONE</a>
                            </div>
                        </nav>
                        <!--End Nav Button  -->
                    </div>
                    <!-- Grid and List view -->
                    <div class="grid-list-view">
                    </div>
                </div>
                
                <!-- Nav Card -->
                <div class="tab-content" id="nav-tabContent">
                
                    <!-- card one -->
                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                        <div class="row">
                        <c:forEach items="${list }" var="list">
                            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                                <div class="single-popular-items mb-50 text-center">
                                    <div class="popular-img">
                                        <a href="/shop/view?n=${list.pNum }"><img src="${list.pImg }" alt="" width="300" height="285" onerror="this.src='../resources/img/none.png'"></a>
                                        <div class="img-cap">
                                            <span>Product Detail</span>
                                        </div>
                                    </div>
                                    <div class="popular-caption">
                                        <p style="font-family: 'Noto Serif KR', serif;"><Strong>${list.pCateName }<br>
                                                ${list.pName } </Strong></p>
                                        <span><f:formatNumber pattern="###,###,###" value="${list.pPrice}" />원</span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        </div>
                    </div>
                    
                    <!-- CHANEL -->
                    <div class="tab-pane fade" id="nav-chanel" role="tabpanel" aria-labelledby="nav-profile-tab">
                        <div class="row">
                             <c:forEach items="${list }" var="list">
                             <c:if test="${list.pCateName == 'Chanel' }">
                            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                                <div class="single-popular-items mb-50 text-center">
                                    <div class="popular-img">
                                        <a href="/shop/view?n=${list.pNum }"><img src="${list.pImg }" alt="" width="300" height="285" onerror="this.src='../resources/img/none.png'"></a>
                                        <div class="img-cap">
                                            <span>Product Detail</span>
                                        </div>
                                    </div>
                                    <div class="popular-caption">
                                        <p style="font-family: 'Noto Serif KR', serif;"><Strong>${list.pCateName }<br>
                                                ${list.pName } </Strong></p>
                                        <span><f:formatNumber pattern="###,###,###" value="${list.pPrice}" />원</span>
                                    </div>
                                </div>
                            </div>
                            </c:if>
                        </c:forEach>
                        </div>
                    </div>
                    
                    <!-- TOMFORD -->
                    <div class="tab-pane fade" id="nav-tomford" role="tabpanel" aria-labelledby="nav-contact-tab">
                        <div class="row">
                            <c:forEach items="${list }" var="list">
                             <c:if test="${list.pCateName == 'Tomford' }">
                            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                                <div class="single-popular-items mb-50 text-center">
                                    <div class="popular-img">
                                        <a href="/shop/view?n=${list.pNum }"><img src="${list.pImg }" alt="" width="300" height="285" onerror="this.src='../resources/img/none.png'"></a>
                                        <div class="img-cap">
                                            <span>Product Detail</span>
                                        </div>
                                    </div>
                                    <div class="popular-caption">
                                        <p style="font-family: 'Noto Serif KR', serif;"><Strong>${list.pCateName }<br>
                                                ${list.pName } </Strong></p>
                                        <span><f:formatNumber pattern="###,###,###" value="${list.pPrice}" />원</span>
                                    </div>
                                </div>
                            </div>
                            </c:if>
                        </c:forEach>
                        </div>
                    </div>
                    
                    <!-- DIPTYQUE -->
                    <div class="tab-pane fade" id="nav-diptyque" role="tabpanel" aria-labelledby="nav-profile-tab">
                        <div class="row">
                            <c:forEach items="${list }" var="list">
                             <c:if test="${list.pCateName == 'Diptyque' }">
                            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                                <div class="single-popular-items mb-50 text-center">
                                    <div class="popular-img">
                                        <a href="/shop/view?n=${list.pNum }"><img src="${list.pImg }" alt="" width="300" height="285" onerror="this.src='../resources/img/none.png'"></a>
                                        <div class="img-cap">
                                            <span>Product Detail</span>
                                        </div>
                                    </div>
                                    <div class="popular-caption">
                                        <p style="font-family: 'Noto Serif KR', serif;"><Strong>${list.pCateName }<br>
                                                ${list.pName } </Strong></p>
                                        <span><f:formatNumber pattern="###,###,###" value="${list.pPrice}" />원</span>
                                    </div>
                                </div>
                            </div>
                            </c:if>
                        </c:forEach>
                        </div>
                    </div>
                    
                    <!-- JOMALONE -->
                    <div class="tab-pane fade" id="nav-jomalone" role="tabpanel" aria-labelledby="nav-profile-tab">
                        <div class="row">
                            <c:forEach items="${list }" var="list">
                             <c:if test="${list.pCateName == 'Jo Malone' }">
                            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                                <div class="single-popular-items mb-50 text-center">
                                    <div class="popular-img">
                                        <a href="/shop/view?n=${list.pNum }"><img src="${list.pImg }" alt="" width="300" height="285" onerror="this.src='../resources/img/none.png'"></a>
                                        <div class="img-cap">
                                            <span>Product Detail</span>
                                        </div>
                                    </div>
                                    <div class="popular-caption">
                                        <p style="font-family: 'Noto Serif KR', serif;"><Strong>${list.pCateName }<br>
                                                ${list.pName } </Strong></p>
                                        <span><f:formatNumber pattern="###,###,###" value="${list.pPrice}" />원</span>
                                    </div>
                                </div>
                            </div>
                            </c:if>
                        </c:forEach>
                        </div>
                    </div>
                </div>
                </div>
                <!-- End Nav Card -->
                <hr />
            </div>
        </section>
        <br /><br />
        <!-- Latest Products End -->

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


</body>
</html>
