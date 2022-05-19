<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">

$(document).ready(function() {
   
})

</script>
<html>
   <head>
      
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
   </head>
   <body class="is-preload">
      <div id="page-wrapper">

         <!-- Header -->
            <header id="header">
               <jsp:include page="common/top.jsp" flush="true"></jsp:include> <br>
               <nav id="nav">
               
               </nav>
            </header>

         <!-- Main -->
            <section id="main" class="container medium">
         
                           
<div class="container" >
        <div class="row">
            <form method="post" action="writeAction" >
                <table class="table table-striped" style="text-align: center; border:1px solid #dddddd; width:90%; height:90%" >
                    <thead>
                        <tr><th  colspan="2" style="backgroud-color:#eeeeee; text-align: center; color:#5F5F5F;"> 게시판 글쓰기 양식 </th></tr>
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
            </section>

   

      </div>

      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.dropotron.min.js"></script>
         <script src="assets/js/jquery.scrollex.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>

   </body>
</html>
            