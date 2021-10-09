<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">

	<!-- Css -->
	<link rel="stylesheet" href="/resources/css/adminAll.css">
	<link rel="stylesheet" href="/resources/css/adminStyles.css">
	<link rel="stylesheet" href="/resources/css/adminlte.css">
	<link rel="shortcut icon" type="image/x-icon" href="/resources/img/24.png">

<title>Perfume Shop Admin</title>
</head>
<body>
	<!--Container -->
	<!--Screen-->
	<div class="min-h-screen flex flex-col">
		<!--Header Section Starts Here-->
		<header class="bg-nav"> <%@ include
			file="../include/header.jsp"%> </header>
		<!--/Header-->
		<div class="flex flex-1">
			<%@ include file="../include/aside.jsp" %>

			<!--Main-->
			<main class="bg-white-500 flex-1 p-4 overflow-hidden"> <!--Grid Form-->
			<div class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">
				<div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b text-white text-bold">
					공지사항 수정</div>

				<div class="p-3">
					<form role="form" method="post">
						<div class="flex flex-wrap -mx-3 mb-2">
							<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
								<label
									class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1">&nbsp;제목</label> 
									<input class="appearance-none block w-full bg-grey-200 text-grey-darker border border-grey-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-grey"
									type="text" id="nTitle" name="nTitle" placeholder="제목을 작성하세요" value="${noticeDetail.nTitle }">
							</div>

							<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
								<label
									class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1">작성자</label>
								<input class="appearance-none block w-full bg-grey-200 text-grey-darker border border-grey-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-grey"
									type="text" name="mUserName" placeholder="관리자" value="${noticeDetail.mUserName}" disabled>
							</div>
						</div>
						<hr />
						<div class="w-full md:w-3/3 px-0 mb-10 md:mb-100">
							<label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1" for="grid-city"> &nbsp;내 용</label>
							<textarea class = "ckeditor" id="nContent" name="nContent" rows="5" cols="50" >${noticeDetail.nContent }</textarea>
						</div>
						<hr />
						<div>
							<input type="checkbox" id="noticePinSelect" value="Y"/>&nbsp;<label for="checkYn">공지사항</label>
							<input type="hidden" id="nPin" name="nPin" value="N">
						</div>
						<button type="submit" id="submit" class="btn btn-primary">등록</button>
					</form>
						
				</div>
			</div>
		</main>
		</div>

	</div>
	<!--Footer-->
	<footer class="bg-grey-darkest text-white p-2">
	<div class="flex flex-1 mx-auto">
		<%@ include file="../include/footer.jsp"%>
	</div>
	</footer>
	<!--/footer-->
	
	<script src="/resources/js/main2.js"></script>
	<script src="/resources/jquery/jquery-3.3.1.min.js"></script>
	<script src="/resources/bootstrap/bootstrap.min.js"></script>
	<script src="/resources/ckeditor/ckeditor.js"></script>
	<script>
		var ckeditor_config = {
			resize_enaleb : false,
			enterMode : CKEDITOR.ENTER_BR,
			shiftEnterMode : CKEDITOR.ENTER_P,
			filebrowserUploadUrl : ""
		};	
		
		CKEDITOR.replace("nContent", ckeditor_config);
	</script>
	
	 <script type="text/javascript">
	   $(document).ready(function() {
			$("#submit").on("click", function() {
			
				// 제목
				if ($("#nTitle").val() == "") {
					alert("제목을 입력해주세요.");
					$("#nTitle").focus();
					return false;
				}
				
				// 내용
				var nContent = CKEDITOR.instances.nContent.getData();
				if(nContent == '') {
					alert("내용을 입력하세요.");
					return false;
				}
					return true;

			});
		})
   </script>
   
   <script type="text/javascript">
   
  		// 공지사항 체크박스
  		$("#noticePinSelect").on('click',function(){
			if($("#noticePinSelect").is(":checked")){
				$("#nPin").val("Y");
			}else{
				$("#nPin").val("N");
			}
			
  		});
	</script>

</body>
</html>