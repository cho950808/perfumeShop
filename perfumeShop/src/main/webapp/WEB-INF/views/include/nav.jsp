<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<ul id="navigation">
<c:if test="${member == null}">
    <li>
        <a href="/member/signin" style="font-family: 'Noto Serif KR', serif;">로그인</a>
    </li>
    <li>
        <a href="/member/signup" style="font-family: 'Noto Serif KR', serif;">회원가입</a>
    </li>
</c:if>
<c:if test="${member != null}">

<c:if test="${member.mVerify == 255}">
<li>
    <a href="/admin/index" style="font-family: 'Noto Serif KR', serif;">관리자 화면</a>
</li>
</c:if>

    <li>
        <a style="font-family: 'Noto Serif KR', serif;" >${member.mUserName}님</a>
    <ul class="submenu">
    <li>
        <a href="/member/myPageView" style="font-family: 'Noto Serif KR', serif;">마이페이지</a>
    </li>
    <li>
        <a href="/shop/cartList" style="font-family: 'Noto Serif KR', serif;">장바구니</a>
    </li>
    <li>
        <a href="/shop/orderList" style="font-family: 'Noto Serif KR', serif;">주문내역</a>
    </li>
    </ul>
    </li>
    <li>
        <a href="/member/signout" style="font-family: 'Noto Serif KR', serif;">로그아웃</a>
    </li>
</c:if>

</ul>