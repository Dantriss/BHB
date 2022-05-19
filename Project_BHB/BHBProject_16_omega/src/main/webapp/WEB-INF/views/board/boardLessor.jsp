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
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${boardLessor.bl_content} </p>
						</c:if>
						<c:if test="${!content0.isEmpty()}">
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${content0} </p>
						</c:if>
						
						
						<div class="row">
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content1.isEmpty()}">
								<p>${content1}</p>
								</c:if>
							</div>
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content2.isEmpty()}">
								<p>${content2}</p>
								</c:if>
							</div>
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content3.isEmpty()}">
								<p>${content3}</p>
								</c:if>
							</div>
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content4.isEmpty()}">
								<p>${content4}</p>
								</c:if>
							</div>
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content5.isEmpty()}">
								<p>${content5}</p>
								</c:if>
							</div>
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content6.isEmpty()}">
								<p>${content6}</p>
								</c:if>
							</div>
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content7.isEmpty()}">
								<p>${content7}</p>
								</c:if>
							</div>
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content8.isEmpty()}">
								<p>${content8}</p>
								</c:if>
							</div>
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content9.isEmpty()}">
								<p>${content9}</p>
								</c:if>
							</div>
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content10.isEmpty()}">
								<p>${content10}</p>
								</c:if>
							</div>
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content11.isEmpty()}">
								<p>${content11}</p>
								</c:if>
							</div>
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content12.isEmpty()}">
								<p>${content12}</p>
								</c:if>
							</div>
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content13.isEmpty()}">
								<p>${content13}</p>
								</c:if>
							</div>
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content14.isEmpty()}">
								<p>${content14}</p>
								</c:if>
							</div>
							<div class="row-6 row-12-mobilep">
								<c:if test="${!content15.isEmpty()}">
								<p>${content15}</p>
								</c:if>
							</div>
						</div>
						<div class="row">
							<ul class="actions fit small">
								<li>
								<c:if test="${!min_num}">
								<a href="javascript:preBtn()"  class="button alt fit small">이전글</a>
								</c:if>
								</li>
								<li>
								<c:if test="${!max_num}">
								<a href="javascript:nextBtn()"  class="button alt fit small">다음글</a>
								</c:if>
								</li>
							</ul>	
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

	
