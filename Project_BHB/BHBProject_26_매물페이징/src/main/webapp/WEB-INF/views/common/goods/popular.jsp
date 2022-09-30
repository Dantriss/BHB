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
           
        });
    </script>
    
            <body>
   
      <br>

   
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
                          <c:if test="${dto.deposit !=0 }">
            			   
	                           <a href="goodsRetrieveMP?gCode=${dto.gCode}"> 
	                           ${dto.deposit } / ${dto.gPrice } 만원<br>
	                           </a>  
                           </c:if>
                          
                           <c:if test="${dto.deposit ==0 }">
	            			   
	                           <a href="goodsRetrieveMP?gCode=${dto.gCode}"> 
	                            ${dto.gPrice } 만원<br>
	                           </a>  
                           </c:if>  
                           </td>                   
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