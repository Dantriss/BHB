<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 		

	<ol>
	<c:if test="${boardLessorList != null}">
      <c:forEach var="dto" items="${boardLessorList}" varStatus="status">
      	
      	<li><a href="boardLessor?num=${dto.bl_num}">${dto.bl_title}</a></li>
   
      	
      	</c:forEach>
      	</c:if>
      </ol>
