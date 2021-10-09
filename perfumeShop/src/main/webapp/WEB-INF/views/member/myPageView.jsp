<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="True"%>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<title>24Hours</title>
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
                                <h2 style="font-family: 'Noto Serif KR', serif;">마이페이지</h2>
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
                        
                        <h3 style="font-family: 'Noto Serif KR', serif; font-weight: bold ;">※ 마이페이지</h3>
                      	<hr />
                        	<form action="/member/myPageView" method="post" id="regForm">
								<div class="form-group has-feedback">
									<label class="control-label" for="mUserId" style="font-family: 'Noto Serif KR', serif;">아이디</label> 
									<input class="form-control" type="text" id="mUserId" name="mUserId" value="${member.mUserId}" readonly="readonly" style="font-family: 'Noto Serif KR', serif;"/>
								</div> 
								<div class="form-group has-feedback">
									<label class="control-label" for="mUserName" style="font-family: 'Noto Serif KR', serif;">이름</label> 
									<input class="form-control" type="text" id="mUserName" name="mUserName" value="${member.mUserName}" readonly="readonly" style="font-family: 'Noto Serif KR', serif;" />
								</div>
								<div class="form-group has-feedback">
									<label class="control-label" for="mUserPhon" style="font-family: 'Noto Serif KR', serif;">전화번호</label> 
									<input class="form-control" type="text" id="mUserPhon" name="mUserPhon" value="${member.mUserPhon}" style="font-family: 'Noto Serif KR', serif;"/>
								</div>
									<label class="control-label" for="mUserEmail" style="font-family: 'Noto Serif KR', serif;">이메일</label>
								<div class="input-group mb-3">
									<input class="form-control" type="text" id="mUserEmail" name="mUserEmail" value="${member.mUserEmail}" style="font-family: 'Noto Serif KR', serif;"/>&nbsp;
									<button class="btn btn-outline-secondary" type="button" id="emailChk" value="N" style="font-family: 'Noto Serif KR', serif; font-weight: bold ;">인증번호 보내기</button>
								</div>
								<div class="input-group mb-3">
									<input class="mail_check_input form-control" id="sm_email2" placeholder="인증번호를 입력하세요" style="font-family: 'Noto Serif KR', serif;" disabled="disabled"/>&nbsp;
									<button class="btn btn-outline-secondary" type="button" id="emailChk2" value="N" disabled="disabled" style="font-family: 'Noto Serif KR', serif; font-weight: bold ;">이메일 인증</button>
									<input type="hidden" id="emailDoubleChk"/>
								</div>
									<span class="point successEmailChk" style="font-weight: bold ; font-family: 'Noto Serif KR', serif;">※ 이메일 입력 후 인증번호 보내기를 해주십시오.</span>
							</form>
							<hr />
							<div class="form-group has-feedback">
								<button class="btn btn-success" type="button" id="submit" style="font-family: 'Noto Serif KR', serif;">정보수정</button>
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

	<script type="text/javascript">

	//이메일 인증
	$("#emailChk").click(function(){
		var mUserEmail = $("#mUserEmail").val();
		$.ajax({
	        type:"GET",
	        url:"mailCheck?mUserEmail=" + mUserEmail,
	        cache : false,
	        success:function(data){
	        	if(data == "error") {
	        		alert("이메일 주소가 올바르지 않습니다. 유효한 이메일 주소를 입력해주세요.");
					$("#mUserEmail").attr("autofocus",true);
					$(".successEmailChk").text("유효한 이메일 주소를 입력해주세요.");
					$(".successEmailChk").css("color","red");
					$("#emailChk").attr("value", "N");
					
	        	}else {	        		
					alert("인증번호 발송이 완료되었습니다.\n입력한 이메일에서 인증번호 확인을 해주십시오.");
	        		$("#sm_email2").attr("disabled",false);
	        		$("#emailChk2").attr("disabled",false);
	        		$("#emailChk2").css("display","inline-block");
	        		$(".successEmailChk").text("인증번호를 입력한 뒤 이메일 인증을 눌러주십시오.");
	        		$(".successEmailChk").css("color","green");
	        		$("#emailChk").attr("value", "Y");
	        		code = data;
	        	}
	        }
	    });
	});
	
	// 이메일 인증번호 대조
	$("#emailChk2").click(function(){
		if($("#sm_email2").val() == code){
			$(".successEmailChk").text("인증번호가 일치합니다.");
			$(".successEmailChk").css("color","green");
			$("#emailDoubleChk").val("true");
			$("#sm_email2").attr("disabled",true);
			$("#emailChk2").attr("value", "Y");
			
		} else {
			$(".successEmailChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
			$(".successEmailChk").css("color","red");
			$("#emailDoubleChk").val("false");
			$("#sm_email2").attr("autofocus",true);
			$("#emailChk2").attr("value", "N");
		}
	});
	
	// 회원가입 유효성 검사
	$(document).ready(function() {
		$("#submit").on("click", function() {
			
			var st = ['mUserPhon','mUserEmail'];
			var st2 = ['전화번호','이메일'];
			
			var ck = ['emailChk','emailChk2'];
			var ck2 = ['이메일 보내기','이메일 인증'];
			
			// 아이디,비밀번호,비밀번호 확인,이름,전화번호,이메일 공백 검사
			for (i = 0; i < st.length; i++) {
				if ($("#"+st[i]).val() == "") {
					alert(st2[i]+"를 입력해주세요");
					$("#"+st[i]).focus();
					return false;
				}
			}
			 
			// 이메일 보내기,이메일 인증,중복확인 공백 검사
			for (i = 0; i < ck.length; i++) {
				if ($("#"+ck[i]).val() == "N") {
					alert(ck2[i]+"버튼을 눌러주세요");
					return false;
				} else if ($("#"+ck[i]).val() == "Y") {
					$("#submit").val();
				}
			}
			
			$("#regForm").submit();
			alert("수정 되었습니다.");
		});
	})

	</script>
	
	<script>
		var regExpPhon = /[^0-9]/gi;
		
		$("#mUserPhon").keyup(function(){ phonCheck($(this)); });
		
		function phonCheck(selector) {
			var mUserPhon = selector.val();
			selector.val(mUserPhon.replace(regExpPhon, ""));
		}
	</script>
			
</body>
</html>
