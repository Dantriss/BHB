<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>상품 자세히 보기 화면</h1>
<jsp:include page="common/top.jsp" flush="true"></jsp:include><BR>
<hr>
<jsp:include page="common/goods/goodsRetrieveYP.jsp" flush="true"></jsp:include>
<jsp:include page="common/goods/goodsRetrieveMP.jsp" flush="true"></jsp:include>
</body>
</html>