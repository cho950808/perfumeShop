<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>24Hours</title>

	<!-- CSS -->
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
	<link rel="shortcut icon" type="image/x-icon" href="/resources/img/24.png">
	
	<!--한글폰트 설정-->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Noto+Serif+KR:wght@200&display=swap">

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
	<main>
		<!-- Hero Area Start-->
		<div class="slider-area ">
			<div class="single-slider slider-height2 d-flex align-items-center">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="hero-cap text-center">
								<h2 style="font-family: 'Noto Serif KR', serif;">회원가입</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
			<br /> <br />
		<div class="container" align="center" style="height: 750px; widows: 1000px;">
				<div class="post" style="width: 70%;">
					<div class="user-block">
						<img class="img-circle img-bordered-sm"
							src="/resources/img/logo/logo.png" alt="user image">
					</div>
				</div>
				<br /><hr /><br />
						<div class="col-lg-6 col-md-6">
							<div class="login_part_form">
								<div class="login_part_form_iner">
									<section id="container">
										<form action="/member/signup" method="post" id="regForm">
											<div class="form-group has-feedback" align="left">
												<label style="text-align: jstify; font-family: 'Noto Serif KR', serif;">아이디</label> 
												<div class="input-group mb-3">
													<input class="form-control" style="margin-bottom: 5px; font-family: 'Noto Serif KR', serif;" placeholder="아이디를 입력하세요" name="mUserId" id="mUserId" type="text" />&nbsp;
													<button class="btn btn-outline-secondary" type="button" id="idChk" onclick="fn_idChk();" value="N" style="font-family: 'Noto Serif KR', serif; font-weight: bold ;">중복확인</button>
												</div>
											</div>
											<div class="form-group has-feedback" align="left">
												<label style="font-family: 'Noto Serif KR', serif;">비밀번호</label> 
												<input class="form-control" placeholder="비밀번호를 입력하세요" name="mUserPass" id="mUserPass" type="password" style="font-family: 'Noto Serif KR', serif;" />
											</div>
											<div class="form-group has-feedback" align="left">
												<label style="font-family: 'Noto Serif KR', serif;">비밀번호 확인</label> 
												<input class="form-control" placeholder="비밀번호를 입력하세요" name="mUserPass2" id="mUserPass2" type="password" style="font-family: 'Noto Serif KR', serif;" />
											</div>
											<div class="form-group has-feedback" align="left">
												<label style="font-family: 'Noto Serif KR', serif;">이름</label> 
												<input class="form-control" placeholder="이름을 입력하세요" name="mUserName" id="mUserName" type="text" style="font-family: 'Noto Serif KR', serif;" />
											</div>
											<div class="form-group has-feedback" align="left">
												<label style="font-family: 'Noto Serif KR', serif;">전화번호</label> 
												<input class="form-control" placeholder="전화번호를 입력하세요" name="mUserPhon" id="mUserPhon" type="text" style="font-family: 'Noto Serif KR', serif;" />
											</div>
											
											 <div class="form-group has-feedback" id="mail_check_input_box_false" align="left">
												<label style="font-family: 'Noto Serif KR', serif;">이메일</label> 
													<div class="input-group mb-3">
														<input class="form-control" placeholder="이메일 주소를 입력하세요" name="mUserEmail" id="mUserEmail" type="email" style="font-family: 'Noto Serif KR', serif;"/>&nbsp;
														<button class="btn btn-outline-secondary" type="button" id="emailChk" value="N" style="font-family: 'Noto Serif KR', serif; font-weight: bold ;">인증번호 보내기</button>
													</div>
													<div class="input-group mb-3">
														<input class="mail_check_input form-control" id="sm_email2" placeholder="인증번호를 입력하세요" style="font-family: 'Noto Serif KR', serif;" disabled="disabled"/>&nbsp;
														<button class="btn btn-outline-secondary" type="button" id="emailChk2" value="N" disabled="disabled" style="font-family: 'Noto Serif KR', serif; font-weight: bold ;">이메일 인증</button>
														<input type="hidden" id="emailDoubleChk"/>
													</div>
													<span class="point successEmailChk" style="font-weight: bold ; font-family: 'Noto Serif KR', serif;">※ 이메일 입력 후 인증번호 보내기를 해주십시오.</span>
												<div class="clearfix"></div>
												<span id="mail_check_input_box_warn"></span>
											</div> 
										</form>
											<input type="button" class="btn btn-lg btn-success btn-block" value="회원가입" id="submit" />
									</section>
								</div>
							</div>
						</div>
						<br /> <hr />
					</div>
					

	</main>
	<div style="height: 170px;"></div>
	<footer>
		<div class="footer-area footer-padding">
			<%@ include file="../include/footer.jsp"%>
		</div>
	</footer>

	<!-- JS here -->
	<script src="./../resources/js/vendor/modernizr-3.5.0.min.js"></script>

	<!-- Jquery, Popper, Bootstrap -->
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
	
	<script type="text/javascript">
		var code = "";
		var st = ['mUserId','mUserPass','mUserPass2','mUserName','mUserPhon','mUserEmail'];
		var st2 = ['아이디','비밀번호','비밀번호 확인','이름','전화번호','이메일'];
		
		var ck = ['emailChk','emailChk2','idChk'];
		var ck2 = ['이메일 보내기','이메일 인증','중복확인'];
		
		var ckeckId = RegExp(/^[a-zA-Z0-9]{8,25}$/);
		var ckeckPass = RegExp(/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/);
		
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
		
		// 아이디 체크
		function fn_idChk() {
			$.ajax({
				url : "/member/idChk",
				type : "post",
				dataType : "json",
				data : {"mUserId" : $("#mUserId").val()},
				success : function(data) {
					if ($("#mUserId").val() == ""){
						$("#mUserId").focus();
						alert("아이디를 입력해주세요.");
						return false;
						
					} else if (data == 1) {
						alert("중복된 아이디입니다.");
						
					} else if (data == 0) {
						$("#idChk").attr("value", "Y");
						alert("사용가능한 아이디입니다.");
					} 
				}
			})
		}
		
		// 회원가입 유효성 검사
		$(document).ready(function() {
			$("#submit").on("click", function() {
				
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
				
				// 아이디와 비밀번호가 같은지 비교
			    if ($("#mUserId").val()==($("#mUserPass").val())) {
			     	alert("비밀번호가 아이디와 같습니다. 다르게 입력해주세요");
			      	$("#mUserPass").val("");
			     	$("#mUserPass").focus();
			     	return false;
			    }
				
				// 비밀번호 확인
			    if($("#mUserPass").val() != $("#mUserPass2").val()){
			         alert("비밀번호가 서로 다릅니다. 비밀번호를 확인해 주세요.");
			         $("#mUserPass").val("");
			         $("#mUserPass2").val("");
			         $("#mUserPass").focus();
			         return false;
			     }
				
			 	// 아이디 유효성 검사
			    if(!ckeckId.test($("#mUserId").val())){
			    	$("#mUserId").val("");
				    $("#mUserId").focus();
				    alert("아이디는 8~25자리의 영문 대소문자와 숫자로만 사용해야 합니다.");
				    return false;
			 	}	
			 	
			 	// 비밀번호 유효성 검사
			    if(!ckeckPass.test($("#mUserPass").val())){
			       $("#mUserPass").val("");
			       $("#mUserPass2").val("");
			       $("#mUserPass").focus();
			       alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
			       return false;
			    }
				
				$("#regForm").submit();
				alert("회원가입에 성공하였습니다.");
			});
		})
	
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
	</script>
	
	<script>
		var regExpId = /[^A-za-z0-9]$/g; 
		var regExpPhon = /[^0-9]/gi;
		var regExpName = /[^가-힣]+$/;
		
		$("#mUserId").keyup(function(){ idCheck($(this)); });
		$("#mUserPhon").keyup(function(){ phonCheck($(this)); });
		$("#mUserName").keyup(function(){ nameCheck($(this)); });
	
		function idCheck(selector) {
			var mUserId = selector.val();
			selector.val(mUserId.replace(regExpId, ""));
		}
		
		function phonCheck(selector) {
			var mUserPhon = selector.val();
			selector.val(mUserPhon.replace(regExpPhon, ""));
		}
		
		function nameCheck(selector) {
			var mUserName = selector.val();
			selector.val(mUserName.replace(regExpName, ""));
		} 
	</script>
</body>
</html>