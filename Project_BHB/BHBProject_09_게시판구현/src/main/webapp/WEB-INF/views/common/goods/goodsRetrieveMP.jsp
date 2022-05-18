<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>

	$(function() {
		$("#bookMark").on("click", function() {
			$("form").attr("action", "loginCheck/addBookMark_mp")
		})
		
		
	})

</script>
<c:if test="${!empty mesg }">
<script>
alert("Gcode ${mesg} 상품을 장바구니에 담았습니다.");
</script>
<% if(session.getAttribute("mesg")!= null){
	session.removeAttribute("mesg");
} %>
</c:if>


<FORM class="${goodsRetrieveMP}" name="goodRetrieveForm" method="GET" action="#">
	    
	    <input type="hidden" name="gCode" value="${goodsRetrieveMP.gCode }">
	    <input type="hidden" name="deposit" value="${goodsRetrieveMP.deposit }">
	    <input type="hidden" name="gPrice_MP" value="${goodsRetrieveMP.gPrice_MP }">
		<input type="hidden" name="address" value="${goodsRetrieveMP.address }"> 
	    <input	type="hidden" name="location" value="${goodsRetrieveMP.location }"> 
	    <input	type="hidden" name="area" value="${goodsRetrieveMP.area }">
	    <input	type="hidden" name="room" value="${goodsRetrieveMP.room }">
	    <input	type="hidden" name="fee" value="${goodsRetrieveMP.fee }">
	    <input	type="hidden" name="floor" value="${goodsRetrieveMP.floor }">
	    <input	type="hidden" name="elv" value="${goodsRetrieveMP.elv }">
	    <input	type="hidden" name="parking" value="${goodsRetrieveMP.parking }">
	    <input	type="hidden" name="build" value="${goodsRetrieveMP.build }">
	    <input	type="hidden" name="lessorid" value="${goodsRetrieveMP.lessorid }">
	    <input	type="hidden" name="gImage1" value="${goodsRetrieveMP.gImage1 }">
	    <input	type="hidden" name="gImage2" value="${goodsRetrieveMP.gImage2 }">
	    <input	type="hidden" name="gImage3" value="${goodsRetrieveMP.gImage3 }">
	    <input	type="hidden" name="gImage4" value="${goodsRetrieveMP.gImage4 }">
	    <input	type="hidden" name="gImage5" value="${goodsRetrieveMP.gImage5 }">
	    
<table width="100%" cellspacing="0" cellpadding="0">
		<tr>
			<td height="30">
		</tr>
		<tr>
			<td>
				<table align="center" width="900" cellspacing="0" cellpadding="0"
					border="0" style='margin-left: 30px'>
					<tr>
						<td class="td_default"><font size="5"><b>- 상품 정보 -</b></font>
							&nbsp;</td>
					</tr>
					<tr>
						<td height="5"></td>
					</tr>
					<tr>
						<td height="1" colspan="8" bgcolor="CECECE"></td>
					</tr>
					<tr>
						<td height="10"></td>
					</tr>

					<tr>
						<td rowspan="9"><img src="images/${goodsRetrieveMP.gImage1 }.jpg"
							border="0" align="center" width="400" alt="img"/></td>
						
					</tr>
					<tr>
						<td class="td_title"width ="80">보증금</td>
						<td class="td_default" colspan="2" style='padding-left: 30px'>
						${goodsRetrieveMP.gPrice_MP } 만원
						</td>
					</tr>
					
					<tr>
						<td class="td_title"width ="80">월세가</td>
						<td class="td_default" colspan="2" style='padding-left: 30px'>
						${goodsRetrieveMP.gPrice_MP } 만원
						</td>
					</tr>
					<tr>
						<td class="td_title">형태</td>

						<td class="td_red" colspan="2" style='padding-left: 30px'>
						${goodsRetrieveMP.room }(${goodsRetrieveMP.area })
						
					</tr>
					<tr>
						<td class="td_title">관리비</td>
						<td class="td_red" colspan="2" style='padding-left: 30px'>
						${goodsRetrieveMP.fee } 만원
						
					</tr>
					
					<tr>
						<td class="td_title">주소</td>
						<td class="td_red" colspan="2" style='padding-left: 30px'>
						${goodsRetrieveMP.address }(${goodsRetrieveMP.location })
						
					</tr>
					
					<tr>
						<td class="td_title">엘리베이터</td>

						<td class="td_red" colspan="2" style='padding-left: 30px'>
						${goodsRetrieveMP.elv }
						</td>

					</tr>
					<tr>
						<td class="td_title">주차</td>

						<td class="td_red" colspan="2" style='padding-left: 30px'>
						 ${goodsRetrieveMP.parking }
						</td>

					</tr>
					
					<tr>
						<td class="td_title">준공년도</td>
	
						<td class="td_red" colspan="2" style='padding-left: 30px'>
						${goodsRetrieveMP.build }
						
					</tr>
					
					<tr>
						<td class="td_title" colspan="2" style='text-align: right'>관리자정보</td>

						<td class="td_red" colspan="2" style='padding-left: 30px'>
						${goodsRetrieveMP.lessorid }
						
					</tr>

				</table>

			</td>
		</tr>
	</table> 

				<br>
				
				&nbsp;&nbsp;<button id="bookMark">즐겨찾기 등록</button>
	