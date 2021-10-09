<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="main-header header-sticky">
	<div class="container-fluid">
		<div class="menu-wrapper">
			<!-- Logo -->
			<div class="logo">
				<a href="/"><img src="../resources/img/logo/logo.png" alt=""></a>
			</div>
			<!-- Main-menu -->
			<div class="main-menu d-none d-lg-block">
				<nav>
					<ul id="navigation">
						<li><a href="/">Home</a></li>
						<li><a href="/shop/product">shop</a></li>
						<li><a href="/notice/noticeList">service</a>
							<ul class="submenu">
								<li><a href="/notice/noticeList" style="font-family: 'Noto Serif KR', serif;">공지사항</a></li>
								<li><a href="/shop/offShop" style="font-family: 'Noto Serif KR', serif;">찾아오시는 길</a></li>
							</ul></li>
						<li><a href="/qna/qnaList">QnA</a>
					</ul>
				</nav>
			</div>
			<!-- Header Right -->
			<div class="header-right d-none d-lg-block">
				<div id="root">
					<nav id="nav">
						<div id="nav_box">
							<%@ include file="../include/nav.jsp"%>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- Mobile Menu -->
	<div class="col-12">
		<div class="mobile_menu d-block d-lg-none"></div>
	</div>
</div>