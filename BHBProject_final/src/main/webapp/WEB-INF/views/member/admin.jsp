<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function(){
			
		
	 	//선택
        $("#allCheck1").on("click", function() {
            var result= this.checked;
            console.log(result);
            $(".check1").each(function(idx, data) {
                this.checked= result;
            }); 
        });
		
     	//멤버 모두 지우기
        $("#deleteAll").on("click", function() {
        	
        	$(".check1").each(function(idx, data) {
                 if(this.checked){
                	 $("#memberForm").attr("action", "deleteAll");
             		$("#memberForm").submit();
                 }
             });
        	 
    		
    	});
        

        
        //개별삭제
        $(".deleteBtn").on("click", function () {
			console.log("deleteBtn 클릭 ");
			var userid= $(this).attr("data-value");
			var xxx= $(this);
			$.ajax({
				url: "delMember",
				type:"get",
				dataType: "text",
				data: {
					userid: userid
				},
				success: function(data, status, xhr) {
					console.log("success");
					//dom삭제 
					xxx.parents().filter("tr").remove();
				},
				error: function(xhr, status, error) {
					console.log(error);
				}			
			});//end ajax
		});//end event
		
	});//function end


</script>
<style>
.deleteBtn .delYPCart reserveBtn
{width:200px;}
</style>

<section id="main" class="container">
<h3>&nbsp;&nbsp;&nbsp;&nbsp;Member</h3>
<div class="box">


<table width="100%" class="alt" >
	
	<tr><strong></strong></tr>
	<tr></tr>
	<tr>
		<th class="td_default" align="center">
		<input type="checkbox" id="allCheck1">
		<label for="allCheck1"></label> <strong></strong></th> 
		<th  align="center"><strong>아이디</strong></th>  <!-- gCode -->
		<th align="center"><strong>이름</strong></th>  <!-- gImage -->
		<th align="center"><strong>주소</strong></th> <!-- address/location -->
		<th align="center"><strong>전화번호</strong></th> <!-- address/location -->

		<th align="center"><strong>이메일</strong></th>
		<th></th>

		<!-- 총 9개 -->
		
	</tr>
	<tr></tr>
	
	
	

<form id="memberForm">
	    	    
<!-- 반복시작 -->
<c:forEach var="m" items="${mlist}">

	

		<tr>
			<td class="td_default" align="center">
			<!-- checkbox는 체크된 값만 서블릿으로 넘어간다. 
			따라서 value에 삭제할 num값을 설정한다. -->
			<input type="checkbox"
				name="check1" id="check${m.userid}" class="check1" 
				value="${m.userid}">
				<label for="check${m.userid}"></label></td>
			<td class="td_default" align="center">${m.userid}</td>
			<td class="td_default" align="center">${m.username}</td>
			<td class="td_default"  align="center">
			<font size="4">${m.post}</font>
				<br> <font size="3" color="#665b5f">[주소 : ${m.addr2} ]
			</font></td>
			<td class="td_default"align="center"><font size="3">${m.phone1 }-${m.phone2 }-${m.phone3 }</font></td>
		
			
			<td class="td_default align="center"><font size="4">${m.email1 }@${m.email2 }</font> <br>
			</td>
			
			<td>
			<input type="button" class="deleteBtn"value="삭제" data-value="${m.userid}">
                </td>
			
		</tr>

 <!-- 반복끝 --> 
</c:forEach>

</form>
	
	<tr>
		<td colspan="9">
		<input type="button"  value="선택삭제" id="deleteAll">
		</td>
	</tr>

</table>
</div>
</section>

    