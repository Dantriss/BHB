<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){

	
	 $("form").on("submit", function (e) {
		 var gCode = $("#gCode").val();
		 var deposit = $("#deposit").val();
        var gPrice_MP = $("#gPrice_MP").val();
        var address = $("#sample4_roadAddress").val();
        var location = $("#location").val();
        var area = $("#area").val();
        var room = $("#room").val();
        var fee = $("#fee").val();
        var floor = $("#floor").val();
        var build = $("#build").val();
        var gImage1 = $("#gImage1").val();
        var gImage2 = $("#gImage2").val();
		 var gImage3 = $("#gImage3").val();
		 var gImage4 = $("#gImage4").val();
		 var gImage5 = $("#gImage5").val();
		 var post = $("#sample4_postcode").val();
        var addr2 = $("#sample4_jibunAddress").val();
        var elv = $("#elv").val();
        //var parking= $('input:radio[name=parking]').is(':checked');
        //var parking = $('input:radio[id="parking"]').is(':checked');
		  
		 
		 if (gImage1.length==0) {
			alert("1번 사진을 넣어주세요.")
			$("#gImage1").focus();
			e.preventDefault();
			
		 } else if (gImage2.length==0 ) {
			 alert("2번 사진을 넣어주세요.")
			 $("#gImage2").focus();
			 e.preventDefault();
		 }
		   else if (gImage3.length==0 ) {
			 alert("3번 사진을 넣어주세요.")
			 $("#gImage3").focus();
			 e.preventDefault();
		 }
		   else if (gImage4.length==0 ) {
			 alert("4번 사진을 넣어주세요.")
			 $("#gImage4").focus();
			 e.preventDefault();
		 }
		   else if (gImage5.length==0 ) { 
			 alert("5번 사진을 넣어주세요.")
			 $("#gImage5").focus();
			 e.preventDefault();
			 
		 } else if (deposit.length==0) { 
		 	 alert("보증금을 확인해주세요.")
			 $("#deposit").focus();
			 e.preventDefault(); 
		 } 
		   else if (gPrice_MP.length==0 ) { 
			 alert("월세금액을 입력해주세요.")
			 $("#gPrice_MP").focus();
			 e.preventDefault();
		 } else if (address.length==0 ) { 
			 alert("주소를 입력해주세요.")
			 $("#address").focus();
			 e.preventDefault();
		 } else if (location.length==0 ) { 
			 alert("지역정보를 입력해주세요.")
			 $("#location").focus();
			 e.preventDefault();
		 } else if (room.length==0 ) { 
			 alert("매물유형을 선택해주세요.")
			 $("#room").focus();
			 e.preventDefault();
		 } else if (fee.length==0 ) { 
			 alert("관리비를 입력해주세요.")
			 $("#fee").focus();
			 e.preventDefault();
		 } else if (area.length==0 ) { 
			 alert("평수를 입력해주세요.")
			 $("#area").focus();
			 e.preventDefault();
		 } 
		   else if (floor.length==0 ) { 
			 alert("층수를 입력해주세요.")
			 $("#floor").focus();
			 e.preventDefault();
		 } 
		   else if (parking.length==0 ) { 
		 	 alert("주차 유무를 선택해주세요.")
			 $("#parking").focus();
			 e.preventDefault();
		 } 
		   else if (elv.length==0 ) { 
		 	 alert("엘레베이터 유무를 선택해주세요.")
			 $("#elv").focus();
			 e.preventDefault();
		 } 
		   else if (build.length!=8 ) { 
		 	 alert("준공일자를 숫자 8자리로 입력해주세요. ex)19950501")
			 $("#build").focus();
			 e.preventDefault();
		 } 
		   else if (post==0 ) { 
		 	 alert("우편번호를 확인해주세요.")
			 $("#post").focus();
			 e.preventDefault();
		 } 
		   else if (addr2.length==0 ) { 
		 	 alert("주소를 확인해주세요.")
			 $("#addr2").focus();
			 e.preventDefault(); 
		 } 
		   

	});
	
});



</script>

  <form action="goodsMPAdd" method="post">
<hr>
    <h4>사진 등록</h4>
	<div class="IMAGE" id="addPhoto">
           <input type="text" name="gImage1" /> 
           <input type="text" name="gImage2"  /> 
           <input type="text" name="gImage3"  /> 
           <input type="text" name="gImage4"  /> 
           <input type="text" name="gImage5" /> 
  
	
	</div>
	<br>
 <h3>상세정보</h3>
 	  <table class="add-table">
   <tr>
        <th>보증금</th>
          <td> 
           <input type="text" name="deposit" /> 만원
	    </td>
	 </tr>
	 	
	<tr>
	   <th>월세</th> 
	   <td>
	   	   <input type="text" name="gPrice_MP" /> 만원
	   </td>
	   </tr>
	
	
	 <tr>
	 	<th>주소</th>
	 	<td>
	      <input type="text" name="post"  placeholder="우편번호">
		  <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
		  <input type="text" name="address" placeholder="도로명주소">
		  <input type="text" name="addr2" placeholder="지번주소">
		  <span id="guide" style="color:#999"></span>
	   </td>
	</tr>
	
	<tr>
		<th>위치정보</th>
		<td class="location">
		<input type="text" name="location" />
	  	 
	</td>
	</tr>
	   
	   
	 <tr>
	   <th>방구조</th>
         <td>
           <select style="width:180px" name="room">
              <option value="">선택하세요</option>
              <option value="01">원룸</option>
              <option value="02">투룸</option>
           </select>
         </td>
	   </tr>
	  <th>관리비</th>
	  	<td>
	  	  <input type="text" name="fee"  /> 만원
	  	  </td>
	  <tr>  
	  <th>평수</th>
	    <td>    
	      <span class="mb-5" >
                <input type="text" name="area" /> m²
           </span>
	  	</td>
	  	</tr>
	  	
	 <tr>
	 	<th>층수</th>
	 	<td> 
	 	<input type="text" name="floor"  /> 층
		</td>
		
		</tr>
		
	<tr>
        <th>옵션</th>
           <td class="i-options">
            <label><input type="checkbox"/> 에어컨</label>
            <label><input type="checkbox"/> 냉장고</label>
            <label><input type="checkbox" /> 세탁기</label>
            <label><input type="checkbox"/> 책상</label>
            <label><input type="checkbox" /> 책장</label>
			<label><input type="checkbox"/> 침대</label>
          
         </td>
       </tr>
       
   <tr>
       <th>주차</th>
        <td class="has-col">
 			 <label><input type="radio" name="parking" value="o" /> 가능</label>
             <label><input type="radio" name="parking" value="x" /> 없음</label>
                              
             </td>
           </tr>
	<tr>
		<th>엘리베이터</th>
	     <td class="ELV">
                   <label><input type="radio" name="elv" value="o" /> 있음</label>
                   <label><input type="radio" name="elv" value="x" /> 없음</label>
	</td>
</tr>
	<tr>
		<th>준공날짜</th>
		<td class="BUILD">
		<input type="text" name="build" />
	  	 
	</td>
	</tr>
</table>	
	
	<br> <input type="submit" value="매물등록">
	<input type="reset" value="등록취소">
	
</form>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>

	/* 주소  */

    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>





