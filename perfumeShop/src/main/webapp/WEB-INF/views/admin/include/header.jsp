<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="flex justify-between">
	<div class="p-1 mx-3 inline-flex items-center">
		<h1 class="text-white p-2">perfume Admin</h1>
	</div>
	<div class="p-1 flex flex-row items-center">
		<a href="/" class="text-white p-2 mr-2 no-underline hidden md:block lg:block">일반
			화면</a> 
			<a href="#" onclick="profileToggle()" class="text-white p-2 no-underline hidden md:block lg:block">${member.mUserName}</a>
		<div id="ProfileDropDown" class="rounded hidden shadow-md bg-white absolute pin-t mt-12 mr-1 pin-r">
			<ul class="list-reset">
				<c:if test="${member != null}">
					<li><a href="/member/signout"
						class="no-underline px-4 py-2 block text-black hover:bg-grey-light">로그아웃</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</div>