<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<meta charset="UTF-8">

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	function formAction(){
		
		$("form").attr("action", "loginCheck/addBookMark_yp")
		document.getElementById("goodRetrieveForm").submit();
	}
 

</script>
<c:if test="${!empty mesg }">
<script>
alert("Gcode ${mesg} 상품을 장바구니에 담았습니다.");
</script>
<% if(session.getAttribute("mesg")!= null){
   session.removeAttribute("mesg");
} %>
</c:if>

<section id="main" class="container">
<div class="box">
<FORM class="${goodsRetrieveYP}" id="goodRetrieveForm" method="GET" action="#" >
       
       <input type="hidden" name="gCode" value="${goodsRetrieveYP.gCode }">
       <input type="hidden" name="gPrice_YP" value="${goodsRetrieveYP.gPrice_YP }">
      <input type="hidden" name="address" value="${goodsRetrieveYP.address }"> 
       <input   type="hidden" name="location" value="${goodsRetrieveYP.location }"> 
       <input   type="hidden" name="area" value="${goodsRetrieveYP.area }">
       <input   type="hidden" name="room" value="${goodsRetrieveYP.room }">
       <input   type="hidden" name="fee" value="${goodsRetrieveYP.fee }">
       <input   type="hidden" name="floor" value="${goodsRetrieveYP.floor }">
       <input   type="hidden" name="elv" value="${goodsRetrieveYP.elv }">
       <input   type="hidden" name="parking" value="${goodsRetrieveYP.parking }">
       <input   type="hidden" name="build" value="${goodsRetrieveYP.build }">
       <input   type="hidden" name="lessorid" value="${goodsRetrieveYP.lessorid }">
       <input   type="hidden" name="gImage1" value="${goodsRetrieveYP.gImage1 }">
       <input   type="hidden" name="gImage2" value="${goodsRetrieveYP.gImage2 }">
       <input   type="hidden" name="gImage3" value="${goodsRetrieveYP.gImage3 }">
       <input   type="hidden" name="gImage4" value="${goodsRetrieveYP.gImage4 }">
       <input   type="hidden" name="gImage5" value="${goodsRetrieveYP.gImage5 }">

 <h3>- 상품 정보 -</h3>

            <table align="center" width="900" cellspacing="0" cellpadding="0"
               border="0" style='margin-left: 30px'>
               
                           
                  
               <tr>
                  <td rowspan="9"><img src="Mimages/${goodsRetrieveYP.gImage1 }.jpg" onmouseover="this.src='Mimages/b1_1.jpg'"
                 onmouseout="this.src='Mimages/${goodsRetrieveYP.gImage1 }.jpg'" border="0" align="center" width="550" alt="img"/></td>

                  <td rowspan="9"><img src="Mimages/${goodsRetrieveYP.gImage2 }.jpg"
                     border="0" align="center" width="550" alt="img"/></td>

               </tr>
      
               <thead></thead>
               <tr>
                  <td class="td_title"width ="80">전세가</td>
                  <td class="td_default" colspan="2" style='padding-left: 30px'>
                  ${goodsRetrieveYP.gPrice_YP } 만원
                  </td>
               </tr>
               <tr>
                  <td class="td_title">형태</td>

                  <td class="td_red" colspan="2" style='padding-left: 30px'>
                  ${goodsRetrieveYP.room }(${goodsRetrieveYP.area })
                  
               </tr>
               <tr>
                  <td class="td_title">관리비</td>
                  <td class="td_red" colspan="2" style='padding-left: 30px'>
                  ${goodsRetrieveYP.fee } 만원
                  
               </tr>
               
               <tr>
                  <td class="td_title">주소</td>
                  <td class="td_red" colspan="2" style='padding-left: 30px'>
                  ${goodsRetrieveYP.address }(${goodsRetrieveYP.location })
                  
               </tr>
               
               <tr>
                  <td class="td_title">엘리베이터</td>

                  <td class="td_red" colspan="2" style='padding-left: 30px'>
                  ${goodsRetrieveYP.elv }
                  </td>

               </tr>
               <tr>
                  <td class="td_title">주차</td>

                  <td class="td_red" colspan="2" style='padding-left: 30px'>
                   ${goodsRetrieveYP.parking }
                  </td>

               </tr>
               
               <tr>
                  <td class="td_title">준공년도</td>
   
                  <td class="td_red" colspan="2" style='padding-left: 30px'>
                  ${goodsRetrieveYP.build }
                  
               </tr>
               
               <tr>
                  <td class="td_title">관리자정보</td>

                  <td class="td_red" colspan="2" style='padding-left: 30px'>
                  ${goodsRetrieveYP.lessorid }
                  
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
          
            
         