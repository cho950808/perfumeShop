<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<aside class="single_sidebar_widget post_category_widget">
	<h3 class="widget_title" style="font-family: 'Noto Serif KR', serif; font-weight: bold ;" >Category</h4>
	<ul class="list cat-list">
		<li><a href="/member/myPageView" class="d-flex">
				<p style="font-family: 'Noto Serif KR', serif;">마이페이지</p>
		</a></li>
		<li><a href="/member/PassChangeView" class="d-flex">
				<p style="font-family: 'Noto Serif KR', serif;">비밀번호 변경</p>
		</a></li>
		<li><a href="/shop/orderList" class="d-flex">
				<p style="font-family: 'Noto Serif KR', serif;">주문내역</p>
		</a></li>
		<li><a href="/shop/cartList" class="d-flex">
				<p style="font-family: 'Noto Serif KR', serif;">장바구니</p>
		</a></li>
		<li><a href="/member/memberDeleteView" class="d-flex">
				<p style="font-family: 'Noto Serif KR', serif;">회원탈퇴</p>
		</a></li>
	</ul>
</aside>