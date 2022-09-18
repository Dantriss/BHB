<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<c:if test="${goodsRetrieveYP!=null}">
<jsp:include page="common/goods/goodsRetrieveYP.jsp" flush="true"></jsp:include>
</c:if>
<c:if test="${goodsRetrieveMP!=null}">
<jsp:include page="common/goods/goodsRetrieveMP.jsp" flush="true"></jsp:include>
</c:if>
</body>
</html>