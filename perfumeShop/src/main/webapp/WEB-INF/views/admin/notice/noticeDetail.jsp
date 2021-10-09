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

<style>
	div#container_box ul li { border:5px solid #eee; padding:10px 20px; margin-bottom:20px; }
	div#container_box .orderList span { font-size:20px; font-weight:bold; display:inline-block; width:90px; margin-right:10px; }
</style>

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
                            <div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b text-white text-bold">
                                문의 답변
                            </div>
				<div class="p-3">
				<form role="form" method="post">
		            <div class="card card-primary">
		            
		              <div class="card-header" style="background-color: #111a2c85">
		              	<h3 class="card-title" style="font-weight:bold;">
		              	<c:if test="${noticeDetail.nPin eq 'Y' }">
		              	&nbsp;<strong style="font-family: 'Noto Serif KR', serif; color : #CC1100;">[공지]</strong></c:if>
		              	<span style="font-weight:bold; font-size: 18px;"><strong>${noticeDetail.nTitle }</strong></span>
		              	</h3>
		              </div>
		              
		              <div align="left" style="margin-left: 18px; margin-top: 20px;">
		              	 <span class="mUserName" style="color: #000000; font-weight:bold;"><strong>${noticeDetail.mUserName }&nbsp;</strong><small style="color: #777; font-weight:bold;">(<fmt:formatDate value="${noticeDetail.nDate }" pattern="yyyy-MM-dd" />)</small></span>
		              	 <a style="margin-left: 1100px; font-weight:bold;">조회수 : </a>
						<span style="color: #777; font-weight:bold;">${noticeDetail.nViewCnt }</span>
		              </div>
		              <hr >
		              
		               <div align="left" style="margin-left: 20px;">
		              	 <p>${noticeDetail.nContent }</p>
		               </div>
						<hr />
						
		             <div align="left" style="margin-left: 20px; margin-bottom: 20px;">
						<button onclick="location.href =  '/admin/notice/noticeModify?nNum=${noticeDetail.nNum }';" class="btn btn-warning" type="button">수정</button>
						<button onclick="location.href =  '/admin/notice/noticeList';" class="btn btn-primary" type="button">목록</button>
					</div>  
		            </div>
				</form> 
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
</body>
</html>