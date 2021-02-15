<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script>

$(document).ready(function(){

/* 
		$("input:radio[name='region']:radio[value='${condition }']").prop('checked', true);
		
		if('${not empty region } ')	{

			$("input:radio[name='region']:radio[value='${region }']").prop('checked', true);
		} */
		
});
	function searchClass(){
		frm1.submit();
	}

</script>
<style>
*{font-family: 'Noto Sans KR', sans-serif;}
body{margin-bottom:80px;}
</style>
</head>
<jsp:include page="../main/topmenu.jsp" />
<body>
	
<!-- 검색/선택메뉴 -->	
<div class="jss39">
	<div class="jss41">
			<form id="frm2" name="frm2" action="placeSearch.do" method="post">
			<div class="jss42">
					<fieldset class="">
					<legend class="jss44">플레이스명</legend>
						<input  type="text" class="form-control" aria-label="Large" 
						aria-describedby="inputGroup-sizing-sm" id= "word" name= "word" 
						value="<c:if test ="${word ne null}">${word }</c:if>" > 
					</fieldset>
			
			</div>
			<div>
		
				<fieldset class="MuiFormControl-root">
					<legend class="jss44">지역</legend>
						<div class="select-suport-items">
								<label class="jss47">
									<input type="radio" class="" id= "region" name="region" value="all" checked>
									<span class="checkmark">전체</span>
								</label>
								<label class="jss47">
									<input type="radio" class="" id= "region" name="region" value="서울/경기/인천">
									<span class="checkmark">서울/경기/인천</span>
								</label>
								<label class="jss47">
									<input type="radio" class="" id= "region" name="region" value="대전/세종/충청">
								<span class="checkmark">대전/세종/충청</span>
								</label>
								<label class="jss47">
									<input type="radio" class="" id= "region" name="region" value="강원" >
									<span class="checkmark">강원</span>
								</label>
								<label class="jss47">
									<input type="radio" class="" id= "region" name="region" value="광주/전라">
									<span class="checkmark">광주/전라</span>
								</label>
								<label class="jss47">
									<input type="radio" class="" id= "region" name="region" value="대구/경북">
									<span class="checkmark">대구/경북</span>
								</label>
								<label class="jss47">
									<input type="radio" class="" id= "region" name="region" value="부산/울산/경남">
									<span class="checkmark">부산/울산/경남</span>
								</label>
								<label class="jss47">
									<input type="radio" class="" id= "region" name="region" value="제주">
									<span class="checkmark">제주</span>
								</label>
							</div>
							<div class="text-center">
					<button class="button rounded primary-bg text-white w-100 btn_1 boxed-btn" type="submit" id ="frm2Button" name="frm2Button">검색하기</button> 
				</div>	
				</fieldset>
		</div>
		</form>
		</div>
	</div>

	
<!-- 검색/선택메뉴 끝 -->
<!-- 검색한 클래스 클래스 리스트 -->
<div class="favourite-place jss100">
            <div class="container">
                <div class="row">
                <!-- 여기서부터 데이터 받음 -->
                

                <c:if test="${word ne null }">
                <c:forEach var="vo" items="${list }">
                <c:if test="${fn:contains(vo.placeName, word) }">
                	<c:set var ="sameword" value="1" scope="request"/>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30"><a href="placeViewForm.do?placeCode=${vo.placeCode }">
                        
                            <div class="place-img">
                                <img src="assets/img/placeImage/cafe2.jpg" alt="">
                            </div>
                            
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>5</span> </span>
                                    <h5>${vo.placeName }</h5>
                                    
                                    <p>편안한 공간</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                    	<li><i class="far fa-check-circle"></i>모든 클래스</li>
                                        <li><i class="fas fa-map-marker-alt"></i>${vo.areaName }</li>
                                    </ul>
                                </div>
                            </div>
                       </a> </div>
                    </div>
                    </c:if>
                    </c:forEach>
                    <c:if test ="${empty sameword }">
                	<div id="nonClass">
	                	<img src="assets/img/icon/nontext.png" style="width:150px">
	                	<p style="font-family:'Noto Sans KR' sans-serif;">등록된 플레이스가 없습니다.<br/>
	                	   </p>
                	</div>
                </c:if> 
                    </c:if>
                    
                    <c:if test="${word eq null }">
                    <c:forEach var="vo" items="${list }">
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30"><a href="placeViewForm.do?placeCode=${vo.placeCode }">
                        
                            <div class="place-img">
                                <img src="assets/img/placeImage/cafe2.jpg" alt="">
                            </div>
                            
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>5</span> </span>
                                    <h5>${vo.placeName }</h5>
                                    
                                    <p>편안한 공간</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                    	<li><i class="far fa-check-circle"></i>모든 클래스</li>
                                        <li><i class="fas fa-map-marker-alt"></i>${vo.areaName }</li>
                                    </ul>
                                </div>
                            </div>
                       </a> </div>
                    </div>

                    </c:forEach>
                    </c:if>
                    
                    
					<c:if test ="${empty list }">
                	<div id="nonClass">
	                	<img src="assets/img/icon/nontext.png" style="width:150px">
	                	<p style="font-family:'Noto Sans KR' sans-serif;">등록된 플레이스가 없습니다.<br/>
	                	   </p>
                	</div>
                </c:if>
                                   
                <!-- 여기까지 반복해서 생성 되어야함. -->
                </div>
            </div>
        </div>
<!--클래스 검색 list 끝-->

</body>
</html>