<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <script src="/resources/jquery/jquery-3.3.1.min.js"></script>
    <script src="/resources/bootstrap/bootstrap.min.js"></script>
	<script src="/resources/ckeditor/ckeditor.js"></script>
    
     <!-- Css -->
    <link rel="stylesheet" href="/resources/css/adminAll.css">
    <link rel="stylesheet" href="/resources/css/adminStyles.css">
    <link rel="stylesheet" href="/resources/css/adminlte.css">
    <link rel="shortcut icon" type="image/x-icon" href="../../resources/img/24.png">

<style>
	.orderInfo { border:5px solid #eee; padding:10px 20px; margin:20px 0;} 
	.orderInfo span { font-size:20px; font-weight:bold; display:inline-block; width:90px; }
	
	.orderView li { margin-bottom:20px; padding-bottom:20px; border-bottom:1px solid #999; }
	.orderView li::after { content:""; display:block; clear:both; }
	
	.thumb { float:left; width:200px; }
	.thumb img { width:200px; height:200px; }
	.gdsInfo { float:right; width:calc(100% - 220px); line-height:2; }
	.gdsInfo span { font-size:20px; font-weight:bold; display:inline-block; width:100px; margin-right:10px; }
	
	.deliveryChange { text-align:right; }
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
                                주문 내역
                            </div>
				<div class="p-3">
				
                  <ul class="orderInfo">
							<c:forEach items="${orderView}" var="orderView" varStatus="status">
								<c:if test="${status.first}">
								<div class="card card-primary">
									<div class="card-body box-profile">
										<ul class="list-group list-group-unbordered mb-3">
											<li class="list-group-item"><b>주문자</b> <a
												class="float-right">${orderView.mUserId}</a></li>
											<li class="list-group-item"><b>수령인</b> <a
												class="float-right">${orderView.orderRec}</a></li>
											<li class="list-group-item"><b>주소</b> <a
												class="float-right">${orderView.userAddr1} ${orderView.userAddr2}</a></li>
											<li class="list-group-item"><b>가격</b> <a
												class="float-right"><fmt:formatNumber pattern="###,###,###"
												value="${orderView.amount}" />원</a></li>
											<li class="list-group-item"><b>배송현황</b> <a
												class="float-right">${orderView.delivery}</a></li>
										</ul>
										<div class="deliveryChange">
											<form role="form" action="" method="post" class="deliveryForm">
											
												<input type="hidden" name="orderId" value="${orderView.orderId}" />
												<input type="hidden" name="delivery" class="delivery" value="" />
												
												<button type="button" class="delivery1_btn bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">배송 중</button>
												<button type="button" class="delivery2_btn bg-red-500 hover:bg-red-800 text-white font-bold py-2 px-4 rounded">배송 완료</button>
												
												<script>
													$(".delivery1_btn").click(function(){
														$(".delivery").val("배송 중");
														run();
													});
													
													$(".delivery2_btn").click(function(){
														$(".delivery").val("배송 완료");
														run();
														
													});
													
													function run(){
														$(".deliveryForm").submit();
													}
												
												</script>
											</form>
										</div>
									</div>
								</div>
								</c:if>
							</c:forEach>
						</ul> 
						
						
					<ul class="orderView">
					<c:forEach items="${orderView}" var="orderView">					
					<li>
						<div class="thumb">
							<img src="${orderView.pThumbImg}" />
						</div>
						<div class="gdsInfo">
							<p>
								<span>상품명</span>${orderView.pName}<br />
								<span>개당 가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.pPrice}" /> 원<br />
								<span>구입 수량</span>${orderView.cartStock} 개<br />
								<span>최종 가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.pPrice * orderView.cartStock}" /> 원                   
							</p>
						</div>
					</li>					
					</c:forEach>
				</ul>		 
					</div>				
						                           
                    <!--/Grid Form-->
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
</body>
</html>