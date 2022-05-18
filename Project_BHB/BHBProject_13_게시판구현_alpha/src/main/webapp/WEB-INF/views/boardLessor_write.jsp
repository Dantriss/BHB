<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">

$(document).ready(function() {
	
})

</script>
  
<div class="container" >
        <div class="row">
            <form method="post" action="writeAction" >
                <table class="table table-striped" style="text-align: center; border:1px solid #dddddd; width:90%; height:90%" >
                    <thead>
                        <tr><th  colspan="2" style="backgroud-color:#eeeeee; text-align: center;"> 게시판 글쓰기 양식 </th></tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td ><input type="text" class="form-control" placeholder="글 제목" name="bl_title" width="100%" maxlength="50"></input></td>
                        </tr>
                        <tr>
                            <td ><textarea class="form-control" placeholder="글 내용" name="bl_content" maxlength="1000" cols="180" rows="200" style="height: 350px;"></textarea></td>
                        </tr>
                    </tbody>
                </table>
                <input type="submit" class="writeBtn" value="저장하기"></input>
            </form>
        </div>
    </div>