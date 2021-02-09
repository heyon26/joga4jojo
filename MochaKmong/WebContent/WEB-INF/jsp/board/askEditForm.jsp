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
<div class="container box_1170">
<div class="comment-form">
                  <h4>자주 묻는 질문 수정</h4>
                  <form class="form-contact comment_form" action="askEdit.do" id="frm"name="frm"method="post">
                     <div class="row">
                        <div class="col-sm-1">
                           <div class="form-group">
                              <input class="form-control" id="boardCode" name="boardCode" type="text" placeholder="Name" value="${vo.boardCode }"readonly="readonly">
                           </div>
                        </div>
                         <div class="col-sm-2">
                           <div class="form-group">
                              <input class="form-control" name="bDate" id="bDate" type="text" value="${vo.bDate }"placeholder="작성일"readonly="readonly">
                           </div>
                        </div>
                        <div class="col-sm-3">
                           <div class="form-group">
                              <input class="form-control"id="bBoard"name="bBoard"size="20" value="${vo.bBoard }" type="text" placeholder="대분류">
                           </div>
                        </div>
                        <div class="col-sm-3">
                           <div class="form-group">
                              <input class="form-control" id="bCategoryA"name="bCategoryA" type="text" placeholder="CategoryA" value="${vo.bCategoryA }">
                           </div>
                        </div>
                         <div class="col-sm-3">
                           <div class="form-group">
                              <input class="form-control" id="bCategoryB"name="bCategoryB" type="text" placeholder="CategoryB"value="${vo.bCategoryB }">
                           </div>
                        </div>
                        <div class="col-12">
                           <div class="form-group">
                              <input class="form-control" id="bName"name="bName" value="${vo.bName }"type="text" placeholder="제목"required="required">
                           </div>
                        </div>
                        <div class="col-12">
                           <div class="form-group">
                              <textarea class="form-control w-100" id="bContent"name="bContent" cols="30" rows="9" placeholder="내용" required="required">${vo.bContent }</textarea>
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