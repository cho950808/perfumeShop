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
                                주문 목록
                            </div>
				<div class="p-3">
                  <ul class="orderList">
							<c:forEach items="${orderList}" var="orderList">
								<div class="card card-primary">
									<div class="card-body box-profile">
										<p class="text-muted">
										<span>주문번호 : </span>
										<a href="/admin/shop/orderView?n=${orderList.orderId}">${orderList.orderId}</a>
										</p>
										<ul class="list-group list-group-unbordered mb-3">
											<li class="list-group-item"><b>주문자</b> <a
												class="float-right">${orderList.mUserId}</a></li>
											<li class="list-group-item"><b>수령인</b> <a
												class="float-right">${orderList.orderRec}</a></li>
											<li class="list-group-item"><b>주소</b> <a
												class="float-right">${orderList.userAddr1}
											${orderList.userAddr2}</a></li>
											<li class="list-group-item"><b>가격</b> <a
												class="float-right"><fmt:formatNumber pattern="###,###,###"
												value="${orderList.amount}" />원</a></li>
										</ul>
										<div class="px-5 py-4">
                                        <span class="bg-gray-100 rounded-full px-3 py-1 text-sm font-semibold text-gray-darker mr-3">${orderList.delivery}</span> 
                              			 </div>
									</div>
								</div>
							</c:forEach>
						</ul>
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
						<br />
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