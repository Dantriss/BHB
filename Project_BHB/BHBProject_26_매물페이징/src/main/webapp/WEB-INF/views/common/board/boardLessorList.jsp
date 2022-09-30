<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<script type="text/javascript">
	
 	$(document).ready(function () {
		

		
/* 		var actionForm = $("#actionForm");
		
		$(".paginate_button a").on("click", function (e) {
			e.preventDefault();
			console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
			
		}) */
	}); 
	
</script>
<style type="text/css">
/* UI Object */

.paginate{padding:15px 0;text-align:center}

.paginate a,.paginate strong{display:inline-block;position:relative;_width /**/:17px;margin-right:1px;padding:3px 3px 5px;border:1px solid #fff;color:#000;font-family:Verdana;font-size:13px;font-weight:bold;line-height:normal;text-decoration:none}

.paginate strong{border:1px solid #e9e9e9;color:#f23219 !important}

.paginate .pre{margin-right:9px;padding:7px 6px 5px 16px;background:url(http://static.naver.com/common/paginate/bu_pg3_l_off.gif) no-repeat 6px 9px !important}

.paginate .next{margin-left:9px;padding:7px 16px 5px 6px;background:url(http://static.naver.com/common/paginate/bu_pg3_r_off.gif) no-repeat 71px 9px !important}

.paginate a.pre{background:url(http://static.naver.com/common/paginate/bu_pg3_l_on.gif) no-repeat 6px 9px !important}

.paginate a.next{background:url(http://static.naver.com/common/paginate/bu_pg3_r_on.gif) no-repeat 74px 9px !important}

.paginate .pre,.paginate .next{display:inline-block;position:relative;top:1px;_width /**/:84px;border:1px solid #e9e9e9;color:#ccc;font-family:'굴림',Gulim;font-size:12px;line-height:normal}

.paginate a.pre,.paginate a.next{color:#565656}

.paginate a:hover{border:1px solid #e9e9e9;background-color:#f7f7f7 !important}

/* //UI Object */
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<section class="box">
<h3>정보게시판</h3>
	<div class="table-wrapper">
		<table>
				<thead>
						<tr>
								<th>번호</th>
								<th>제목</th>
								<th>글쓴이</th>
								<th>날짜</th>
								<th>좋아요</th>
						</tr>
				</thead>
				<tbody>
					<c:if test="${list != null}">
					<c:forEach var="list" items="${list}" varStatus="status">
						<tr>
							<td><a href="boardLessor?num=${list.bl_num}">${list.bl_num}</a></td>
							<td><a href="boardLessor?num=${list.bl_num}">${list.bl_title}</a></td>
							<td>${list.bl_nick}</td>
							<td>${list.bl_date}</td>
							<td>${list.bl_hit}</td>
						</tr>
					</c:forEach>
					</c:if>	
					
	           
	            <!-- end page -->
				</tbody>
				</table>
				<div class="paginate">
	                  <c:if test="${pageVO.prev }">
	                        <a class="pre" href="boardLessorList?pageNum=${pageVO.startPage - 1 }&amount=${pageVO.amount}">이전</a>
	                  </c:if>
	                  
	                  <c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
                            <a style="<c:if test="${pageVO.pageNum==num }">color:red</c:if>" href="boardLessorList?pageNum=${num }&amount=${pageVO.amount}">${num }</a>
                      </c:forEach>
	                  
	                  <c:if test="${pageVO.next }">
	                        <a class="next" href="boardLessorList?pageNum=${pageVO.endPage+1 }&amount=${pageVO.amount}">다음</a> 
	                  </c:if>

		            <form action="boardLessorList" method="get" id="actionForm">
		               <input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }">
		               <input type="hidden" name="amount" value="${pageVO.cri.amount}">
		            </form> 
	            </div>
				<!-- page -->

				

			
					
		
	
	
</section>
</body>
</html>