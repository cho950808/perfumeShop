<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="True"%>
<!doctype html>
<html lang="zxx">
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
		<div class="header-area">
			<%@ include file="../include/header.jsp" %>
		</div>
</header>
<main> <!-- Single Slider -->
        <!--? Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2 style="font-family: 'Noto Serif KR', serif;">주문내역</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--? Hero Area End-->
		
		 <section class="blog_area section-padding">
            <div class="container">
                <div class="row">
                	<div class="col-lg-3">
                        <div class="blog_right_sidebar">
                            <%@ include file="../include/aside.jsp" %>
                        </div>
                    </div>

					<div class="col-lg-8 mb-5 mb-lg-0">
						<div class="blog_left_sidebar">
							<h3 style="font-family: 'Noto Serif KR', serif; font-weight: bold ;">※ 주문내역</h3>
                      		<hr /><br />
							<c:forEach items="${orderList}" var="orderList">
								<div class="jumbotron p-10"
									style="text-align: left; height: 200px; padding-left: 30px; padding-top: 30px;">
									<p
										style="line-height: 15px; font-family: 'Noto Serif KR', serif;">
										주문번호 :&nbsp;&nbsp;<span><a
											style="color: green; font-family: 'Noto Serif KR', serif;"
											href="/shop/orderView?n=${orderList.orderId}">${orderList.orderId}</a></span>
									</p>
									<p
										style="line-height: 15px; font-family: 'Noto Serif KR', serif;">
										수령인 :&nbsp;&nbsp;<span
											style="color: black; font-family: 'Noto Serif KR', serif;">${orderList.orderRec}</span>
									</p>
									<p
										style="line-height: 15px; font-family: 'Noto Serif KR', serif;">
										주소 :&nbsp;&nbsp;<span
											style="color: black; font-family: 'Noto Serif KR', serif;">${orderList.userAddr1}
											${orderList.userAddr2}</span>
									</p>
									<p
										style="line-height: 15px; font-family: 'Noto Serif KR', serif;">
										가격 :&nbsp;&nbsp;<span
											style="color: black; font-family: 'Noto Serif KR', serif;"><fmt:formatNumber
												pattern="###,###,###" value="${orderList.amount}" />원</span>
									</p>
									<p
										style="line-height: 15px; font-family: 'Noto Serif KR', serif;">
										상태 :&nbsp;&nbsp;<span
											style="color: black; font-family: 'Noto Serif KR', serif;">${orderList.delivery}</span>
									</p>
								</div>
							</c:forEach>
							
						<!-- 페이징 -->
						<section id="container">
							<form role="form" method="get">
								<div style="width:53%; margin-right: auto;">
									<ul class="pagination pagination-sm m-0 float-right">
										<c:if test="${pageMaker.prev}">
											<li><a class="page-link" href="orderList${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
										</c:if>

										<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="p">
											<c:choose>
										
											<c:when test="${p == Criteria.page }">
							                   <b><a class="page-link">${p }</a></b>
							                </c:when>
							                     
											<c:when test="${p != Criteria.page }">
											<li class="page-item"><a class="page-link" href="orderList${pageMaker.makeSearch(p)}">${p}</a></li>
											</c:when> 
											
											</c:choose>
										</c:forEach>

										<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
											<li><a class="page-link" href="orderList${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a></li>
										</c:if>
									</ul>
								</div>
								</form>
						</section>
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
  
  <!--? Search model Begin -->
  <div class="search-model-box">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-btn">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Searching key.....">
        </form>
    </div>
  </div>
  <!-- Search model end -->

  <!-- JS here -->
  <script src="/resources/js/vendor/modernizr-3.5.0.min.js"></script>
  <!-- Jquery, Popper, Bootstrap -->
  <script src="/resources/js/vendor/jquery-1.12.4.min.js"></script>
  <script src="/resources/js/popper.min.js"></script>
  <script src="/resources/js/bootstrap.min.js"></script>
  <!-- Jquery Mobile Menu -->
  <script src="/resources/js/jquery.slicknav.min.js"></script>

  <!-- Jquery Slick , Owl-Carousel Plugins -->
  <script src="/resources/js/owl.carousel.min.js"></script>
  <script src="/resources/js/slick.min.js"></script>

  <!-- One Page, Animated-HeadLin -->
  <script src="/resources/js/wow.min.js"></script>
  <script src="/resources/js/animated.headline.js"></script>
  <script src="/resources/js/jquery.magnific-popup.js"></script>

  <!-- Scroll up, nice-select, sticky -->
  <script src="/resources/js/jquery.scrollUp.min.js"></script>
  <script src="/resources/js/jquery.nice-select.min.js"></script>
  <script src="/resources/js/jquery.sticky.js"></script>
  
  <!-- contact js -->
  <script src="/resources/js/contact.js"></script>
  <script src="/resources/js/jquery.form.js"></script>
  <script src="/resources/js/jquery.validate.min.js"></script>
  <script src="/resources/js/mail-script.js"></script>
  <script src="/resources/js/jquery.ajaxchimp.min.js"></script>
      
  <!-- Jquery Plugins, main Jquery -->	
  <script src="/resources/js/plugins.js"></script>
  <script src="/resources/js/main.js"></script>
      
</body>
</html>