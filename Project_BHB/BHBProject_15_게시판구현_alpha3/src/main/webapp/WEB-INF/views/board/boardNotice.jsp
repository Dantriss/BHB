<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">

function nextBtn(){
	var num=${boardNotice.bn_num}+1;
	location.href="boardNotice?num="+num;
}

function preBtn(){
	var num=${boardNotice.bn_num}-1;
	location.href="boardNotice?num="+num;
}
</script>

	
			<!-- Main -->
				<section id="main" class="container">
					<header>
						<h2>공지사항</h2>
					</header>
					<div class="box">
						<span class="image featured"><img src="images/pic11.jpg" alt="" /></span>
						<h3>${boardNotice.bn_num} . ${boardNotice.bn_title}</h3>
						<p>${boardLessor.bl_content} </p>
						<div class="row">
								<c:if test="${!min_num}">
								<input type="button" value="이전글" onclick="preBtn()">
								</c:if>
								&nbsp;&nbsp;&nbsp;
								<c:if test="${!max_num}">
								<input type="button" value="다음글" onclick="nextBtn()">
								</c:if>
								
						</div>
					</div>
				</section>


		

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

