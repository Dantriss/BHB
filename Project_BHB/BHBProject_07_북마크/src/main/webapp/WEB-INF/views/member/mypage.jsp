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




<h1>
<c:if test="${login != null}">

<a href="memberModify">회원정보수정</a>&nbsp;<br>
<c:if test="${lessor== null}">
<a href="lessor">공인중개사 등록</a>&nbsp;<br>
</c:if>

<c:if test="${lessor != null}">
<a href="lessorOffer_mp" id="lessorOffer">월세 매물등록</a>&nbsp;<br>
<a href="lessorOffer_yp" id="lessorOffer">전세 매물등록</a>&nbsp;<br>
</c:if>

</c:if>
</h1>



</body>
</html>