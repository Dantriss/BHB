<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  
<c:if test="${!empty mesg }">
	<script>
		alert('${mesg}');
	</script>
	
	
</c:if>
<style>
body{
text-align:center;}
</style>
<body>
<section id="main" class="container medium">
<div class="box">
<form action="login" method="get">

								
							
	<div class="col-12">
	아이디:<input type="text" name="userid"><br>
	</div>
	<div class="col-12">
	비밀번호:<input type="text" name="passwd"><br>
	</div>
<input type="submit" value="로그인">
<input type="reset" value="취소">

</form>
</div>
</section>
</body>