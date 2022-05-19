<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

  $(document).ready(function() {
 	$("form").on("submit", function(e) {
 		if ($("#regist").val() != 44) {
 			alert("인증번호를 확인해주세요.");
			e.preventDefault();
		};
 	});
 });

</script>

<style>
body{
text-align:center;}
</style>
<body>
<form action="lessorRegist" method="get">
인증번호 :<input type="text" name="regist" id="regist"><br>
<input type="submit" value="인증하기">
<input type="reset" value="취소">
</form>
</body>