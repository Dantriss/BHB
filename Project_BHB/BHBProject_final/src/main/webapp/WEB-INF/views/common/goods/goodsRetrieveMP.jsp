<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
.mp-a, .mp2-a{
width:560px;
margin:0px auto;
position:relative;
}
.mp-c, .mp2-c{
position:absolute;
top:0px;
left:0px;
opacity:0;
transition:opacity 0.5s linear;
}
.mp-a:hover .mp-c{
opacity:1;
}

.mp2-a:hover .mp2-c{
opacity:1;
}

</style>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>

	function formAction(){
		
		$("form").attr("action", "loginCheck/addBookMark_mp")
		document.getElementById("goodRetrieveForm").submit();
	}

</script>
<c:if test="${!empty mesg }">
<script>
alert("${mesg}");
</script>
<% if(session.getAttribute("mesg")!= null){
	session.removeAttribute("mesg");
} %>
</c:if>

<section id="main" class="container">
<div class="box">
<FORM class="${goodsRetrieveMP}" id="goodRetrieveForm" method="GET" action="#">
	    
	    <input type="hidden" name="gCode" value="${goodsRetrieveMP.gCode }">
	    <input type="hidden" name="deposit" value="${goodsRetrieveMP.deposit }">
	    <input type="hidden" name="gPrice" value="${goodsRetrieveMP.gPrice }">
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
	    
<h3>- 상품 정보 -</h3>

				<table align="center" width="900" cellspacing="0" cellpadding="0"
					border="0" style='margin-left: 30px'>
					
					<tr>
						
						<td rowspan="9">
							<div class="mp-a">
									<img src="Mimages/${goodsRetrieveMP.gImage1 }.jpg"
									border="0" class="mp-b" width="580" alt="img"/>
									
									<c:if test="${goodsRetrieveMP.gImage3!=null }">
									<img src="Mimages/${goodsRetrieveMP.gImage3 }.jpg"
									border="0" class="mp-c" width="580" alt="img"/>
									</c:if>
							</div>
							
						</td>
						
						<td rowspan="9">
							<div class="mp2-a">
								<c:if test="${goodsRetrieveMP.gImage2!=null }">
								<img src="Mimages/${goodsRetrieveMP.gImage2 }.jpg"
								border="0" class="mp2-b" width="580" alt="img"/>
								</c:if>
								
								<c:if test="${goodsRetrieveMP.gImage4!=null }">
								<img src="Mimages/${goodsRetrieveMP.gImage4 }.jpg"
								border="0" class="mp2-c" width="580" alt="img"/>
								</c:if>
							</div>
						</td>
						
					</tr>
					<thead></thead>
					<tr>
						<td class="td_title"width ="80">보증금</td>
						<td class="td_default" colspan="2" style='padding-left: 30px'>
						${goodsRetrieveMP.deposit } 만원
						</td>
					</tr>
					
					<tr>
						<td class="td_title"width ="80">월세가</td>
						<td class="td_default" colspan="2" style='padding-left: 30px'>
						${goodsRetrieveMP.gPrice } 만원
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
						<td class="td_title">관리자정보</td>

						<td class="td_red" colspan="2" style='padding-left: 30px'>
						${goodsRetrieveMP.lessorid }
						</td>
					</tr>

				</table>


				 <a href="javascript:formAction()" class="button alt icon solid fa-check">즐겨찾기 등록</a>
				</FORM>
				</div>
</section>
				    <!-- Scripts -->
			         <script src="assets/js/jquery.min.js"></script>
			         <script src="assets/js/jquery.dropotron.min.js"></script>
			         <script src="assets/js/jquery.scrollex.min.js"></script>
			         <script src="assets/js/browser.min.js"></script>
			         <script src="assets/js/breakpoints.min.js"></script>
			         <script src="assets/js/util.js"></script>
			         <script src="assets/js/main.js"></script>
			          
	