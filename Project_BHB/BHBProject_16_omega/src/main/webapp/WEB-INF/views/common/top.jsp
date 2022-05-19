<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
	<head>
		<title>Contact </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header">
					<h1><a href="main">BHB</a></h1>
					<nav id="nav">
						<ul>
							<li><a href="main">Home</a></li>
							<li>
								
								<c:if test="${empty login }">
								<ul>
									<li><a href="loginForm">로그인</a></li>
									<li><a href="memberForm">회원가입</a></li>
									
									<!-- <li>
										<a href="#">Submenu</a>
										<ul>
											<li><a href="#">Option One</a></li>
											<li><a href="#">Option Two</a></li>
											<li><a href="#">Option Three</a></li>
											<li><a href="#">Option Four</a></li>
										</ul>
									</li> -->
								</ul>
								</c:if>
								
								<c:if test="${!empty login }">
								
								
								<li><a href="loginCheck/myPage">마이페이지</a></li>
								<li><a href="loginCheck/bookMark">즐겨찾기</a></li>
								<li><a href="loginCheck/logout">로그아웃</a></li>
								
								
								</c:if>
								
							</li>
							
						</ul>
						
					</nav>
				</header>
			

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>

