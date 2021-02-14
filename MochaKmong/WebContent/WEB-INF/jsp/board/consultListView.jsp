<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>질문리스트 상세보기 </title>
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
<jsp:include page="../main/topmenu.jsp"></jsp:include>
<script type="text/javascript">
	
	function updateAlert() {  //수정
		var ub = confirm("글 수정 하시겠습니까?");
			if(ub) {
			frm.action = "consultEditForm.do";
			frm.submit();
		}
	}
	
	function deleteAlert(){
		var ib = confirm("삭제 하시겠습니까");
		if (ib) {
			location.href = "boardDelete.do?boardCode="+"${vo.boardCode}";
		}
	}
	window.onload = function(){
	    var dt = new Date();
	    var Year = dt.getFullYear();        
	    var Month = "" + (dt.getMonth()+1);
	    var Day = "" + dt.getDate();            
	    
	    if(Month.length < 2) Month = "0" + Month;
	    if(Day.length < 2) Day = "0" + Day;
	    
	    var Today = Year.toString()+"/" + Month +"/" + Day;
	    
	    document.getElementById("TODAY").value = Today;
	} 
	
</script>
<div class="container box_1170">
		<div>
			<form id="frm" name="frm" action="" method="post">
			<input type="hidden" id="boardCode" name="boardCode" value="${vo.boardCode }">
			</form>
		</div>
               <div class="single-post">
                  <div class="blog_details">
                   	<h3>문의</h3>
                   	<br/>
                     <h4>${vo.bName }</h4> <!-- 제목 -->
                     <ul class="blog-info-link mt-3 mb-4">
                        <li><a href="#"><i class="fa fa-user"></i> ${vo.userId }</a></li> <!-- 작성자 -->
                        <li><a href="#">${vo.bDate }</a></li>
                        <li><a href="#">조회수 ${vo.bHit }</a></li>
                     </ul>
                     <p class="excert">${vo.bContent } </p>
                  </div>
               </div>
               <div align="right" class="button-group-area mt-40">
               		<a href="consultList.do"class="genric-btn info circle arrow">목록</a>
					<a onclick="updateAlert()"class="genric-btn info circle arrow">수정</a>
					<a onclick="deleteAlert()"class="genric-btn info circle arrow">삭제</a>
			   </div>
			   <!-- 댓글 부분 -->
               <div class="comments-area">
                  <h4>답변</h4>
                 <!-- 댓글 리스트 --> 
                  <div class="comment-list">
                     <div class="single-comment justify-content-between d-flex">
                        <div class="user justify-content-between d-flex">
                           <!-- 댓글 프로필 사진  <div class="thumb">
                              <img src="assets/img/comment/comment_1.png" alt="">
                           </div> 
                           -->
                           <c:forEach var="avo" items="${list }">
                           <div class="desc">
                              <p class="comment">${avo.aContent }</p>
                              <div class="d-flex justify-content-between">
                                 <div class="d-flex align-items-center">
                                    <h5>
                                       <a href="#">${avo.userId }</a>
                                    </h5>
                                    <p class="date">20${avo.aDate }</p>
                                 </div>
                                 <div class="reply-btn">
                                    <a href="#" class="btn-reply text-uppercase"></a>
                                 </div>
                              </div>
                           </div>
                           </c:forEach>
                        </div>
                     </div>
                  </div>
                 <!-- 댓글 리스트-->
                 <c:if test="${user_id eq 'admin' }">	
               <div class="comment-form">
                  <h4>답변 작성</h4>
                  <form class="form-contact comment_form" action="newAnswer.do" id="frm"name="frm"method="post">
                  	<input type="hidden" id="boardCode" name="boardCode" value="${vo.boardCode }">
                     <div class="row">
                        <div class="col-sm-6">
                           <div class="form-group">
<!-- 답변 이름 -->              <input class="form-control" id="userId"name="userId" type="text" placeholder="Name" value="admin"readonly="readonly">
                           </div>
                        </div>
                        <div class="col-sm-6">
                           <div class="form-group">
<!-- 작성일        -->         <input class="form-control"id="TODAY" type="text" placeholder="작성일"readonly="readonly">
                           </div>
                        </div>
                        <div class="col-12">
                           <div class="form-group">
                              <textarea class="form-control w-100" name="aContent" id="aContent" cols="30" rows="20" placeholder="답변 작성"></textarea>
                           </div>
                        </div>
                     </div>
                     <div class="form-group">
                        <button type="submit" class="button button-contactForm btn_1 boxed-btn">작성 완료</button>
                     </div>
                  </form>
               </div>
               </c:if>
            </div>
</body>
</html>