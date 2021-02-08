<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Travel HTML-5 Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

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
<script src="./assets/js/jquery-3.5.1.min.js"></script>
<script>

$(document).ready(function(){

		$("input:radio[name='categorys']:radio[value='${condition }']").prop('checked', true);
		$("input:radio[name='region']:radio[value='${condition }']").prop('checked', true);
		
		
});

	
</script>

</head>
<jsp:include page="/WEB-INF/jsp/main/topmenu.jsp" />
<body>
	
<!-- 검색/선택메뉴 -->	
<div class="jss39">
	<div class="jss41">
		<div>
			<table id="table1" style={border:1px}>
				<tr>
					<td>클래스명</td>
					<td><input type="text" name="className" id="className"></td> 
				</tr>
				
			</table>			
		</div>
	</div>
</div>
<!-- 검색/선택메뉴 끝 -->
<!-- 검색한 클래스 클래스 리스트 -->
<div class="favourite-place jss100">
            <div class="container">
                <div class="row">
                <!-- 임시 테스트 화면 -->
                <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>8.0 Superb</span> </span>
                                    <h3><a href="#">The Dark Forest Adventure</a></h3>
                                    <p class="dolor">$1870 <span>/ Per Person</span></p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>Los Angeles</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                <!-- 여기서부터 데이터 받음ㄴ -->
                <c:if test ="${empty list }">
                	<div><h2>등록된 클래스가 없습니다.</h2></div>
                </c:if>
                <c:if test="${not empty list }">
                <c:forEach var="vo" items="${list }">
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                        
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>${vo.ratingCode }</span> </span>
                                    <h3><a href="#">${vo.className }</a></h3>
                                    <p class="dolor">${vo.classPrice }원<span>/1인당</span></p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                    	<li><i class="far fa-check-circle"></i>${vo.cateGoryA}</li>
                                        <li><i class="fas fa-map-marker-alt"></i>${vo.areaName }</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
					</c:if>                    
                <!-- 여기까지 반복해서 생성 되어야함. -->
                </div>
            </div>
        </div>
        <!-- class-list 끝 -->
        	

</body>
</html>