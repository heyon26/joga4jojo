<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
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
            <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
            <link rel="stylesheet" href="assets/css/nice-select.css"> 
            
            <link rel="stylesheet" href="assets/css/style.css">
            
	<script>
           
   	function categoryChange(e){
   		var target = document.getElementById("select2");
   		var className =["핸드메이드·수공예","쿠킹클래스","플라워레슨","드로잉","음악","요가·필라테스","레저·스포츠","체험","자기계발"];
   		var areaName= ["서울/경기/인천","대전/세종/충청","광주/전라","대구/경북","부산/울산/경남","강원","제주"];
   		
   		if(e.value == 1) var a= className;
   		else if(e.value == 2) a= areaName;
   		target.options.length = 1;
   		
   		
   		for(value in a){
   			var option=document.createElement("option");
   			option.value=a[value];
   			option.innerHTML=a[value];
   			target.appendChild(option);   	
   		} 
   		
   	}
   	
   </script>         
   </head>
   <body>
   <jsp:include page="topmenu.jsp"/>
    

    <main>
        <!-- slider Area Start-->
        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="slider-active">
                <div id="mainimage" class="d-flex align-items-center" >
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-9 col-lg-9 col-md-9">
                                <div class="hero__caption">
                                    <h1>Find your <span>Interest</span> </h1>
                                    <p style="font-family: 'Do Hyeon', sans-serif">당신이 원하는 취미를 찾아보세요!</p>
                                </div>
                            </div>
                        </div>
                        <!-- Search Box -->
                        <div class="row">
                            <div class="col-xl-12">
                                <!-- form -->
                                <form id="searchFrm" name="searchFrm" action="classSearch.do" method="post" class="search-box">
                                    <div class="select-form mb-20">
                                        <div class="select-itms">                               
                                            <select class="custom-select mr-sm-2" name="select1" id="select1" onchange="categoryChange(this)" style="height:57px">

												<option value="1">카테고리</option>
                                                <option value="2">지역</option>
                                            </select>
                                        </div>
                                    </div>
                                     <div class="select-form mb-20">
                                        <div class="select-itms">                               
                                            <select class="custom-select mr-sm-2" name="select2" id="select2" style="height:57px">

                                            	<option value="all">전체</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="search-form mb-20">
                                        <button type="submit"  class="button rounded primary-bg text-white w-100 btn_1 boxed-btn" >SEARCH</button>
                                       
                                    </div>

                                </form>	
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->
    </main>
   
	<!-- JS here -->

		<!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
		
		<!-- Jquery, Popper, Bootstrap -->
		<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>
		<!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
		<script src="./assets/js/animated.headline.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

		<!-- Scrollup, nice-select, sticky -->
        <script src="./assets/js/jquery.scrollUp.min.js"></script>
        <!-- <script src="./assets/js/jquery.nice-select.min.js"></script> -->
		<script src="./assets/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>
        




        
    </body>
</html>
