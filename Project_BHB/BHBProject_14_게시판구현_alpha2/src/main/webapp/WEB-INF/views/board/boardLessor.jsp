<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">
function nextBtn(){
	var num=${boardLessor.bl_num}+1;
	location.href="boardLessor?num="+num;
}
function preBtn(){
	var num=${boardLessor.bl_num}-1;
	location.href="boardLessor?num="+num;
}
</script>


			
			<!-- Main -->
				<section id="main" class="container">
					<header>
						<h2>정보게시판</h2>
					</header>
					<div class="box">
						<span class="image featured"><img src="images/pic07.jpg" alt="" /></span>
						<h3>${boardLessor.bl_num} . ${boardLessor.bl_title}</h3>
						
						<c:if test="${nosplit}"> <!-- #없으면 -->
						<p>${boardLessor.bl_content} </p>
						</c:if>
						<c:if test="${!content0.isEmpty()}">
						<p>${content0} </p>
						</c:if>
						
						
						<div class="row">
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content1.isEmpty()}">
								<p> ${content1}</p>
								</c:if>
							</div>
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content2.isEmpty()}">
								<p> ${content2}</p>
								</c:if>
							</div>
						</div>
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

	
