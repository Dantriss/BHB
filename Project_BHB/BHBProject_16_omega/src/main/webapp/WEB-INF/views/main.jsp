<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%-- <jsp:include page="common/top.jsp" flush="true"></jsp:include> <br>
<jsp:include page="common/menu.jsp" flush="true"></jsp:include> <br>
 --%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Team 1</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="landing is-preload">
		<div id="page-wrapper">

			<!-- Header -->
			 <header id="header" class="alt">
					<h1><a href="main">BHB</a></h1>
					<nav id="nav">
						<ul>
							<li><a href="main">Home</a></li>
							<li>
								
								<c:if test="${empty login }">
							
									<li><a href="loginForm">로그인</a></li>
									<li><a href="memberForm">회원가입</a></li>
							
								
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
				

			<!-- Banner -->
				<section id="banner">
					<h2>BHB</h2>
					<p>A night of real estate counting</p>
					<ul class="actions special">
					<c:if test="${empty login }">
						<li><a href="loginForm" class="button primary">Sign Up</a></li>
						<li><a href="memberForm" class="button">Join Us</a></li>
						</c:if>
					</ul>
				</section>

			<!-- Main -->
			<section id="main" class="container">
<!-- 
					<section class="box special">
						<header class="major">
							<h2>BHB
							<br />
						A night of real estate counting</h2>
						</header>
						<span class="image featured"><img src="images/pic01.jpg" alt="" /></span>
					</section>
 -->
					<section class="box special features">
						<div class="features-row">
							<section>
							<p>공지사항</p>
								 <jsp:include page="common/board/boardNotice.jsp" flush="true"></jsp:include>
							</section>
							<section>
							<p>정보게시판</p>
								<jsp:include page="common/board/boardLessor.jsp" flush="true"></jsp:include>
							</section>
						</div>
						<hr>
						<div>
							<section>
								<p>매물리스트</p>
							 <jsp:include page="common/goods/goodsList.jsp" flush="true"></jsp:include>
							</section>
						</div>
					</section>
					<!-- Footer -->
				<footer id="footer">
					<ul class="icons">
						
						<li><a href="https://github.com/Dantriss/BHB.git" class="icon brands fa-github"><span class="label">Github</span></a></li>
						
					</ul>
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</footer>
					
				

				</section>

			

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