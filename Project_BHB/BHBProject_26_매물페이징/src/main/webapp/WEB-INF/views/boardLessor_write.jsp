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
               <jsp:include page="common/top.jsp" flush="true"></jsp:include> 
         
              
            

         <!-- Main -->
            <section id="main" class="container medium">
         	<header>
                   <h1>정보게시판 글쓰기</h1>         
			</header>
        <div class="box">
            <form method="post" action="writeAction" >
            <div class="row gtr-50 gtr-uniform">
               <div class="col-12">
               <input type="text" class="form-control" placeholder="글 제목" name="bl_title" width="100%" maxlength="50"></input></td>
               </div>
               
               <div class="col-12">
               <textarea class="form-control" placeholder="글 내용" name="bl_content" maxlength="2000" cols="180" rows="200" style="height: 350px;"></textarea>
               </div>
                  <div class="col-12">
						<ul class="actions special">
							<li><input type="submit" value="Send" /></li>
						</ul>
				</div>
              </div>
            </form>
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
            