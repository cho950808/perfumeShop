<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>24Hours</title>
<script src="/resources/jquery/jquery-3.3.1.min.js"></script>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/x-icon" href="resources/img/24.png">

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
	
	<style>
		div.replyModal { position:relative; z-index:1; display:none; }
		div.modalBackground { position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0, 0, 0, 0.8); z-index:-1; }
		div.modalContent { position:fixed; top:20%; left:calc(50% - 250px); width:500px; height:250px; padding:20px 10px; background:#fff; border:2px solid #666; }
		div.modalContent textarea { font-size:16px; font-family:'Noto Serif KR', serif; padding:10px; width:450px; height:170px; }
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
<main> 
<!-- Single Slider -->

        <!--? Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2 style="font-family: 'Noto Serif KR', serif;">상품 상세 페이지</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        

	<section id="container">
		<div id="container_box">
			<div class="container" align="center" style="height: auto; widows: 1000px;">
			<br /><br /><br />
			<div id="container_fluid">
				<div class="row justify-content-center">
					<div class="col-lg-5">
						<form role="form" method="post">
							<input type="hidden" name="pNum" value="${view.pNum}" />
						</form>
						<div class="product_img_slide owl-carousel">
							<div class="product">
								<div class="productImg">
									<img src="${view.pImg}" width="550px" height="auto">
								</div>
							</div>
						</div>
						<div>
							<h4>
								<span style="font-family: 'Noto Serif KR', serif;">${view.pDetail}</span>
							</h4>
						</div>
					</div>
					
					<div class="col-lg-7">
						<div class="room-booking">
							<br /><br /><hr />
							<div style="height: 70px;">
								<h1>
									<span><Strong>${view.pCateName}</Strong></span>
								</h1>
							</div>
							<div style="height: 80px;">
								<h1><span style="font-family: 'Noto Serif KR', serif;"><Strong>${view.pName}</Strong></span></h1>
							</div>
							<div class="check-date">
								<h5>
								<span style="font-family: 'Noto Serif KR', serif;"><Strong>가 격 : </Strong></span>
								<input type="text" value="<fmt:formatNumber pattern="###,###,###" value="${view.pPrice}" />원" id="date-in" disabled style="font-family: 'Noto Serif KR', serif;"/>
								</h5>
							</div>
							<div class="check-date">
								<h5>
								 <label for="guest" style="font-family: 'Noto Serif KR', serif;"><Strong>재 고 : </Strong></label>
								 <input type="text" value="<fmt:formatNumber pattern="###,###,###" value="${view.pStock}" /> EA" id="date-in" disabled style="font-family: 'Noto Serif KR', serif;"/>
								</h5>
							</div>
							<br />
							<c:if test="${view.pStock != 0}">
									<h5>
									<span style="font-family: 'Noto Serif KR', serif;"><Strong>구입 수량</Strong></span>
										<button type="button" class="minus">-</button>
											<input type="text" class="numBox" min="1" max="${view.pStock}" value="1" />
										<button type="button" class="plus">+</button>
										<input type="hidden" value="${view.pStock}" class="pStock_hidden" />
									</h5>
									<hr />
									<button type="button" class="genric-btn danger-border radius" id="odrer_btn" style="font-family: 'Noto Serif KR', serif;"><Strong>구매</Strong></button>&nbsp;&nbsp;&nbsp;
									<button type="button" class="genric-btn info-border radius" id="addCart_btn" style="font-family: 'Noto Serif KR', serif;"><Strong>장바구니</Strong></button>			
							</c:if>
							
							<c:if test="${view.pStock == 0}">
								<p>상품 수량이 부족합니다.</p>						
							</c:if>
						</div>
						</div>
					</div>
					<br /><br /><br /><br />
				</div>
				
					<h4>
						<span style="font-family: 'Noto Serif KR', serif; display:inline-block; width: 95%; text-align: left;"><Strong>☺ ັ 상품 후기</Strong>
							<button type="button" class="genric-btn default radius float-right" onclick="location.href='/shop/product' ">목 록</button>
						</span>
					</h4>
					
				<hr />
				<section id="container">
					<div id="reply">
						<c:if test="${member == null }">
							<br />
							<h3 style="font-family: 'Noto Serif KR', serif;">상품 후기를 남기시려면 <a href="/member/signin">로그인</a>해주세요</h3>
							<br />
						</c:if>
						
						<c:if test="${member != null}">
						<section class="replyForm">
							<form role="form" method="post" autocomplete="off">
								<input type="hidden" name="pNum" id="pNum" value="${view.pNum}">
								<div class="input_area">
									<textarea class="form-control" name="prCon" id="prCon" rows="1" style="height: 150px;" placeholder="후기를 작성해주세요."></textarea>
									<div align="right" style="margin-top: 10px;">
										<button  class="btn btn-success" type="button" id="reply_btn">작성</button>&nbsp;
									</div>
								</div>
							</form>
						</section>
						</c:if>
						<hr />
						
						<section class="replyList">
							<div align="left">
								<ol style="font-family: 'Noto Serif KR', serif;"></ol> 
					 		</div>  
						</section>
						
					</div>
				</section>
			
				<div class="replyModal">
					<div class="modalContent">
						<div>
							<textarea class="form-control" id="modal_prCon" name="modal_prCon"></textarea>
						</div>
						<div align="right" style="margin-top: 10px;">
							<button type="button" class="btn btn-warning" id="modal_modify_btn">수정</button>
							<button type="button" class="btn btn-danger" id="modal_cancel">취소</button>&nbsp;&nbsp;&nbsp;
						</div>
					</div>
					<div class="modalBackground"></div>
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
<script src="/resources/js/user/shop/stockBtn.js"></script>
	
	<script>
	function replyList() {
	
	var pNum = ${view.pNum};
	
	// 비동기식 데이터 요청
	$.getJSON("/shop/view/replyList" + "?n=" + pNum, function(data){
		var str = "";
		
		$(data).each(function(){
			
			console.log(data);
			
			// 날짜 데이터를 보기 쉽게 변환
			var prDate = new Date(this.prDate);
			prDate = prDate.toLocaleDateString("ko-US")
							
			// HTML코드 조립
			str += "<li data-prNum='" + this.prNum + "'>"
				 + "<div class='userInfo' style='font-family: 'Noto Serif KR', serif'>"
				 + "<span class='mUserName' style='font-weight:bold; color: #ff3232; font-size:1.1em; font-family: Noto Serif KR, serif;'>" + this.mUserName + "</span>" 
				 + "&nbsp;" + "&nbsp;"
				 + "<span class='date' style='color: #adb5bd;'>" + prDate + "</span>"
				 + "</div>"
				 + "<div class='replyContent'>" + this.prCon + "</div>"
				 
				 + "<c:if test='${member != null}'>"
				 
				 + "<div class='replyFooter' align='right'>"
				 + "<button type='button' class='genric-btn success circle' id='modify' data-prNum='" + this.prNum + "'>수정</button>" 
				 + "&nbsp;"
				 + "<button type='button' class='genric-btn danger circle' id='delete' data-prNum='" + this.prNum + "'>삭제</button>"
				 + "&nbsp;"
				 + "&nbsp;"
				 
				 + "</c:if>"
				 
				 + "<hr />"
				 + "</div>"
				 
				 
				 + "</li>";											
		});
		
		// 조립한 HTML코드를 추가
		$("section.replyList ol").html(str);
		});
	}
		replyList();
	</script>	

	<script>
		$("#addCart_btn").click(function() {

			var pNum = $("#pNum").val();
			var cartStock = $(".numBox").val();

			var data = {
				pNum : pNum,
				cartStock : cartStock
			};

			$.ajax({
				url : "/shop/view/addCart",
				type : "post",
				data : data,
				success : function(result) {

					if (result == 1) {
						alert("카트 담기 성공");
						$(".numBox").val("1");
					} else {
						alert("회원만 사용할 수 있습니다.")
						location.href = "/member/signin";
						$(".numBox").val("1");
					}
				},
				error : function() {
					alert("카트 담기 실패");
				}
			});
		});
		
		 $("#odrer_btn").click(function() {
			 alert("준비중 입니다.");
		});
		
	</script>
	<script>
		$("#prImage")
				.change(
						function() {
							if (this.files && this.files[0]) {
								var reader = new FileReader;
								reader.onload = function(data) {
									$(".select_img img").attr("src",
											data.target.result).width(500);
								}
								reader.readAsDataURL(this.files[0]);
							}
						});
	</script>
	<script>
		$("#reply_btn").click(function() {

			var formObj = $(".replyForm form[role='form']");
			var pNum = $("#pNum").val();
			var prCon = $("#prCon").val();
			var prImage = $("#prImage").val();

			// ReplyVO 형태로 데이터 생성
			var data = {
				pNum : pNum,
				prCon : prCon,
				prImage : prImage
			};

			$.ajax({
				url : "/shop/view/registReply",
				type : "post",
				data : data,
				success : function() {
					replyList(); // 리스트 새로고침
					$("#prCon").val(""); // 텍스트에어리어를 초기화
					$("#prImage").val("");
				}
			});
		});
	</script>
	
	<script>
		$("#modal_modify_btn").click(function() {
			var modifyConfirm = confirm("정말로 수정하시겠습니까?");

			if (modifyConfirm) {
				var data = {
					prNum : $(this).attr("data-prNum"),
					prCon : $("#modal_prCon").val()
				}; // ReplyVO 형태로 데이터 생성

				$.ajax({
					url : "/shop/view/modifyReply",
					type : "post",
					data : data,
					success : function(result) {

						if (result == 1) {
							replyList();
							$(".replyModal").fadeOut(200);
						} else {
							alert("작성자 본인만 할 수 있습니다.");
						}
					},
					error : function() {
						alert("로그인하셔야합니다.")
					}
				});
			}

		});

		$("#modal_cancel").click(function() {
			//$(".replyModal").attr("style", "display:none;");
			$(".replyModal").fadeOut(200);
		});
	</script>
	
	<script>
		$(document).on(
				"click",
				"#modify",
				function() {
					//$(".replyModal").attr("style", "display:block;");
					$(".replyModal").fadeIn(200);

					var prNum = $(this).attr("data-prNum");
					var prCon = $(this).parent().parent().children(
							".replyContent").text();

					$("#modal_prCon").val(prCon);
					$("#modal_modify_btn").attr("data-prNum", prNum);

				});

		// 스크립트로 인해 생성된 HTML의 이벤트는 .click() 메서드를 사용할 수 없음
		$(document).on("click", "#delete", function() {

			// 사용자에게 삭제 여부를 확인
			var deletConfirm = confirm("정말로 삭제하시겠습니까?");

			if (deletConfirm) {

				var data = {
					prNum : $(this).attr("data-prNum")
				}; // ReplyVO 형태로 데이터 생성

				$.ajax({
					url : "/shop/view/deleteReply",
					type : "post",
					data : data,
					success : function(result) {

						// result의 값에 따라 동작
						if (result == 1) {
							replyList(); // 리스트 새로고침
						} else {
							alert("작성자 본인만 할 수 있습니다.") // 본인이 아닌 경우										
						}
					},
					error : function() {
						// 로그인하지 않아서 에러가 발생한 경우
						alert("로그인하셔야합니다.")
					}
				});
			}
		});
	</script>

</body>
</html>