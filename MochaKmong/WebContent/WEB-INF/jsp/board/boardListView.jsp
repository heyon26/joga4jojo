<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Travel HTML-5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

		<!-- CSS here -->
            <link rel="stylesheet" href="assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="assets/css/flaticon.css">
            <link rel="stylesheet" href="assets/css/slicknav.css">
            <link rel="stylesheet" href="assets/css/animate.min.css">
            <link rel="stylesheet" href="assets/css/magnific-popup.css">
            <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="assets/css/themify-icons.css">
            <link rel="stylesheet" href="assets/css/slick.css">
            <link rel="stylesheet" href="assets/css/nice-select.css">
            <link rel="stylesheet" href="assets/css/style.css">
            
   </head>
   <style>

	#button3{
  			background-color: #ffc107 !important;
		}
		</style>
<jsp:include page="../main/topmenu.jsp"></jsp:include>
<script type="text/javascript">
	
	function updateAlert() {  //수정
		var ub = confirm("글 수정 하시겠습니까?");
			if(ub) {
			frm.action = "boardEditForm.do";
			frm.submit();
		}
	}
	
	function deleteAlert(){
		var ib = confirm("삭제 하시겠습니까");
		if (ib) {
			location.href = "boardDelete.do?boardCode="+"${vo.boardCode}";
		}
	}
</script>
<div class="container box_1170">
<div class="section-top-border">
		<div>
			<form id="frm" name="frm" action="" method="post">
			<input type="hidden" id="boardCode" name="boardCode" value="${vo.boardCode }">
			</form>
		</div>
               <div class="single-post">
                  <div class="blog_details">
                   	<h3>공지사항</h3>
                   	<br/>
                     <h4>${vo.bName }</h4> <!-- 제목 -->
                     <ul class="blog-info-link mt-3 mb-4">
                        <li><a href="#"><i class="fa fa-user"></i> ${vo.userId }</a></li> <!-- 작성자 -->
                        <li><a href="#">${vo.bDate }</a></li>
                        <li><a href="#">조회수 ${vo.bHit }</a></li>
                     </ul>
                     <p class="excert">
                      
                        ${vo.bContent }
                     </p>
                  </div>
               </div>
              <c:if test="${user_id eq 'admin' }">
               <div align="right" class="button-group-area mt-40">
               		<a id="button3"href="boardList.do"class="genric-btn info circle arrow">목록</a>
					<a onclick="updateAlert()"id="button3"class="genric-btn info circle arrow">수정</a>
					<a onclick="deleteAlert()"id="button3"class="genric-btn info circle arrow">삭제</a>
			   </div>
			   </c:if>
			   <c:if test="${user_id ne 'admin' }">
               <div align="right" class="button-group-area mt-40">
               		<a id="button3"href="boardList.do"class="genric-btn info circle arrow">목록</a>
			   </div>
			   </c:if>
			   
	</div>		
</div>              
</body>
</html>