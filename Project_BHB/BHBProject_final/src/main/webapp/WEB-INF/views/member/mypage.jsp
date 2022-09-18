<%@page import="com.dto.LessorDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

/*  	$(document).ready(function() {
		$("#lessorOffer").on("click", function(e) {
			if (${lessor.userid}==null) {
				alert("권한이 없습니다.");
				e.preventDefault();
		})
	});
  */
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<section id="main" class="container">
<div class="box">
<c:if test="${login != null}">
	<c:if test="${admin!=true }">
		<p><a href="memberModify"  class="button alt fit small">회원정보수정</a><p>
		
		<c:if test="${lessor== null}">
		<p><a href="lessor"  class="button special fit">공인중개사 등록</a><p>
		</c:if>
	
		<c:if test="${lessor != null}">
		<p><a href="lessorOffer_mp" id="lessorOffer"  class="button fit small">월세 매물등록</a></p>
		<p><a href="lessorOffer_yp" id="lessorOffer"  class="button alt fit small">전세 매물등록</a></p>
		<p><a href="boardLessor_write" id="boardLessor_write" class="button fit small" >정보게시판작성</a></p>
		<p><a href="myBoardList" id="myBoardList" class="button alt fit small">나의 글 목록</a></p>
		
		</c:if>
	
	</c:if>
	<c:if test="${admin==true }">
			<p><a href="admin"  class="button alt fit small">회원관리</a><p>
			<p><a href="boardNotice_write"  class="button fit small">공지사항 작성</a><p>
	</c:if>
</c:if>
</div>
</section>
</body>
</html>