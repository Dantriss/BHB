<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
									<img src="images/${dto.gImage1}.jpg" border="0"
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
									 <font color="gray"> -------------------- </font></td>

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
									<img src="images/${dto.gImage1}.jpg" border="0"
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
									 <font color="gray"> -------------------- </font></td>

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