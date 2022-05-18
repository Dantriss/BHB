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
<jsp:include page="../common/top.jsp" flush="true"></jsp:include> <br>
${boardNotice.bn_num} <br>
${boardNotice.bn_title} 

<c:if test="${!min_num}">
<button onclick="preBtn()">이전 글</button>
</c:if>

<c:if test="${!max_num}">
<button onclick="nextBtn()">다음 글</button>
</c:if>