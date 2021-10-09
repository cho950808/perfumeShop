<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<aside id="sidebar"
	class="bg-side-nav w-1/2 md:w-1/6 lg:w-1/6 border-r border-side-nav hidden md:block lg:block">
	<ul class="list-reset flex flex-col">
		<li class=" w-full h-full py-3 px-2 border-b border-light-border">
			<a href="/admin/index"
			class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
				&nbsp; &nbsp; 대시보드 </a>
		</li>
		<li class=" w-full h-full py-3 px-2 border-b border-light-border">
			<a href="/admin/member/memberList"
			class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
				&nbsp; &nbsp; 회원목록 </a>
		</li>
		<li class="w-full h-full py-3 px-2 border-b border-light-border">
			<a href="/admin/product/register"
			class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
				&nbsp; &nbsp; 상품등록 </a>
		</li>
		<li class="w-full h-full py-3 px-2 border-b border-light-border">
			<a href="/admin/product/list"
			class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
				&nbsp; &nbsp; 상품목록 </a>
		</li>
		<li class="w-full h-full py-3 px-2 border-b border-light-border">
			<a href="/admin/shop/orderList"
			class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
				&nbsp; &nbsp; 주문목록 </a>
		</li>
		<li class="w-full h-full py-3 px-2 border-b border-light-border">
			<a href="/admin/shop/allReply"
			class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
				&nbsp; &nbsp; 상품댓글 </a>
		</li>
		<li class="w-full h-full py-3 px-2 border-b border-light-border">
			<a href="/admin/qna/qnaList"
			class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
				&nbsp; &nbsp; 문의답변 </a>
		</li>
		<li class="w-full h-full py-3 px-2 border-b border-light-border">
			<a href="/admin/notice/noticeList"
			class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
				&nbsp; &nbsp; 공지사항 </a>
		</li>
	</ul>
</aside>