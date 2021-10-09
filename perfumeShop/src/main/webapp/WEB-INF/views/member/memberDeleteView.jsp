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
                                <h2 style="font-family: 'Noto Serif KR', serif;">회원탈퇴</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End-->
        
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
							<h3 style="font-family: 'Noto Serif KR', serif; font-weight: bold ;">※ 회원탈퇴</h3>
	                      	<hr />
							<form action="/member/memberDelete" method="post" id="delForm">
								<div class="form-group has-feedback">
									<label class="control-label" for="mUserId" style="font-family: 'Noto Serif KR', serif;">아이디</label> <input
										class="form-control" type="text" id="mUserId" name="mUserId"
										value="${member.mUserId}" readonly="readonly" style="font-family: 'Noto Serif KR', serif;" />
								</div>
								<div class="form-group has-feedback">
									<label class="control-label" for="mUserPass" style="font-family: 'Noto Serif KR', serif;">패스워드</label> <input
										class="form-control" type="password" id="mUserPass"
										name="mUserPass" style="font-family: 'Noto Serif KR', serif;" />
								</div>
							</form>
							<div class="form-group has-feedback">
								<button class="btn btn-success" type="button" id="submit" style="font-family: 'Noto Serif KR', serif;">회원탈퇴</button>
								<button class="cencle btn btn-danger" type="button" style="font-family: 'Noto Serif KR', serif;">취소</button>
							</div>
							<div>
								<c:if test="${msg == false}">
								비밀번호가 맞지 않습니다.
							</c:if>
							</div>

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
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#mUserPass").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#mUserPass").focus();
					return false;
				}
				$.ajax({
					url : "/member/passChk",
					type : "POST",
					dateType : "json",
					data : $("#delForm").serializeArray(),
					success: function(data){
						
						if(data==true){
							if(confirm("회원탈퇴하시겠습니까?")){
								$("#delForm").submit();
								alert("회원탈퇴 되었습니다.");
							}
						}else{
							alert("패스워드가 틀렸습니다.");
							return;
						}
					}
				})
				
			});
			
		})
	</script>
</body>
</html>
