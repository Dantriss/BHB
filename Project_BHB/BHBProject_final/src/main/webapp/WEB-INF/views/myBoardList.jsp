<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

</script>
 <jsp:include page="common/top.jsp" flush="true"></jsp:include> 
<section class="box">
<h3>나의 글 목록</h3>
	<div class="table-wrapper">
		<table>
				<thead>
						<tr>
								<th>번호</th>
								<th>제목</th>
								<th>날짜</th>
								<th>좋아요</th>
						</tr>
				</thead>
				<tbody>
					<c:if test="${myboardList!= null}">
					<c:forEach var="dto" items="${myboardList}" varStatus="status">
						<tr>
								<td>${dto.bl_num}</td>
								<td>${dto.bl_title}</td>
								<td>${dto.bl_date}</td>
								<td>${dto.bl_hit}</td>
								<td>
								<a href="myBoardModify_view?num=${dto.bl_num}" class="button small">수정</a>
        				       &nbsp;&nbsp;&nbsp;&nbsp;
        				       
								<a href="myBoardDelete?num=${dto.bl_num}" class="button small">삭제</a>
        				        </td>
						</tr>
						</c:forEach>
						
					</c:if>
					
		</table>
	</div>
</section>
