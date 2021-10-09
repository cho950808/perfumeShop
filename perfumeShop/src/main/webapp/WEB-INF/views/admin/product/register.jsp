<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
     <!-- Css -->
    <link rel="stylesheet" href="/resources/css/adminAll.css">
    <link rel="stylesheet" href="/resources/css/adminStyles.css">
    <link rel="stylesheet" href="/resources/css/adminlte.css">
    <link rel="stylesheet" href="/resources/css/adminStyles2.css">
    <link rel="shortcut icon" type="image/x-icon" href="../../resources/img/24.png">
    <title>Perfume Shop Admin</title>
</head>

<body>
<!--Container -->
<div class="mx-auto bg-grey-lightest" id="root">
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
                    <div class="flex flex-1  flex-col md:flex-row lg:flex-row mx-2">
                        <div class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">
                            <div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b text-white text-bold">
                                상품 등록
                            </div>
                            
                            <div class="p-3">
                                <form role="form" method="post" autocomplete="off" enctype="multipart/form-data" class="w-full" id="regForm">
                                
                                	<!-- 상품 카테고리 -->
                                    <div class="flex flex-wrap -mx-3 mb-6">
                                    
                                  		<!-- 1차 분류 -->
										<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                                            <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1" for="grid-state">
                                                1차 분류
                                            </label>
                                            
                                        	<div class="inputArea">
                                                <select class="category1 block appearance-none w-full bg-grey-300 border border-grey-300 text-grey-darker py-3 px-4 pr-15 rounded leading-tight focus:outline-none focus:bg-white focus:border-grey" id="pCategory1">
                                                    <option value="" id="pCategory1">전체</option>
                                                </select>
                                                <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-grey-darker"></div>
                                            </div>
                                        </div>
                                        
                                       <!-- 2차 분류 -->
                                       <div class="inputArea w-full md:w-1/2 px-3 mb-6 md:mb-0">
                                            <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1" for="grid-state">2차 분류 </label>
                                                <select class="category2 block appearance-none w-full bg-grey-300 border border-grey-300 text-grey-darker py-3 px-4 pr-15 rounded leading-tight focus:outline-none focus:bg-white focus:border-grey" name="pCateCode" id="pCategory2">
                                                    <option value="" id="pCategory2">전체</option>
                                                </select>
                                             <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-grey-darker"></div>
                                        </div>  
                                    </div>          
                                   
                                     <div class="w-full md:w-3/3 px-0 mb-5 md:mb-5">
                                            <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                                   for="pName">
                                                상품명
                                            </label>
                                            <input class="appearance-none block w-full bg-grey-200 text-grey-darker border border-grey-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-grey"
                                                   id="pName" type="text" name="pName" placeholder="ex).향수">
                                     </div>

                                    <div class="flex flex-wrap -mx-3 mb-2">
                                        <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                                            <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                                   for="pPrice">
                                                상품가격
                                            </label>
                                            <input class="appearance-none block w-full bg-grey-200 text-grey-darker border border-grey-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-grey"
                                                   id="pPrice" type="text" name="pPrice" placeholder="ex).50,000">
                                        </div>    
                                        
                                        
                                        <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                                            <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                                   for="pStock">
                                                상품수량
                                            </label>
                                            <input class="appearance-none block w-full bg-grey-200 text-grey-darker border border-grey-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-grey"
                                                   id="pStock" type="text" name="pStock" placeholder="ex).5개">
                                        </div>
             						</div>

             						<br>
             							
             						<div class="w-full md:w-3/3 px-0 mb-10 md:mb-100">
                                            <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1" for="grid-city">
                                                상품소개
                                            </label>
										<textarea rows="5" cols="50" id="pDetail" name="pDetail"></textarea>

									</div>
             															
									<div class="input-group mb-2">
                              			<label class="input-group-text" for="inputGroupFile01" id="pImg">이미지</label>
                              			<input type="file" class="form-control" id="pImg" name="file">
                              			<div class="select_img"><img src="" />
                            			</div>
										
													
									</div>
									<br>
									<div class="inputArea">
										<button type="submit" id="submit" class="btn btn-primary">등록</button>
									</div>			
									
								</form>
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
	<script src="/resources/ckeditor/ckeditor.js"></script>
	<script>
	// 컨트롤러에서 데이터 받기
	var jsonData = JSON.parse('${category}');

	// 필요한 배열과 오브젝트 변수 생성
	var cate1Arr = new Array();
	var cate1Obj = new Object();

	// 1차 분류 셀렉트 박스에 삽입할 데이터 준비
	for(var i = 0; i < jsonData.length; i++) {
		
		if(jsonData[i].level == "1") {  // 레벨이 1인 데이터가 있다면 
			cate1Obj = new Object();  // 초기화
			
			// cate1Obj에 pCateCode와 pCateName를 저장
			cate1Obj.pCateCode = jsonData[i].pCateCode; 
			cate1Obj.pCateName = jsonData[i].pCateName;
			
			// cate1Obj에 저장된 값을 cate1Arr 배열에 저장
			cate1Arr.push(cate1Obj);
		}
	}

	// 1차 분류 셀렉트 박스에 데이터 삽입
	var cate1Select = $("select.category1")

	for(var i = 0; i < cate1Arr.length; i++) {

		// cate1Arr에 저장된 값을 cate1Select에 추가
		cate1Select.append("<option value='" + cate1Arr[i].pCateCode + "'>"
							+ cate1Arr[i].pCateName + "</option>");	
	}


	// 클래스가 category1인 select변수의 값이 바뀌었을 때 실행
	$(document).on("change", "select.category1", function(){

		
		// 필요한 배열과 오브젝트 변수를 생성
		var cate2Arr = new Array();
		var cate2Obj = new Object();
		
		// 2차 분류 셀렉트 박스에 삽입할 데이터 준비
		for(var i = 0; i < jsonData.length; i++) {
			
			if(jsonData[i].level == "2") {  // 레빌이 2인 데이터가 있다면
				cate2Obj = new Object();  // 초기화
				
				// cate2Obj에 pCateCode, pCateName, pCateCodeRef를 저장
				cate2Obj.pCateCode = jsonData[i].pCateCode;
				cate2Obj.pCateName = jsonData[i].pCateName;
				cate2Obj.pCateCodeRef = jsonData[i].pCateCodeRef;
				
				// cate2Obj에 저장된 값을 cate1Arr 배열에 저장
				cate2Arr.push(cate2Obj);
			} 
		}
		
		var cate2Select = $("select.category2");
		
		// cate2Select의 값을 제거함(초기화)
		cate2Select.children().remove();
	 
		// cate1Select에서 선택한 값을 기준으로 cate2Select의 값을 조정
		$("option:selected", this).each(function(){
			
			var selectVal = $(this).val();  // 현재 선택한 cate1Select의 값을 저장
		
			cate2Select.append("<option value='" + selectVal + "'>전체</option>");  // cate2Select의 '전체'에 현재 선택한 cate1Select와 같은 값 부여
			
			// cate2Arr의 데이터를 cate2Select에 추가
			for(var i = 0; i < cate2Arr.length; i++) {
				
				// 현재 선택한 cate1Select의 값과 일치하는 cate2Arr의 데이터를 가져옴
				if(selectVal == cate2Arr[i].pCateCodeRef) {
					cate2Select.append("<option value='" + cate2Arr[i].pCateCode + "'>"
										+ cate2Arr[i].pCateName + "</option>");
				}
			}		
		});
		
	});
	
	
	$(document).ready(function() {
		$("#submit").on("click", function() {
			
			var pCateCode = $("#pCategory1").val();
			var pCateCode2 = $("#pCategory2").val();
			
			// 카테고리 1차
			if (pCateCode != '100') {
				alert("1차 분류 옵션을 선택해주세요.");
				return false;
			}
			
			// 카테고리 2차
			if (pCateCode2 != '101' && pCateCode2 != '102' && pCateCode2 != '103' && pCateCode2 != '104') {
				alert("2차 분류 옵션을 선택해주세요.");
				return false;
			}
			
			// 상품명
			if ($("#pName").val() == "") {
				alert("상품을 입력해주세요.");
				$("#pName").focus();
				return false;
			}
	
			// 상품가격
			if ($("#pPrice").val() == "") {
				alert("가격을 입력해주세요.");
				$("#pPrice").focus();
				return false;
			}

			// 상품수량
			if ($("#pStock").val() == "") {
				alert("수량을 입력해주세요.");
				$("#pStock").focus();
				return false;
			}
		});
	})
	
	
	</script>

	<script>
		var regExp = /[^0-9]/gi;
	
		$("#pPrice").keyup(function(){ numCheck($(this)); });
		$("#pStock").keyup(function(){ numCheck($(this)); });
	
		function numCheck(selector) {
			var tempVal = selector.val();
			selector.val(tempVal.replace(regExp, ""));
		}
	</script>

	<script>
		var ckeditor_config = {
			resize_enaleb : false,
			enterMode : CKEDITOR.ENTER_BR,
			shiftEnterMode : CKEDITOR.ENTER_P,
			filebrowserUploadUrl : "/admin/product/ckUpload"
		};

		CKEDITOR.replace("pDetail", ckeditor_config);
	</script>

	<script>
		$("#gdsImg").change(function() {
			if (this.files && this.files[0]) {
				var reader = new FileReader;
			reader.onload = function(data) {
			$(".select_img img").attr("src",
				data.target.result).width(500);
			}
				reader.readAsDataURL(this.files[0]);
			}
		});
	</script>

</body>
</html>