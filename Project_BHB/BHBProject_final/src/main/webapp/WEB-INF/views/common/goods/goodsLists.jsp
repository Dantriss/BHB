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
            <body>
            <div align="center" class="features-row">
            
      &nbsp;
      <strong>지역</strong>
      <select id="location" name="loc">
      
         <option value="지역">선택</option>
         <option value="강서구">강서구</option>
         <option value="광진구">광진구</option>
         <option value="양천구">양천구</option>
         <option value="용산구">용산구</option>
      </select>
         &nbsp;&nbsp;
         <Strong>전월세</Strong>
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
        <strong>원룸/투룸</strong>
       <select id="room" style="size: 5px;">
      <option value="선택">선택</option>
      <option value="원룸">원룸</option>
      <option value="투룸">투룸</option>
      </select> 
      <br>

        <!-- <button type="button" onclick="location.href='goodsList?room=원룸'">원룸</button>
        onclick시 GoodsController.java로 이동
        / <button type="button" onclick="location.href='goodsList?room=투룸'">투룸</button> -->
         &nbsp;
         <br> 
         </div>
        <section id="main" class="container">
        <section class="box special features">
<table width="100%"> <!-- cellspacing="0" cellpadding="0" border="1" -->
   <tr>
      <td>
         <table  border="1"> <!-- width="710" cellspacing="0" cellpadding="0" border="1" -->
            <!-- <tr>
               <td height="5"></td>
            </tr> -->
            <!-- <tr>
               <td height="1" colspan="8" bgcolor="CECECE"></td>
            </tr> -->
            <!-- <tr>
               <td height="1"></td>
            </tr> -->
            
            <tr>

<!-- YP 반복시작 -->
<c:forEach var="dto" items="${goodsListYP}" varStatus="status">
                  <td>
                       <table style='padding: 15px'>  
                        <tr>
                           <td> <a href="goodsRetrieveYP?gCode=${dto.gCode}"> 
                           <img src="Mimages/${dto.gImage1}.jpg" border="0"
                                  width="300" alt="img"/>
                                 </a>
                           </td>
                        </tr>
                        <tr>

                           <td height="3">
                        </tr>
                         <tr>
                           <td class="td_default" align="center" style="padding: 0em;">
                           <a href="goodsRetrieveYP?gCode=${dto.gCode}"> 
                           ${dto.gPrice}만원<br>
                           </a>

                        </tr>
                        <!-- <tr>
                           <td height="3">
                        </tr> -->
                        <tr>
                           <td class="td_gray" align="center" style="padding: 0em;">${dto.address }</td>
                        </tr>
                        <!-- <tr>
                           <td height="10">
                        </tr> -->
                        <tr>
                           <td class="td_red" align="center"><font color="red"><strong style="color: red;">
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

                           <td height="1">
                        </tr>
                        <tr>
                           <td class="td_default" align="center" style="padding: 0em;">
                           <a href="goodsRetrieveMP?gCode=${dto.gCode}"> 
                           ${dto.deposit } / ${dto.gPrice } 만원<br>
                           </a>                        
                        </tr>
                        <!-- <tr>
                           <td height="10">
                        </tr> -->
                        <tr>
                           <td class="td_gray" align="center" style="padding: 0em;">${dto.address }</td>
                        </tr>
                        <!-- <tr>
                           <td height="10">
                        </tr> -->
                        <tr>
                           <td class="td_red" align="center"><font color="red"><strong style="color: red;">
                                    ${dto.location }</strong></font></td>
                        </tr>
                     </table>
                  </td>
                  
                  
                  
                  
                  
                  
                  
                  <!-- 한 줄에2개씩 -->
               <c:if test="${status.count%2 ==0 }">
                  <tr>
                     <td height="1"></td>
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
<c:if test="${ROOM }">
      <div class="paginate">
                     <c:if test="${pageVO.prev }">
                           <a class="pre" href="goodsList?pageNum=${pageVO.startPage - 1 }&room=${room}">이전</a>
                     </c:if>
                     
                     <c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
                            <a style="<c:if test="${pageVO.pageNum==num }">color:red</c:if>" href="goodsList?pageNum=${num }&room=${room}">${num }</a>
                      </c:forEach>
                     
                     <c:if test="${pageVO.next }">
                           <a class="next" href="goodsList?pageNum=${pageVO.endPage+1 }&room=${room}">다음</a> 
                     </c:if>

                  <form action="boardLessorList" method="get" id="actionForm">
                     <input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }">
                     <input type="hidden" name="amount" value="${pageVO.cri.amount}">
                  </form> 
         </div>
            <!-- page -->
   </c:if>
   <c:if test="${MP }">
      <div class="paginate">
                     <c:if test="${pageVO.prev }">
                           <a class="pre" href="goodsListMP?pageNum=${pageVO.startPage - 1 }">이전</a>
                     </c:if>
                     
                     <c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
                            <a style="<c:if test="${pageVO.pageNum==num }">color:red</c:if>" href="goodsListMP?pageNum=${num }">${num }</a>
                      </c:forEach>
                     
                     <c:if test="${pageVO.next }">
                           <a class="next" href="goodsListMP?pageNum=${pageVO.endPage+1 }">다음</a> 
                     </c:if>

                  <form action="boardLessorList" method="get" id="actionForm">
                     <input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }">
                     <input type="hidden" name="amount" value="${pageVO.cri.amount}">
                  </form> 
         </div>
            <!-- page -->
   </c:if>
   <c:if test="${YP }">
      <div class="paginate">
                     <c:if test="${pageVO.prev }">
                           <a class="pre" href="goodsListYP?pageNum=${pageVO.startPage - 1 }">이전</a>
                     </c:if>
                     
                     <c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
                            <a style="<c:if test="${pageVO.pageNum==num }">color:red</c:if>" href="goodsListYP?pageNum=${num }">${num }</a>
                      </c:forEach>
                     
                     <c:if test="${pageVO.next }">
                           <a class="next" href="goodsListYP?pageNum=${pageVO.endPage+1 }">다음</a> 
                     </c:if>

                  <form action="boardLessorList" method="get" id="actionForm">
                     <input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }">
                     <input type="hidden" name="amount" value="${pageVO.cri.amount}">
                  </form> 
         </div>
            <!-- page -->
   </c:if>
      <c:if test="${LOC }">
      <div class="paginate">
                     <c:if test="${pageVO.prev }">
                           <a class="pre" href="goodsListLoc?pageNum=${pageVO.startPage - 1 }&location=${location}">이전</a>
                     </c:if>
                     
                     <c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
                            <a style="<c:if test="${pageVO.pageNum==num }">color:red</c:if>" href="goodsListLoc?pageNum=${num }&location=${location}">${num }</a>
                      </c:forEach>
                     
                     <c:if test="${pageVO.next }">
                           <a class="next" href="goodsListLoc?pageNum=${pageVO.endPage+1 }&location=${location}">다음</a> 
                     </c:if>

                  <form action="boardLessorList" method="get" id="actionForm">
                     <input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }">
                     <input type="hidden" name="amount" value="${pageVO.cri.amount}">
                  </form> 
         </div>
            <!-- page -->
   </c:if>   
</section>
</section>
</body>