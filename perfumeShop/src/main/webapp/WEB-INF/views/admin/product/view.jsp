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
    <link rel="shortcut icon" type="image/x-icon" href="../../resources/img/24.png">

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
                   <!--Grid Form-->
						<div class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">
                            <div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b text-white text-bold">
                                상품 조회
                            </div>
				<div class="p-3">
				<form role="form" method="post" autocomplete="off">
                  <input type="hidden" name="n" value="${product.pNum}"/>
						<div class="card card-solid">
						        <div class="card-body">
						          <div class="row">
						            <div class="col-12 col-sm-6">
						                 
						              <!-- 이미지 -->
						              <div class="card card-solid">
						              <div class="col-14 col-sm-12 ">
						               	<img src="${product.pImg}" width="550px" height="500px" style="margin-left: auto; margin-right: auto; display: block;"/>
						              </div>
						              </div>
						              
						            </div>
						            <div class="col-12 col-sm-6">
						              <h2 class="my-3 text-bold">${product.pName}</h2>
						              <p>${product.pDetail}</p>
						
						              <h5 class="mt-3 text-bold">상품 수량 : <small><fmt:formatNumber value="${product.pStock}" pattern="###,###,###"/>개</small></h5>
						
						              <div class="bg-gray py-2 px-3 mt-4">
						                <h2 class="mb-0">
						                  <fmt:formatNumber value="${product.pPrice}" pattern="###,###,###"/>원
						                </h2>
						                <h4 class="mt-0">
						                  <small>상품 가격: <fmt:formatNumber value="${product.pPrice}" pattern="###,###,###"/>원</small>
						                </h4>
						              </div>
											<br>
									<div class="inputArea">
									<button type="button" id="modify_Btn" class="btn btn-warning">수정</button>&nbsp;&nbsp;
									<button type="button" id="delete_Btn" class="btn btn-danger">삭제</button>
								</div>
								</form>
			            	</div>
			          </div>
						<br>
			        </div>
			      </div>
     
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
	<script>
		var formObj = $("form[role='form']");

		$("#modify_Btn").click(function() {
			formObj.attr("action", "/admin/product/modify");
			formObj.attr("method", "get")
			formObj.submit();
		});

		$("#delete_Btn").click(function() {

			var con = confirm("정말로 삭제하시겠습니까?");

			if (con) {
				formObj.attr("action", "/admin/product/delete");
				formObj.submit();
			}
		});
	</script>

</body>
</html>