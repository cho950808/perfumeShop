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
           	 <main class="bg-white-500 flex-1 p-3 overflow-hidden">  
           	 	 
                   <!--Grid Form-->
					<div class="flex flex-1  flex-col md:flex-row lg:flex-row mx-2">
                    <div class="rounded overflow-hidden shadow bg-white mx-0 w-full">
                            <div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b text-white text-bold">
                                회원 목록
                            </div>
                            <div class="p-3">
                            
                         <section id="container">
							<form role="form" method="get">   
                            <div class="table-responsive">
                                <table class="table text-grey-darkest">
                                    <thead class="bg-grey-dark text-white text-normal">
	                                    <tr align="center">
	                                    	<th width="6%">번호</th>
	                                        <th width="20%">아이디</th>
	                                        <th width="20%">이름</th>
	                                        <th width="20%">이메일</th>
	                                        <th width="20%">전화번호</th>
	                                        <th width="20%">등록날짜</th>
	                                    </tr>
                                    </thead>
                                    <tbody>
                                    
									<c:forEach items="${memberList}" var="memberList">
										<tr align="center">
											<td>${memberList.mNum}</td>
											<td>${memberList.mUserId}</td>
											<td>${memberList.mUserName}</td>
											<td>${memberList.mUserEmail}</td>
											<td>${memberList.mUserPhon}</td>
											<td><fmt:formatDate value="${memberList.mRegDate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>				
									</c:forEach>
								</tbody>
                                </table>
                                <br />
                                
                                <!-- 페이징 -->
								<div style="width:100%; margin-right: auto;">
									<ul class="pagination pagination-sm m-0 float-right">
										<c:if test="${pageMaker.prev}">
											<li><a class="page-link" href="memberList${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
										</c:if>

										<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="p">
											<c:choose>
										
											<c:when test="${p == Criteria.page }">
							                   <b><a class="page-link">${p }</a></b>
							                </c:when>
							                     
											<c:when test="${p != Criteria.page }">
											<li class="page-item"><a class="page-link" href="memberList${pageMaker.makeSearch(p)}">${p}</a></li>
											</c:when> 
											
											</c:choose>
										</c:forEach>

										<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
											<li><a class="page-link" href="memberList${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a></li>
										</c:if>
									</ul>
									
									<!-- 검색 -->
									<div class="form-group row justify-content-center">
										<div class="w100" style="padding-right:10px">
											<select name="searchType" class="form-control form-control-sm" >
												<option value="id" <c:out value="${scri.searchType eq 'id' ? 'selected' : ''}"/>>아이디</option>
												<option value="email" <c:out value="${scri.searchType eq 'email' ? 'selected' : ''}"/>>이메일</option>
												<option value="name" <c:out value="${scri.searchType eq 'name' ? 'selected' : ''}"/>>닉네임</option>	
											</select>
										</div>
										<div class="w350" style="padding-right:10px">
										<input class="form-control form-control-sm" type="text" name="keyword" id="keywordInput" value="${scri.keyword}" />
										</div>
										<button class="btn btn-sm btn-primary" id="searchBtn">검색</button>
									</div>
								</div>
                            </div>
                            </form>
                            </section>
						</div>
                     </div>
                </div>
				<!--/Grid Form-->
                    
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