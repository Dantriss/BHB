<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">
    	
					$(document).ready(function() {
						$("#location").change(function() {
							
							var loc = $('#location option:selected').val();
							
							location.href = "goodsListLoc?location=" + loc;
							
						});//change location


						$("#mpyp").change(function() {
							var mpyp = $('#mpyp option:selected').val();
							if(mpyp=="전세"){
								location.href = "goodsListYP";	
							}else if(mpyp=="월세"){
								location.href = "goodsListMP";	
							}
							
							

						});//change mpyp
						
					
						$("#room").change(function() {
							var room = $('#room option:selected').val();
							location.href = "goodsList?room=" + room;
							

						});//change room
					});//ready
				</script>
		&nbsp;
		지역
      <select id="location" name="loc">
      
  	    <option value="지역" > 선택</option>
  	    <option value="강서구"> 강서구</option>
      	<option value="광진구" >광진구</option>
      	<option value="양천구" >양천구</option>
      	<option value="용산구" >용산구</option>
      </select>
      	&nbsp;&nbsp;
      	전월세
      	<select id="mpyp">
      	<option value="선택">선택</option>
      	<option value="전세">전세</option>
      	<option value="월세">월세</option>
      	</select>
      	<!-- <button type="button" onclick="location.href='goodsListYP'">전세</button>
      	<button type="button" onclick="location.href='goodsListMP'">월세</button> -->

     
     	<!-- <button type="button">전세</button>
     	/ <button type="button">월세</button> -->
     	&nbsp;&nbsp;
     	원룸/투룸
       <select id="room">
      <option value="선택">선택</option>
      <option value="원룸">원룸</option>
      <option value="투룸">투룸</option>
      </select> 
     	<!-- <button type="button" onclick="location.href='goodsList?room=원룸'">원룸</button>
     	onclick시 GoodsController.java로 이동
     	/ <button type="button" onclick="location.href='goodsList?room=투룸'">투룸</button> -->
     	 &nbsp;
<table width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table align="center" width="710" cellspacing="0" cellpadding="0"
				border="0">
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

<!-- YP 반복시작 -->
<c:forEach var="dto" items="${goodsListYP}" varStatus="status">
						<td>
							<table style='padding: 15px'>
								<tr>
									<td> <a href="goodsRetrieveYP?gCode=${dto.gCode}"> 
									<img src="Mimages/${dto.gImage1}.jpg" border="0"
											align="center" width="300" alt="img"/>
											</a>
									</td>
								</tr>
								<tr>

									<td height="10">
								</tr>
								<tr>
									<td class="td_default" align="center">
									<a href="goodsRetrieveYP?gCode=${dto.gCode}"> 
									${dto.gCode }<br>
									</a>

								</tr>
								<tr>
									<td height="10">
								</tr>
								<tr>
									<td class="td_gray" align="center">${dto.address }</td>
								</tr>
								<tr>
									<td height="10">
								</tr>
								<tr>
									<td class="td_red" align="center"><font color="red"><strong>
												${dto.location }</strong></font></td>
								</tr>
							</table>
						</td>
						<!-- 한 줄에2개씩 -->
					<c:if test="${status.count%2 ==0 }">
						<tr>
							<td height="10"></td>
						</tr>
					</c:if>
<!-- 반복끝-->
</c:forEach>				
				</tr>
				<tr>

<!-- MP 반복시작 -->
<c:forEach var="dto" items="${goodsListMP}" varStatus="status">
						<td>
							<table style='padding: 15px'>
								<tr>
									<td> <a href="goodsRetrieveMP?gCode=${dto.gCode}"> 
									<img src="Mimages/${dto.gImage1}.jpg" border="0"
											align="center" width="300" alt="img"/>
											</a>
									</td>
								</tr>
								<tr>

									<td height="10">
								</tr>
								<tr>
									<td class="td_default" align="center">
									<a href="goodsRetrieveMP?gCode=${dto.gCode}"> 
									${dto.gCode }<br>
									</a>
								
								</tr>
								<tr>
									<td height="10">
								</tr>
								<tr>
									<td class="td_gray" align="center">${dto.address }</td>
								</tr>
								<tr>
									<td height="10">
								</tr>
								<tr>
									<td class="td_red" align="center"><font color="red"><strong>
												${dto.location }</strong></font></td>
								</tr>
							</table>
						</td>
						<!-- 한 줄에2개씩 -->
					<c:if test="${status.count%2 ==0 }">
						<tr>
							<td height="10"></td>
						</tr>
					</c:if>
<!-- 반복끝-->
</c:forEach>				
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td height="10">
	</tr>
</table>