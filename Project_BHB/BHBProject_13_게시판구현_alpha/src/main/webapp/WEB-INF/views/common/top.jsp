<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<header id="header" class="alt">
					<h1><a href="index.html">BHB</a></h1>
					<nav id="nav">
						<ul>
							<li><a href="main">Home</a></li>
							<li>
								<a href="#" class="icon solid fa-angle-down">menu</a>
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