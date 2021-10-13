<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <!-- Css -->
    <link rel="stylesheet" href="/resources/css/adminAll.css">
    <link rel="stylesheet" href="/resources/css/adminStyles.css">
    <link rel="stylesheet" href="/resources/css/adminlte.css">
    <title>Perfume Admin</title>
</head>

<body>
<!--Container -->
<div class="mx-auto bg-grey-400">
    <!--Screen-->
    <div class="min-h-screen flex flex-col">
        <!--Header Section Starts Here-->
        <header class="bg-nav">
            <%@ include file="../admin/include/header.jsp" %>
        </header>
        <!--/Header-->

        <div class="flex flex-1">
            <%@ include file="../admin/include/aside.jsp" %>
            <!--Main-->
            <main class="bg-white-300 flex-1 p-3 overflow-hidden">
                <div class="flex flex-col">
                
                    <!-- Stats Row Starts Here -->
                    <div class="flex flex-1 flex-col md:flex-row lg:flex-row mx-2">
                    
                        <div class="shadow-lg bg-red-vibrant border-l-8 hover:bg-red-vibrant-dark border-red-vibrant-dark mb-2 p-2 md:w-1/4 mx-2">
                            <div class="p-4 flex flex-col">
                                <a href="/admin/member/memberList" class="no-underline text-white text-2xl">
                                 	${memberList.totalCount}
                                </a>
                                <a href="/admin/member/memberList" class="no-underline text-white text-lg">
                                    총 회원 목록
                                </a>
                            </div>
                        </div>

                        <div class="shadow bg-info border-l-8 hover:bg-info-dark border-info-dark mb-2 p-2 md:w-1/4 mx-2">
                            <div class="p-4 flex flex-col">
                                <a href="/admin/shop/orderList" class="no-underline text-white text-2xl">
                                    ${orderList.totalCount}
                                </a>
                                <a href="/admin/shop/orderList" class="no-underline text-white text-lg">
                                    총 주문 목록 
                                </a>
                            </div>
                        </div>

                        <div class="shadow bg-warning border-l-8 hover:bg-warning-dark border-warning-dark mb-2 p-2 md:w-1/4 mx-2">
                          	<div class="p-4 flex flex-col">
                                <a href="/admin/qna/qnaList" class="no-underline text-white text-2xl">
                                    ${qnaList.totalCount}
                                </a>
                                <a href="/admin/qna/qnaList" class="no-underline text-white text-lg">
                                    총 문의 목록
                                </a>
                            </div>
                        </div>

                        <div class="shadow bg-success border-l-8 hover:bg-success-dark border-success-dark mb-2 p-2 md:w-1/4 mx-2">
                             <div class="p-4 flex flex-col">
                                <a href="/admin/shop/allReply" class="no-underline text-white text-2xl">
                                    ${allReplyList.totalCount}
                                </a>
                                <a href="/admin/shop/allReply" class="no-underline text-white text-lg">
                                    총 댓글 목록 (상품)
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Card Sextion Starts Here -->
                    <div class="flex flex-1 flex-col md:flex-row lg:flex-row mx-2">

                        <!-- card -->
                        <div class="rounded overflow-hidden shadow bg-white mx-2 w-full">
                        </div>
                    </div>
                </div>
                <br><hr>
                <div>
                	<canvas id="pie-chart" width="600" height="600"></canvas>
                </div>
                
            </main>
            <!--/Main-->
        </div>
        <!--Footer-->
        <footer class="bg-grey-darkest text-white p-2">
            <div class="flex flex-1 mx-auto">
           	 	<%@ include file="../admin/include/footer.jsp" %>
            </div>
        </footer>
        <!--/footer-->
    </div>
</div>
	<script src="/resources/js/main2.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
	<script type="text/javascript">
		var member = ${memberList.totalCount};
		var order = ${orderList.totalCount};
		var qna = ${qnaList.totalCount};
		var reply = ${allReplyList.totalCount};
		
		new Chart(document.getElementById("pie-chart"), {
		    type: 'pie',
		    data: {
		      labels: ["총 회원 수", "총 주문 수", "총 문의 수", "총 댓글 수(상품)"],
		      datasets: [{
		        backgroundColor: ["#e46050", "#52bcdc", "#f4ab43", "#72b159"],
		        data: [member,order,qna,reply]
		      }]
		    },
		    options: {
		    	responsive: false,
			      title: {
			        display: true,
			      }
			    }
		});
	</script>
</body>

</html>
