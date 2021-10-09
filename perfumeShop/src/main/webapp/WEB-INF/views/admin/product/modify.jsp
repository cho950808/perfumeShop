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
                                상품 수정
                            </div>
                            
                            <div class="p-3">
                               <form role="form" method="post" autocomplete="off" enctype="multipart/form-data">
								<input type="hidden" name="pNum" value="${product.pNum}" />
                                    <div class="flex flex-wrap -mx-3 mb-6">               
										<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                                            <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                                   for="grid-state">
                                                1차 분류
                                            </label>
                                            
                                        	<div class="inputArea">
                                                <select class="category1 block appearance-none w-full bg-grey-300 border border-grey-300 text-grey-darker py-3 px-4 pr-15 rounded leading-tight focus:outline-none focus:bg-white focus:border-grey" id="pCategory1">
                                                    <option value="" id="pCategory1">전체</option>
                                                </select>
                                                
                                                <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-grey-darker">
                                                   
                                                </div>
                                            </div>
                                        </div>   
                                        
                                       <div class="inputArea w-full md:w-1/2 px-3 mb-6 md:mb-0">
                                            <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                                   for="grid-state">2차 분류 </label>
                                                <select class="category2 block appearance-none w-full bg-grey-300 border border-grey-300 text-grey-darker py-3 px-4 pr-15 rounded leading-tight focus:outline-none focus:bg-white focus:border-grey"
                                                name="pCateCode" id="pCategory2">
                                                    <option value="" id="pCategory2">전체</option>
                                                </select>
                                                
                                                <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-grey-darker">                   
                                               	 </div>
                                        </div>                         
                                    </div>
                                     <div class="w-full md:w-3/3 px-0 mb-5 md:mb-5">
                                            <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                                   for="pName">
                                                상품명
                                            </label>
                                            <input class="appearance-none block w-full bg-grey-200 text-grey-darker border border-grey-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-grey"
                                                   id="pName" type="text" name="pName" value="${product.pName}" />
                                     </div>

                                    <div class="flex flex-wrap -mx-3 mb-2">
                                        <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                                            <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                                   for="pPrice">
                                                상품가격
                                            </label>
                                            <input class="appearance-none block w-full bg-grey-200 text-grey-darker border border-grey-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-grey"
                                                   id="pPrice" type="text" name="pPrice" value="${product.pPrice}"/>
                                        </div>    
                                        
                                        
                                        <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                                            <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                                   for="pStock">
                                                상품수량
                                            </label>
                                            <input class="appearance-none block w-full bg-grey-200 text-grey-darker border border-grey-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-grey"
                                                   id="pStock" type="text" name="pStock" value="${product.pStock}"/>
                                        </div>
             						</div>
           
             						<br>
             							
             						<div class="w-full md:w-3/3 px-0 mb-10 md:mb-100">
                                            <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1" for="pDetail">
                                                상품소개
                                            </label>
										<textarea rows="5" cols="50" id="pDetail" name="pDetail">${product.pDetail}</textarea>	
									</div>
									
									<label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1">
                                    &nbsp;이미지</label>
									<div class="select_img">
                              				<img src="${product.pImg}" />
                              				<input type="hidden" name="pImg" value="${product.pImg}" />
                              				<input type="hidden" name="pThumbImg" value="${product.pThumbImg}" />	
                            		</div>
             						<br>
             								
									<div class="input-group mb-2">
                              			<label class="input-group-text" for="pImg">이미지</label>
                              			<input type="file" class="form-control" id="pImg" name="file" />
										
															
									</div>
									<br>
										<!-- 수정 및 취소 -->
										<div class="inputArea">
											<button type="submit" id="submit" class="btn btn-primary">완료</button>
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
	var jsonData = JSON.parse('${category}');

	var cate1Arr = new Array();
	var cate1Obj = new Object();

	for(var i = 0; i < jsonData.length; i++) {
		
		if(jsonData[i].level == "1") {
			cate1Obj = new Object();  //초기화
			cate1Obj.pCateCode = jsonData[i].pCateCode;
			cate1Obj.pCateName = jsonData[i].pCateName;
			cate1Arr.push(cate1Obj);
		}
	}

	var cate1Select = $("select.category1")

	for(var i = 0; i < cate1Arr.length; i++) {
		cate1Select.append("<option value='" + cate1Arr[i].pCateCode + "'>"
							+ cate1Arr[i].pCateName + "</option>");	
	}


	$(document).on("change", "select.category1", function(){

		var cate2Arr = new Array();
		var cate2Obj = new Object();
		
		for(var i = 0; i < jsonData.length; i++) {
			
			if(jsonData[i].level == "2") {
				cate2Obj = new Object();
				cate2Obj.pCateCode = jsonData[i].pCateCode;
				cate2Obj.pCateName = jsonData[i].pCateName;
				cate2Obj.pCateCodeRef = jsonData[i].pCateCodeRef;
				
				cate2Arr.push(cate2Obj);
			} 
		}
		
		var cate2Select = $("select.category2");
		
		
		
		cate2Select.children().remove();
	 
		$("option:selected", this).each(function(){
			
			var selectVal = $(this).val();		
					
			cate2Select.append("<option value='" + selectVal + "'>전체</option>");
			
			for(var i = 0; i < cate2Arr.length; i++) {
				if(selectVal == cate2Arr[i].pCateCodeRef) {
					cate2Select.append("<option value='" + cate2Arr[i].pCateCode + "'>"
										+ cate2Arr[i].pCateName + "</option>");
				}
			}		
		});
	});

	var select_pCateCode = '${product.pCateCode}';
	var select_pCateCodeRef = '${product.pCateCodeRef}';
	var select_pCateName = '${product.pCateName}';

	console.log("select_pCateCode = " + select_pCateCode);
	console.log("select_pCateCodeRef = " + select_pCateCodeRef);


	if(select_pCateCodeRef != null && select_pCateCodeRef != "") {
		
		console.log("값이 없으면");
		
		$(".category1").val(select_pCateCodeRef);
		$(".category2").val(select_pCateCode);
		$(".category2").children().remove();
		$(".category2").append("<option value='"
								+ select_pCateCode + "'>" + select_pCateName + "</option>");


		
		
	} else {
		
		console.log("값이 있으면");
		
		$(".category1").val(select_pCateCode);
		$(".category2").append("<option value='"
				+ select_pCateCode + "' selected='selected'>전체</option>");
	}


	$(document).ready(function() {
		$("#submit").on("click", function() {
			
			// 카테고리 1차
			var pCateCode = $("#pCategory1").val();
			if (pCateCode != '100') {
				alert("1차 분류 옵션을 선택해주세요.");
				return false;
			}
			
			// 카테고리 2차
			var pCateCode2 = $("#pCategory2").val();
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
		$("#pImg")
					.change(
						function() {
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

	<script>
		$("#back_Btn").click(function() {

			//history.back();
			location.href = "/admin/product/view?n=" + $
			{
				product.pNum
			}
			;
		});
	</script>

</body>
</html>