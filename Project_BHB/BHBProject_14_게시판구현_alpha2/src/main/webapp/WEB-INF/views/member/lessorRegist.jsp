<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

 


</script>
    
  
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
<form action="loginCheck/lessorAdd" method="post" >
닉네임 : <input type="text" name="nickname" id="nickname"><br>
<input type="hidden" name="userid" id="userid" value="${login.userid }">
<input type="hidden" name="passwd" id="passwd" value="${login.passwd }">
<input type="hidden" name="post" id="sample4_postcode" placeholder="우편번호" class="i" value="${login.post }">
<input type="hidden" name="addr1" id="sample4_roadAddress" placeholder="도로명주소" class="i" value="${login.addr1 }">
<input type="hidden" name="addr2" id="sample4_jibunAddress" placeholder="지번주소" class="i" value="${login.addr2 }">
<input type="hidden" name="phone1" id="phone1" value="${login.phone1 }">
<input type="hidden" name="phone2" id="phone2" value="${login.phone2 }">
<input type="hidden" name="phone3" id=phone3 class="i" value="${login.phone3 }">
<input type="hidden" name="email1" id="email1" class="i" value="${login.email1 }">
<input type="hidden" name="email2" id="email2" placeholder="직접입력" value="${login.email2 }">
<input type="submit" value="인증하기">
<input type="reset" value="취소">
</form>
</body>