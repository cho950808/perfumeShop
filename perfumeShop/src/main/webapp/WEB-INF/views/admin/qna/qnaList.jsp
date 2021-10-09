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
		<header class="bg-nav">
			<%@ include file="../include/header.jsp"%>
		</header>
		<!--/Header-->
		<div class="flex flex-1">
			<%@ include file="../include/aside.jsp" %>

			<!--Main-->
			<main class="bg-white-500 flex-1 p-4 overflow-hidden"> 
			<!--Grid Form-->
			<div class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">
				<div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b text-white text-bold">
					문의 리스트</div>
				<div class="p-3">
					<input type="hidden" name="n" value="${product.pNum}" />
					<div id="table-responsive">
					
						<!-- 공지사항 조회 테이블 -->
						<section id="container">
							<form role="form" method="get">
								<table class="table text-grey-darkest">
									<thead class="bg-grey-dark text-white text-normal">
										<tr align="center">
											<th width="8%"><input type="checkbox" name="allCheck" /></th>
											<th width="12%">문의번호</th>
											<th width="40%">문의제목</th>
											<th>작성자</th>
											<th>등록날짜</th>
										</tr>
									</thead>

									<c:forEach items="${list}" var="list">
										<tr align="center">
											<td><input type="checkbox" name="check" value="${list.qNum }" /></td>
											<td>${list.qNum}</td>
											<td>
												<a href="/admin/qna/qnaDetail?qNum=${list.qNum}">${list.qTitle}</a>
													<c:if test="${list.reCnt > 0}">
														<span style="font-weight:bold;">[답변 완료]</span>
													</c:if>
												</td>
											<td>${list.mUserName}</td>
											<td><fmt:formatDate value="${list.qDate}" pattern="yyyy-MM-dd" /></td>
										</tr>
									</c:forEach>
								</table>
								<br />
								<button type="button" class="btn btn-danger" onclick="deleteValue();">삭제</button>
								<!-- 공지사항 조회 테이블 끝 -->

								<!-- 페이징 -->
								<div style="width:100%; margin-right: auto;">
									<ul class="pagination pagination-sm m-0 float-right">
										<c:if test="${pageMaker.prev}">
											<li><a class="page-link" href="qnaList${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
										</c:if>

										<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="p">
											<c:choose>
										
											<c:when test="${p == Criteria.page }">
							                   <b><a class="page-link">${p }</a></b>
							                </c:when>
							                     
											<c:when test="${p != Criteria.page }">
											<li class="page-item"><a class="page-link" href="qnaList${pageMaker.makeSearch(p)}">${p}</a></li>
											</c:when> 
											
											</c:choose>
										</c:forEach>

										<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
											<li><a class="page-link" href="qnaList${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a></li>
										</c:if>
									</ul>
									
									<!-- 검색 -->
									<div class="form-group row justify-content-center">
										<div class="w100" style="padding-right:10px">
											<select name="searchType" class="form-control form-control-sm" >
												<option value="t" <c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
												<option value="w" <c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
												<option value="tw" <c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
											</select>
										</div>
										<div class="w350" style="padding-right:10px">
										<input class="form-control form-control-sm" type="text" name="keyword" id="keywordInput" value="${scri.keyword}" />
										</div>
										<button class="btn btn-sm btn-primary" id="searchBtn">검색</button>
									</div>
								</div>						
							</form>
						</section>
					</div>
					<br>
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
	<script src="/resources/bootstrap/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
	<script type="text/javascript">
      $(function(){
         var chkObj = document.getElementsByName("check");
         var rowCnt = chkObj.length;
         
         $("input[name='allCheck']").click(function(){
            var chk_listArr = $("input[name='check']");
            for (var i=0; i<chk_listArr.length; i++){
               chk_listArr[i].checked = this.checked;
            }
         });
         $("input[name='check']").click(function(){
            if($("input[name='check']:checked").length == rowCnt){
               $("input[name='allCheck']")[0].checked = true;
            }
            else{
               $("input[name='allCheck']")[0].checked = false;
            }
         });
      });
      
      function deleteValue(){
         var url = "delete";    // Controller로 보내고자 하는 URL (.dh부분은 자신이 설정한 값으로 변경해야됨)
         var valueArr = new Array();
          var list = $("input[name='check']");
          for(var i = 0; i < list.length; i++){
              if(list[i].checked){ //선택되어 있으면 배열에 값을 저장함
                  valueArr.push(list[i].value);
              }
          }
          if (valueArr.length == 0){
             alert("선택된 글이 없습니다.");
          }
          else{
            var chk = confirm("정말 삭제하시겠습니까?");             
            $.ajax({
                url : url,                    // 전송 URL
                type : 'POST',                // GET or POST 방식
                traditional : true,
                data : {
                   valueArr : valueArr        // 보내고자 하는 data 변수 설정
                },
                   success: function(jdata){
                       if(jdata = 1) {
                           alert("삭제 성공");
                           location.replace("qnaList")
                       }
                       else{
                           alert("삭제 실패");
                       }
                   }
            });
         }
      }  
   </script>
   <script>
	 $(function(){
	  $('#searchBtn').click(function() {
	   self.location = "qnaList"
	     + '${pageMaker.makeQuery(1)}'
	     + "&searchType="
	     + $("select option:selected").val()
	     + "&keyword="
	     + encodeURIComponent($('#keywordInput').val());
	    });
	 });   
 </script>
	
</body>
</html>