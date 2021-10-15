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
			<div
				class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">
				<div
					class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b text-white text-bold">
					공지사항</div>
				<div class="p-3">
					<input type="hidden" name="n" value="${product.pNum}" />

					<!-- 한 번에 조회할 페이지 개수 옵션 -->
					<div id="table-responsive">
						<div class="col-sm-2">
							<select id="cntPerPage" name="sel" onchange="selChange()" class="form-control">
								<!-- 줄 바꿈 옵션 선택 -->
								<option value="5"
									<c:if test="${paging.cntPerPage == 5 }">selected</c:if>>5줄
									보기</option>
								<option value="10"
									<c:if test="${paging.cntPerPage == 10 }">selected</c:if>>10줄
									보기</option>
								<option value="15"
									<c:if test="${paging.cntPerPage == 15 }">selected</c:if>>15줄
									보기</option>
								<option value="20"
									<c:if test="${paging.cntPerPage == 20 }">selected</c:if>>20줄
									보기</option>
							</select>
						</div>
						<br />

						<!-- 공지사항 조회 테이블 -->
						<table class="table text-grey-darkest">
							<thead class="bg-grey-dark text-white text-normal">
								<tr align="center">
									<th><input type="checkbox" name="allCheck" /></th>
									<th>번호</th>
									<th width="40%">제목</th>
									<th width="15%">작성자</th>
									<th width="15%">작성일</th>
									<th>조회수</th>
								</tr>
							</thead>

							<c:forEach items="${viewAll }" var="noticeList">
								<tr align="center">
									<td><input type="checkbox" name="check" value="${noticeList.nNum }" />
									</td>
									<td>
										<c:if test="${noticeList.nPin eq 'Y' }"><strong style=" serif; color : red;">[공지]</strong></c:if>
										<c:if test="${noticeList.nPin eq 'N' }">${noticeList.nNum }</c:if>	
									</td>
									<td><a href="/admin/notice/noticeDetail?nNum=${noticeList.nNum }">${noticeList.nTitle }</a></td>
									<td>${noticeList.mUserName }</td>	
									<td><fmt:formatDate value="${noticeList.nDate }"
											pattern="yyyy-MM-dd" /></td>
									<td>${noticeList.nViewCnt }</td>
								</tr>
							</c:forEach>
						</table>
						<!-- 공지사항 조회 테이블 끝 -->
						<br />

						<button class="btn btn-warning"><a href="/admin/notice/noticeWrite" style="text-decoration: none; color: black;">글쓰기</a></button>&nbsp;&nbsp;
						<button type="button" class="btn btn-danger" onclick="deleteValue();">삭제</button>

						<!-- 페이징 처리 -->
						<div style="width:53%; margin-right: auto;">
					            <ul class="pagination pagination-sm m-0 float-right">   
					               <c:if test="${paging.startPage != 1 }">
					                   <li class="page-item"><a class="page-link" href="/admin/notice/noticeList?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&laquo;</a></li>
					               </c:if>
					               <c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
					                  <c:choose>
					                     <c:when test="${p == paging.nowPage }">
					                        <b><a class="page-link">${p }</a></b>
					                     </c:when>
					                     <c:when test="${p != paging.nowPage }">
					                       <li class="page-item"><a class="page-link" href="/admin/notice/noticeList?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a></li>
					                     </c:when>
					                  </c:choose>
					               </c:forEach>
					               <c:if test="${paging.endPage != paging.lastPage}">
					                  <li class="page-item"><a class="page-link" href="/admin/notice/noticeList?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&raquo;</a></li>
					              </c:if>
					          </ul>
			            </div>
					</div>
					<br>
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
	</div>
	<script src="/resources/js/main2.js"></script>
	<script src="/resources/jquery/jquery-3.3.1.min.js"></script>
	<script src="/resources/bootstrap/bootstrap.min.js"></script>
	<script src="/resources/ckeditor/ckeditor.js"></script>
	<script type="text/javascript">
		$(function() {
			var chkObj = document.getElementsByName("check");
			var rowCnt = chkObj.length;

			$("input[name='allCheck']").click(function() {
				var chk_listArr = $("input[name='check']");
				for (var i = 0; i < chk_listArr.length; i++) {
					chk_listArr[i].checked = this.checked;
				}
			});
			$("input[name='check']").click(function() {
				if ($("input[name='check']:checked").length == rowCnt) {
					$("input[name='allCheck']")[0].checked = true;
				} else {
					$("input[name='allCheck']")[0].checked = false;
				}
			});
		});
		
		function deleteValue() {
			var url = "noticeChkDelete"; // Controller로 보내고자 하는 URL
			var valueArr = new Array();
			var list = $("input[name='check']");
			
			for (var i = 0; i < list.length; i++) {
				if (list[i].checked) { //선택되어 있으면 배열에 값을 저장함
					valueArr.push(list[i].value);
				}
			}
			
			if (valueArr.length == 0) {
				alert("선택된 글이 없습니다.");
				return;
			} else if (confirm("정말 삭제하시겠습니까?") == true) {
				
			} else {
				alert("삭제 실패");
				location.replace("noticeList")
				return false;
			}
				$.ajax({
					url : url, // 전송 URL
					type : 'POST', // GET or POST 방식
					traditional : true, // 배열 전송
					data : {
		                   valueArr : valueArr        // 보내고자 하는 data 변수 설정
		                },
		                   success: function(result){
		                	   if (result = 1) {
			                      	alert("삭제 성공");
			                        location.replace("noticeList")
		                       } else {
		                    	   alert("삭제 실패");
			                       return false;
		                       }
		                   }
				});
		}

		//표시할 글 개수 옵션
		function selChange() {
			var sel = document.getElementById('cntPerPage').value;
			location.href = "noticeList?nowPage=${paging.nowPage}&cntPerPage="
					+ sel;
		}
	</script>
</body>
</html>