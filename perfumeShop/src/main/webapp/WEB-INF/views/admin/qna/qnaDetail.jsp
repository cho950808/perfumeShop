<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">
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
        <header class="bg-nav">
            <%@ include file="../include/header.jsp" %>
        </header>
        <!--/Header-->
        <div class="flex flex-1">
            <%@ include file="../include/aside.jsp" %>
            
             <!--Main-->
           	 <main class="bg-white-500 flex-1 p-4 overflow-hidden">  	 
					<div class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">
                            <div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b text-white text-bold" >
                                문의 답변
                            </div>
				<div class="p-3">
				
					<!-- 문의 디테일 -->
		            <div class="card card-primary">
		              <div class="card-header" style="background-color: #111a2c85">
		                <h3 class="card-title" style="font-weight:bold;">${detail.qTitle }</h3>
						</div>
		              
		              <div align="left" style="margin-left: 18px; margin-top: 20px;">
		              	 <span class="mUserName" style="color: #000000; font-weight:bold;"><strong>${detail.mUserName }&nbsp;</strong><small>(<fmt:formatDate value="${detail.qDate }" pattern="yyyy-MM-dd" />)</small></span>
		              </div>
		              <hr >
		              
		               <div align="left" style="margin-left: 20px;">
		              	 <p>${detail.qCon }</p>
		               </div>
						<hr />
		              <form id="quickForm" method="post" action="/admin/qna/qnaReplyWrite">
		                <div class="card-body" style="padding:0 12 0">
		                  <div class="form-group">
		                    <label>답변 내용</label>
		                    <input name="qrCon" class="form-control" id="qrCon" placeholder="내용을 입력하세요">
		                  </div>
		                </div>
		                  &nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="qNum" value="${detail.qNum}"><button type="submit" id="submit" class="btn btn-primary">&nbsp;작성 완료</button>
		              </form>            
		            </div>
					<!-- 문의 디테일 끝 -->
				
				<hr />
				
				<!-- 댓글 작성 -->
				<div class="card card-primary">
				<span class="float-left" style="padding:10 15 0">
		           <span style="color: #777;">
		               <i class="far fa-comments mr-1"></i> 댓글 (${detail.reCnt})
		           </span>
		         </span>
		         <hr />
					<div class="card-body box-profile">
					<c:forEach items="${reply}" var="reply">
	                	<i class="fas fa-user bg-green"></i>
	                	<div class="timeline-item">
	                  <span class="time"><i class="fas fa-clock"></i>&nbsp;<fmt:formatDate value="${reply.qrDate}" pattern="yyyy-MM-dd" /></span>
	                  <h5 class="timeline-header no-border"><a style="color: #007bff; font-size: 30px; font-weight: bold">${reply.mUserName}</a>&nbsp; : ${reply.qrCon }</h5>
	                  <hr />
	               	 </div>
	                </c:forEach>
	                
	              </div>
              	</div>
				<!-- 댓글 작성 끝-->           
				</div>				
                </div>     
            </main>
            <!--/Main-->
        </div>
        <!--Footer-->
        <footer class="bg-grey-darkest text-white p-2">
			<div class="flex flex-1 mx-auto">
				<%@ include file="../include/footer.jsp"%>
			</div>
		</footer>
        <!--/footer-->
    </div>
    <script src="/resources/js/main2.js"></script>
    <script src="/resources/jquery/jquery-3.3.1.min.js"></script>
    <script src="/resources/bootstrap/bootstrap.min.js"></script>
	<script src="/resources/ckeditor/ckeditor.js"></script>
	
	   <script type="text/javascript">
	   $(document).ready(function() {
			$("#submit").on("click", function() {
			
				// 답변 내용
				if ($("#qrCon").val() == "") {
					alert("내용을 입력해주세요.");
					$("#qrCon").focus();
					return false;
				}
			});
		})
	   </script>
   
</body>
</html>