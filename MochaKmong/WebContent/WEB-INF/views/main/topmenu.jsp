<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
   <body>
    <header>
        <!-- menu Start -->
       <div class="header-area">
            <div class="main-header ">
                <div class="header-bottom  header-sticky">
                    <div class="container">
                        <div class="row align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-2 col-lg-2 col-md-1">
                                <div class="logo">
                                  <a href="main.do"><img src="assets/img/logo/moca.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10 col-md-10">
                                <!-- Main-menu -->
                                <div class="main-menu f-right d-none d-lg-block">
                                  <nav>               
                                        <ul id="navigation">     
                                         <c:if test="${user_auth eq null }">                                                                                                                                
                                            <li><a href="index.html">공지사항</a></li>
                                            <li><a href="about.html">클래스등록</a></li>
                                            <li>  
                                            <i class="far fa-user-circle"></i>  
                                                <ul class="submenu">
                                                    <li><a href="loginForm.do">로그인</a></li>
                                                    <li><a href="userJoinForm.do">회원가입</a></li>   
                                                </ul>           
                                           </c:if>            
                                      <c:if test="${user_auth ne null }">
                                      <li><a href="#">로그아웃</a>
                                      <ul class="submenu">
				                       <li><a class="menuLink" href="logout.do" >로그아웃</a></li>
				                       <li></li>
				                       <li><a class="menuLink" href="#">내클래스/프로필</a></li>
                                       </ul>                
				                       </c:if>         
                                     </ul>
                                    </nav>
                                </div>
                            </div>
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
               </div>
            </div>
       </div>
        <!-- main End -->
    </header>
</body>
</html>