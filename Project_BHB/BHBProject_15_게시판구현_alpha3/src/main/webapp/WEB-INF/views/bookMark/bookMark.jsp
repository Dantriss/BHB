<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function(){
		//전체선택 전세
		
		 $(".reserveBtn").on("click",function(){
            var num= $(this).attr("data-num");
          
            location.href="loginCheck/reserve?num="+num;
        });
		
        $("#allCheck1").on("click", function() {
            var result= this.checked;
            console.log(result);
            $(".check1").each(function(idx, data) {
                this.checked= result;
            }); 
        }); //yp

        //전체선택 월세
        $("#allCheck2").on("click", function() {
            var result= this.checked;
            console.log(result);
           $(".check2").each(function(idx, data) {
                this.checked= result;
            }); 
        }); //mp
        $("#delMPCart").on("click", function() {
        	
        	$(".check2").each(function(idx, data) {
                 if(this.checked){
                	 $("#mpForm").attr("action", "loginCheck/delMPBookMark");
             		$("#mpForm").submit();
                 }
             });
        	 
    		
    	});
        
        $("#delYPCart").on("click", function() {
        	$(".check1").each(function(idx, data) {
                if(this.checked){
                	$("#ypForm").attr("action", "loginCheck/delYPBookMark");
            		$("#ypForm").submit();
                }
            });
    		
    	});
        
        //개별삭제
        $(".deleteBtn").on("click", function () {
			console.log("deleteBtn 클릭 ");
			var num= $(this).attr("data-num");
			var xxx= $(this);
			$.ajax({
				url: "loginCheck/bookMarkDelete",
				type:"get",
				dataType: "text",
				data: {
					num: num
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

<div class="box">

<div class="table-wrapper">
<table width="100%" class="alt" >
	
	<tr><strong>전세목록</strong></tr>
	<tr></tr>
	<tr>
		<th class="td_default" align="center">
		<input type="checkbox" id="allCheck1">
		<label for="allCheck1"></label> <strong></strong></th> 
		<th><strong>매물번호</strong></th>  <!-- gCode -->
		<th><strong>매물사진</strong></th>  <!-- gImage -->
		<th><strong>매물정보</strong></th> <!-- address/location -->
		<th><strong>원/투룸</strong></th> <!-- address/location -->
		<th ><strong>전세금</strong></th> <!-- gPrice_YP  -->
		<th ><strong>중개인 정보</strong></th><!-- lessor의 userid -->
		<th><strong>예약</strong></th>
		<th></th>
		<!-- 총 9개 -->
		
	</tr>
	
	
	

<form id="ypForm">
	    	    
<!-- 반복시작 -->
<c:forEach var="yp" items="${yplist}">

	

		<tr>
			<td class="td_default" align="center">
			<!-- checkbox는 체크된 값만 서블릿으로 넘어간다. 
			따라서 value에 삭제할 num값을 설정한다. -->
			<input type="checkbox"
				name="check1" id="check${yp.num}" class="check1" 
				value="${yp.num}">
				<label for="check${yp.num}"></label>
				</td>
			<td class="td_default" align="center">${yp.num}</td>
			<td class="td_default">
			<img src="Mimages/${yp.gImage1}.jpg" border="0" align="center"
				width="80" alt="img"/></td>
			<td class="td_default"  align="center">
			${yp.address}
				<br> <font size="2" color="#665b5f">[설명 : ${yp.location} ]
			</font></td>
			<td class="td_default"align="center">${yp.room }</td>
			<td class="td_default"align="center" >
			<span id="ggPrice${yp.num}">${yp.gPrice_YP} 만원</span></td>
			<td class="td_default align="center">${yp.nickname } <br>
			<font size="2" color="#665b5f">[${yp.phone1}-${yp.phone2}-${yp.phone3}]</font></td>
			<td align="center"><input type="button" value="예약" class="reserveBtn"
				data-num="${yp.num}"></td>
			<td>
			<input type="button" value="삭제" class="deleteBtn"
                data-num="${yp.num}">
                </td>
			
		</tr>

 <!-- 반복끝 --> 
</c:forEach>

</form>
	
	<tr>
		<th height="10">
		<input type="button"value="선택삭제" id="delYPCart">
	</tr>
	</tbody>
</table>
</div>


<table width="100%" cellspacing="1" cellpadding="1" border="0" >

	<tr>
		<td height="30">
	</tr>

	<tr>
		<td colspan="5" class="td_default">&nbsp;&nbsp;&nbsp; <font
			size="5"><b>월세목록</b></font> &nbsp;
		</td>
	</tr>

	<tr>
		<td height="15">
	</tr>

	<tr>
		<td colspan="10">
			<hr size="1" color="CCCCCC">
		</td>
	</tr>

	<tr>
		<td height="7">
	</tr>

	<tr>
		<td class="td_default" align="center" width="50">
		<input type="checkbox" id="allCheck2"> 
		<label for="allCheck2"></label><strong></strong></td> 
		<td class="td_default" align="center"><strong>매물번호</strong></td>  <!-- gCode -->
		<td class="td_default" align="center"><strong>매물사진</strong></td>  <!-- gImage -->
		<td class="td_default" align="center"><strong>매물정보</strong></td> <!-- address/location -->
		<td class="td_default" align="center"><strong>원/투룸</strong></td> <!-- room -->
		<td class="td_default" align="center"><strong>보증금/월세</strong></td> <!-- gPrice_MP  -->
		<td class="td_default" align="center"><strong>중개인 정보</strong></td><!-- userid -->
		<td class="td_default" align="center"><strong>예약</strong></td>
		<td></td>
	</tr>

	<tr>
		<td height="7">
	</tr>
	
	
	
	<tr>
		<td colspan="10">
			<hr size="1" color="CCCCCC">
		</td>
	</tr>






<form id="mpForm">
	    
	    
<!-- 반복시작 -->
<c:forEach var="mp" items="${mplist}">

	

		<tr>
			<td class="td_default" width="80" align="center">
			<!-- checkbox는 체크된 값만 서블릿으로 넘어간다. 
			따라서 value에 삭제할 num값을 설정한다. -->
			<input type="checkbox"
				name="check2" id="check${mp.num}" class="check2" 
				value="${mp.num}">
				<label for="check${mp.num}"></label></td>
			<td class="td_default" width="80" align="center">${mp.num}</td>
			<td class="td_default" width="80">
			<img src="Mimages/${mp.gImage1}.jpg" border="0" align="center"
				width="80" alt="img"/></td>
			<td class="td_default" width="300" style='padding-left: 30px' align="center">
			${mp.address}
				<br> <font size="2" color="#665b5f">[설명 : ${mp.location} ]
			</font></td>
			<td class="td_default" align="center">${mp.room }</td>
			<td class="td_default" align="center" >
			<span id="ggPrice${mp.num}">${mp.deposit }/${mp.gPrice_MP} 만원</span></td>
			<td class="td_default" align="center">${mp.nickname } <br>
			<font size="2" color="#665b5f">[${mp.phone1}-${mp.phone2}-${mp.phone3}]</font></td>
			<td align="center"><input type="button" value="예약" class="reserveBtn"
				data-num="${mp.num}"></td>
			<td>
			<input type="button" value="삭제" class="deleteBtn" data-num="${mp.num}">
          
                </td>
		</tr>

 <!-- 반복끝 --> 
</c:forEach>
</form>
	<tr>
		<td height="0" align="right">
	</tr>

	
	<tr>
		<td height="20">
		<input type="button"value="선택삭제" id="delMPCart">
		</td>
	</tr>

</table>
</div>
</section>

    