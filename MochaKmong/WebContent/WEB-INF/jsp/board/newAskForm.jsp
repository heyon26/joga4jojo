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
<jsp:include page="../main/topmenu.jsp"></jsp:include>
<script type="text/javascript">
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
<div class="comment-form">
                  <h4>자주 묻는 질문 작성</h4>
                  <form class="form-contact comment_form" action="newAsk.do" id="frm"name="frm"method="post">
                     <div class="row">
                        <div class="col-sm-2">
                           <div class="form-group">
                              <input class="form-control" id="userId"name="userId" type="text" placeholder="ID" value="admin" readonly="readonly">
                           </div>
                        </div>
                         <div class="col-sm-2">
                           <div class="form-group">
                              <input class="form-control"  id="TODAY" type="text" readonly="readonly">
                           </div>
                        </div>
                        <div class="col-sm-2">
                           <div class="form-group">
                              <input class="form-control"id="bBoard"name="bBoard"size="30" value="질문" type="text" placeholder="대분류"readonly="readonly">
                           </div>
                        </div>
                        <div class="col-sm-3">
                           <div class="form-group">
                             	<select id="bCategoryA"name="bCategoryA"  style="width:270px;height:50px;">
							    <option value="없음">선택</option>
							    <option value="결제">결제</option>
							    <option value="환불">환불</option>
							    <option value="기타">기타</option>
							</select>
                           </div>
                        </div>
                         <div class="col-sm-3">
                           <div class="form-group">
                            <select id="bCategoryB"name="bCategoryB"  style="width:270px;height:50px;">
							    <option value="없음">선택</option>
							    <option value="클래스">클래스</option>
							    <option value="기타">기타</option>
							</select>
                           </div>
                        </div>
                        <div class="col-12">
                           <div class="form-group">
                              <input class="form-control" id="bName"name="bName" type="text" placeholder="제목"required="required">
                           </div>
                        </div>
                        <div class="col-12">
                           <div class="form-group">
                              <textarea class="form-control w-100" id="bContent"name="bContent" cols="30" rows="9" placeholder="내용" required="required"></textarea>
                           </div>
                        </div>
                     </div>
                     <div align="right"class="form-group">
                        <button type="submit" class="button button-contactForm btn_1 boxed-btn">작성완료</button>
                        <button type="reset" class="button button-contactForm btn_1 boxed-btn">취소</button>
                     </div>
                  </form>
               </div>
            </div>
</body>
</html>