<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script>
$(function(){
	//전체선택 전세
    $(".reserveBtn").on("click", function() {
    	
		location.href="loginCheck/reserveDone";
        alert("예약이 완료되었습니다!");
		
        
    }); //예약버튼(클릭) 
    
    
});//function
</script>	



<form name="myForm" method="get" action="loginCheck/reserveDone">

<input type="hidden" name="num" value="${bDTO.num}">
<input type="hidden" name="gCode" value="${bDTO.gCode}">
<input type="hidden" name="deposit" value="${bDTO.deposit}">
<input type="hidden" name="gPrice_MP" value="${bDTO.gPrice_MP}">
<input type="hidden" name="gPrice_YP" value="${bDTO.gPrice_YP}">
<input type="hidden" name="room" value="${bDTO.room}">
<input type="hidden" name="gImage1" value="${bDTO.gImage1}">
<input type="hidden" name="phone1" value="${bDTO.phone1}">
<input type="hidden" name="phone2" value="${bDTO.phone2}">
<input type="hidden" name="phone3" value="${bDTO.phone3}">
<input type="hidden" name="userName" value="${bDTO.userName}">
<input type="hidden" name="userid" value="${bDTO.userid}">
<input type="hidden" name="location" value="${bDTO.location}">
<input type="hidden" name="address" value="${bDTO.address}">
<input type="hidden" name="nickname" value="${bDTO.nickname}">
<input type="hidden" name="lessorid" value="${bDTO.lessorid}">


	
	
	<table width="100%" cellspacing="0" cellpadding="0">

		<tr>
			<td height="30">
		</tr>

		<tr>
			<td><b>예약매물 확인</b></td>
		</tr>

		<tr>
			<td height="15">
		</tr>

		<tr>
			<td>
				<hr size="1" color="CCCCCC">
			</td>
		</tr>

		<tr>
			<td height="5">
		</tr>

		<!-- 매물확인 테이블 시작 -->
		
			<p>
			<c:if test="${bDTO.deposit < 1}">
			
				<table width="100%" cellspacing="0" cellpadding="0" border="0">
						<tr>
							<td class="td_default" align="center">
							<input type="checkbox" id="allCheck1"> <strong></strong></td> 
							<td class="td_default" align="center"><strong>매물번호</strong></td>  <!-- gCode -->
							<td class="td_default" align="center"><strong>매물사진</strong></td>  <!-- gImage -->
							<td class="td_default" align="center"><strong>매물정보</strong></td> <!-- address/location -->
							<td class="td_default" align="center"><strong>원 / 투룸</strong></td> <!-- address/location -->
							<td class="td_default" align="center"><strong>전세금</strong></td> <!-- gPrice_YP  -->
							<td class="td_default" align="center"><strong>중개인 정보</strong></td><!-- userid -->
							
						</tr>

					<tr>
						<td colspan="7">
							<hr size="1" color="CCCCCC">
						</td>
					</tr>

			<tr>
			<td class="td_default" width="80" align="center">
			<!-- checkbox는 체크된 값만 서블릿으로 넘어간다. 
			따라서 value에 삭제할 num값을 설정한다. -->
			<input type="checkbox"
				name="check1" id="check81" class="check1" 
				value="${bDTO.num}"></td>
			<td class="td_default" width="80" align="center">${bDTO.num}</td>
			<td class="td_default" width="80">
			<img src="images/${bDTO.gImage1}.jpg" border="0" align="center"
				width="80" alt="img"/></td>
			<td class="td_default" width="300" style='padding-left: 30px' align="center">
			${bDTO.address}
				<br> <font size="2" color="#665b5f">[설명 : ${bDTO.location} ]
			</font></td>
			
			<td class="td_default" align="center">${bDTO.room }</td>
			<td class="td_default" align="center" >
			<span id="ggPrice${bDTO.num}">${bDTO.gPrice_YP} 만원</span></td>
			<td class="td_default" align="center">${bDTO.nickname } <br>
			<font size="2" color="#665b5f">[${bDTO.phone1}-${bDTO.phone2}-${bDTO.phone3}]</font></td>
			</tr>
			</table>
			</c:if>
<!-- c:if deposit < 1  끝 -->			
			
			
			</p>
				<p>
				<c:if test="${bDTO.gPrice_YP < 1 }">
				<table width="100%" cellspacing="0" cellpadding="0">
				
						<tr>
							<td class="td_default" align="center">
							<input type="checkbox" id="allCheck1"> <strong></strong></td> 
							<td class="td_default" align="center"><strong>매물번호</strong></td>  <!-- gCode -->
							<td class="td_default" align="center"><strong>매물사진</strong></td>  <!-- gImage -->
							<td class="td_default" align="center"><strong>매물정보</strong></td> <!-- address/location -->
							<td class="td_default" align="center"><strong>원 / 투룸</strong></td> <!-- address/location -->
							<td class="td_default" align="center"><strong>보증금 / 월세</strong></td> <!-- gPrice_YP  -->
							<td class="td_default" align="center"><strong>중개인 정보</strong></td><!-- userid -->
							
						</tr>

					<tr>
						<td colspan="4">
							<hr size="1" color="CCCCCC">
						</td>
					</tr>

			<tr>
			<td class="td_default" width="80" align="center">
			<!-- checkbox는 체크된 값만 서블릿으로 넘어간다. 
			따라서 value에 삭제할 num값을 설정한다. -->
			<input type="checkbox"
				name="check1" id="check81" class="check1" 
				value="${bDTO.num}"></td>
			<td class="td_default" width="80" align="center">${bDTO.num}</td>
			<td class="td_default" width="80">
			<img src="images/${bDTO.gImage1}.jpg" border="0" align="center"
				width="80" alt="img"/></td>
			<td class="td_default" width="300" style='padding-left: 30px' align="center">
			${bDTO.address}
				<br> <font size="2" color="#665b5f">[설명 : ${bDTO.location} ]
			</font></td>
			<td class="td_default" align="center">${bDTO.room }</td>
			<td class="td_default" align="center" >
			<span id="ggPrice${bDTO.num}">${bDTO.deposit } / ${bDTO.gPrice_MP} 만원</span></td>
			<td class="td_default" align="center">${bDTO.nickname } <br>
			<font size="2" color="#665b5f">[${bDTO.phone1}-${bDTO.phone2}-${bDTO.phone3}]</font></td>
			</tr>
			</table>
			</c:if>
			</p>	
				 <tr>
			<td>
					<hr size="1" color="CCCCCC">
				</td>
			</tr>

	<!-- 매물확인 테이블 종료 -->


	<!-- 방문날짜 시작 -->
		<tr>
		<td height="90">
	
		</tr>

	<tr>
		<td><b>방문날짜 선택</b></td>
	</tr>

	<tr>
		<td height="15">
	
		</tr>


	<tr>
		<td>
			<table width="100%" cellspacing="0" cellpadding="0" border="1"
					style="border-collapse:collapse" bordercolor="#CCCCCC">
				<tr>
					<td width="125" height="35" class="td_default">
						
						날짜 선택하기
					</td>
					<td height="35" class="td_default">
						<input class="input_default" type="text" id="mname" size="20"
							maxlength="20" value="날짜를 선택해주세요"></input>
					</td>
				</tr>
				
				
					
				
			</table>							
		</td>
	</tr>
<!--  방문날짜 끝-->

	<!-- 중개인정보 시작 -->
		<tr>
		<td height="90">
	
		</tr>

	<tr>
		<td><b>중개인 정보</b></td>
	</tr>

	<tr>
		<td height="15">
	
		</tr>


	<tr>
		<td>
			<table width="100%" cellspacing="0" cellpadding="0" border="1"
					style="border-collapse:collapse" bordercolor="#CCCCCC">
				<tr>
					<td width="125" height="35" class="td_default">
						
						이 름
					</td>
					<td height="35" class="td_default">
						${bDTO.lessorid}
					</td>
				</tr>
				
				<tr>
					<td height="35" class="td_default">
						
						주 소
					</td>
					<td height="35" class="td_default">
						${bDTO.address}(${bDTO.location})
						
					</td>
				</tr>
				
				<tr>
					<td height="35" class="td_default">
						휴대전화
					</td>
					<td height="35" class="td_default">
						${bDTO.phone1}-${bDTO.phone2}-${bDTO.phone3}
						
					</td>
				</tr>
			</table>							
		</td>
	</tr>
<!--  중개인 끝-->

<!-- 노쇼방지 시작 -->
		<tr>
			<td height="160px">
		</tr>
		<tr>
			<td><b>노쇼 방지금 결제수단</b></td>
		</tr>

		<tr>
		<td height="15">
	
		</tr>
	<tr>
		<td>
			<table width="100%" cellspacing="0" cellpadding="0" border="1"
					style="border-collapse:collapse" bordercolor="#CCCCCC">
					<tr>
						<td width = "80" align="center">결제금액</td>
						<td width = "60" align="center">5 만원</td>
						<td><font size="2" color="#665b5f">*확인 후 다시 돌려드립니다 </font> </td>
					</tr>
					<tr>
					<td width="125" height="35" class="td_default" colspan="3">
						<input id="card" type="radio" name="payMethod" value="신용카드" checked >신용카드</input>
						
						<input id="account" type="radio" name="payMethod" value="계좌이체">계좌이체</input>
						
						<input id="send" type="radio" name="payMethod" value="무통장 입금">무통장 입금</input>
					</td>
					
				</tr>
				
			</table>							
		</td>
	</tr>
	
	<tr>
		<td height="30">
	
		</tr>
<!-- 노쇼끝 -->

	<tr>
		<td class="td_default" align="center">
			<input type='button' value='취소' onclick="javascript:history.back()">	
			<input class="reserveBtn" type='submit' value='예약하기'>
		</td>
	</tr>

</table>

</form>
