<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
 <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
</head>
 <jsp:include page="common/top.jsp" flush="true"></jsp:include> 
<body>
<section id="main" class="container medium">
					<header>
						
						<p>게시글 수정</p>
					</header>
					
					<div class="box">
						<form method="post" action="myBoardModify">
							
							<input type="hidden" name="bl_num" value="${myBoard.bl_num}">
							<input type="hidden" name="bl_nick" value="${myBoard.bl_nick }">
							<input type="hidden" name="bl_hit" value="${myBoard.bl_hit }">
							<input type="hidden" name="bl_lessorid" value="${myBoard.bl_lessorid}">
						<!-- 아직 컨트롤러 미완성!! -->

							<div class="row gtr-50 gtr-uniform">
								
								<div class="col-12">
									<input type="text" name="bl_title"  value="${myBoard.bl_title }" placeholder="Subject">
								
								</div>
								<div class="col-12">
									<textarea name="bl_content" rows="6">${myBoard.bl_content }</textarea>
								</div>
								<div class="col-12">
									<ul class="actions special">
										<li><input type="submit" value="전송" /></li>
									</ul>
								</div>
							</div>
						</form>
					</div>
				</section>

</body>
</html>