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
   <body>
<div style="width:24%;height:100%;border:1px solid black;float:left;">
      <h2>공지사항</h2>
  </div>
  
   <div style="width:50%;height:100%;border:1px solid black;float:left;">
  	
      <h2>매물리스트</h2>
       |&nbsp;
      <select id="location" name="loc">
      
  	    <option value="지역" > 지역</option>
  	    <option value="강서구"> 강서구</option>
      	<option value="광진구" >광진구</option>
      	<option value="양천구" >양천구</option>
      	<option value="용산구" >용산구</option>
      </select>
      	&nbsp;|&nbsp;
      	<a>전월세</a>
      	<select id="mpyp">
      	<option value="선택">선택</option>
      	<option value="전세">전세</option>
      	<option value="월세">월세</option>
      	</select>
      	<!-- <button type="button" onclick="location.href='goodsListYP'">전세</button>
      	<button type="button" onclick="location.href='goodsListMP'">월세</button> -->

     
     	<!-- <button type="button">전세</button>
     	/ <button type="button">월세</button> -->
     	&nbsp;|&nbsp;
     	<a>원룸/투룸</a>
       <select id="room">
      <option value="선택">선택</option>
      <option value="원룸">원룸</option>
      <option value="투룸">투룸</option>
      </select> 
     	<!-- <button type="button" onclick="location.href='goodsList?room=원룸'">원룸</button>
     	onclick시 GoodsController.java로 이동
     	/ <button type="button" onclick="location.href='goodsList?room=투룸'">투룸</button> -->
     	 &nbsp;|
   <jsp:include page="goods/goodsList.jsp" flush="true"></jsp:include>
  </div>
  
<div style="width:24%;height:100%;border:1px solid black;float:left;">
      <h2>정보게시판</h2>
  </div>
  </body>
  </html>
  
  