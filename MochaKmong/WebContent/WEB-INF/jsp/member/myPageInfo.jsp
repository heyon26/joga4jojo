<%@page import="co.mok.pro.vo.UserVo"%>
<%@page import="co.mok.pro.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 관리</title>
 <link rel="stylesheet" href="assets/css/mypage.css">
 

</head>

<body>

<!-- 로그인 세션값 호출 -->
<%
	String id = (String)session.getAttribute("user_id");
	UserDao dao = new UserDao();
	UserVo vo = new UserVo();
	
	vo = dao.getUserInfo(id);
%>

<!-- 로그인 세션값 호출 -->

<form name="frm" method="post">
	<input type="hidden" name="userId" value=<%=vo.getUserId() %>>
</form>
<div class="col-lg-4">
           <div class="profile-card-4 z-depth-3">
            <div class="card">
            
              <div class="card-body text-center bg-primary rounded-top">
               <div class="user-box">
               <!--  <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="user avatar"> -->
               <img src="" alt="user avatar">
              </div>
              <h5 class="mb-1 text-white"><%=vo.getUserName() %></h5>
              <h6 class="text-light">이름</h6>
             </div>
              <div class="card-body">
                <ul class="list-group shadow-none">
                <li class="list-group-item">
                  <div class="list-icon">
                    <i class="fa fa-phone-square"></i>
                  </div>
                  <div class="list-details">
                    <span><%=vo.getUserTel() %></span>
                    <small>전화번호</small>
                  </div>
                </li>
                <li class="list-group-item">
                  <div class="list-icon">
                    <i class="fa fa-envelope"></i>
                  </div>
                  <div class="list-details">
                    <span><%=vo.getUserEmail() %></span>
                    <small>이메일</small>
                  </div>
                </li>
                <li class="list-group-item">
                  <div class="list-icon">
                    <i class="fa fa-globe"></i>
                  </div>
                  <div class="list-details">
                    <span><%=vo.getUserAddress() %></span>
                    <small>주소</small>
                  </div>
                </li>
                </ul>
                <div class="row text-center mt-4">
                  <div class="col p-2">
                   <h4 class="mb-1 line-height-5"><%=vo.getUserJoindate() %></h4>
                    <small class="mb-0 font-weight-bold">가입일</small>
                   </div>
                    <div class="col p-2">
                    
                    <c:set var="userAuth" value="<%=vo.getUserAuth() %>" />
                    <c:choose>
                    <c:when test="${userAuth eq 'ADMIN'}">
                    	<h4 class="mb-1 line-height-5">관리자</h4>
                     </c:when>
                    <c:otherwise>
                   		<h4 class="mb-1 line-height-5">일반회원</h4>
                     </c:otherwise>
                     </c:choose>
                     
                     <small class="mb-0 font-weight-bold">회원등급</small>
                    </div>
                 </div>
               </div>
               
               <div class="card-footer text-center">
                 <a href="javascript:void()" class="btn-social btn-facebook waves-effect waves-light m-1"><i class="fa fa-facebook"></i></a>
                 <a href="javascript:void()" class="btn-social btn-google-plus waves-effect waves-light m-1"><i class="fa fa-google-plus"></i></a>
                 <a href="javascript:void()" class="list-inline-item btn-social btn-behance waves-effect waves-light"><i class="fa fa-behance"></i></a>
                 <a href="javascript:void()" class="list-inline-item btn-social btn-dribbble waves-effect waves-light"><i class="fa fa-dribbble"></i></a>
               </div>
             </div>
           </div>
        </div>
</body>
</html>