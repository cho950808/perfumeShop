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
                                상품 댓글
                            </div> 
 
                           <div class="p-3">
                          
							<c:forEach items="${allReply}" var="reply">
							<div class="col-md-12">
								<div class="card card-primary card-outline">
									<div class="card-header">
										<h5 class="text-bold">작성자</h5>
										<a href="/shop/view?n=${reply.pNum}"><p class="text-muted">${reply.mUserName} (${reply.mUserId})</p></a>
									</div>

									<div class="card-body p-2">
										<div class="mailbox-read-message">
											<p>${reply.prCon}</p>
										</div>
									</div>

									<form role="form" method="post" autocomplete="off">
										<div class="card-footer">
											<input type="hidden" name="prNum" value="${reply.prNum}" />
											<button type="submit" name="prNum" id="submit" class="btn btn-default delete_${reply.prNum}_btn">삭제</button>
										</div>	
									</form>						
								</div>
							</div>
						</c:forEach>

						<!-- 페이징 -->
						<section id="container">
							<form role="form" method="get" action="/admin/shop/allReply">
								<div style="width:53%; margin-right: auto;">
									<ul class="pagination pagination-sm m-0 float-right">
										<c:if test="${pageMaker.prev}">
											<li><a class="page-link" href="allReply${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
										</c:if>

										<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="p">
											<c:choose>
										
											<c:when test="${p == Criteria.page }">
							                   <b><a class="page-link">${p }</a></b>
							                </c:when>
							                     
											<c:when test="${p != Criteria.page }">
											<li class="page-item"><a class="page-link" href="allReply${pageMaker.makeSearch(p)}">${p}</a></li>
											</c:when> 
											
											</c:choose>
										</c:forEach>

										<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
											<li><a class="page-link" href="allReply${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a></li>
										</c:if>
									</ul>
								</div>
								</form>
						</section>
						<br />
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
		$("#submit").click(function() {
			var con = confirm("정말로 삭제하시겠습니까?");
			if (con) {
				var form = $(this).parents('form');
				formObj.submit();
				alert("삭제되었습니다.");
			} else {
				return false;
			}
		});
	</script>
</body>
</html>