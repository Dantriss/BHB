<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <html>
    <style>
    	html,body{
    	width:100%;
    	height:100%;}
    	div{
    	text-align:center;
    	}
    </style>


   <body>
<div style="width:24%;height:100%;border:1px solid black;float:left;">
      <h2>공지사항</h2>
      <jsp:include page="board/boardNotice.jsp" flush="true"></jsp:include>
  </div>
  
   <div style="width:50%;height:100%;border:1px solid black;float:left;">
  	
      <h2>매물리스트</h2>
       
   <jsp:include page="goods/goodsLists.jsp" flush="true"></jsp:include>
  </div>
  
<div style="width:24%;height:100%;border:1px solid black;float:left;">
      <h2>정보게시판</h2>
      <jsp:include page="board/boardLessor.jsp" flush="true"></jsp:include>
  </div>
  </body>
  </html>
  
  