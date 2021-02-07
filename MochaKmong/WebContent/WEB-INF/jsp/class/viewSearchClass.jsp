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
	if('${not empty condition  }'){ //조건값 받아서 radiobox에 표시
		console.log('${condition }');
		$("input:radio[name='categorys']:radio[value='${condition }']").prop('checked', true);
		$("input:radio[name='region']:radio[value='${condition }']").prop('checked', true);
	}
			
	})
</script>
</head>
<jsp:include page="../main/topmenu.jsp" />
<body>
	
<!-- 검색/선택메뉴 -->	
	<div class="_empty">&nbsp;</div>
	<div class="jss40">
		<div class="jss41">
			<fieldset class="MuiFormControl-root">
				<legend class="jss44">클래스 명</legend>
				<div class="MuiFormControl-root">
				<form id="frm" name="frm" action="#" method="post">
					<input type="text" class="jss57" placeholder="원하시는 클래스를 입력하세요." >
					<button type="submit">검색하기</button>
				</form>
				</div>
			</fieldset>
		<div>
		<form id="frm2" name="frm2" action="" method="post">
			<fieldset class="MuiFormControl-root">
					<legend class="jss44">지역</legend>
				<div class="MuiFormGroup-row MuiFormGroup-root">
				<div class="jss45">
					
						<label class="jss47">
							<input type="radio" class="" id= "region" name="region" value="전체" checked>
							<span class="checkmark">전체</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id= "region" name="region" value="서울/경기도/인천">
							<span class="checkmark">서울/경기도/인천</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id= "region" name="region" value="대전/세종/충청도">
							<span class="checkmark">대전/세종/충청도</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id= "region" name="region" value="강원도" >
							<span class="checkmark">강원도</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id= "region" name="region" value="전라북도">
							<span class="checkmark">전라북도</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id= "region" name="region" value="전라남도/광주">
							<span class="checkmark">전라남도/광주</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id= "region" name="region" value="경상북도/대구/부산">
							<span class="checkmark">경상북도/대구/부산</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id= "region" name="region" value="경상남도/울산">
							<span class="checkmark">경상남도/울산</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id= "region" name="region" value="제주도">
							<span class="checkmark">제주도</span>
						</label>
				</div>	
				</div>
			</fieldset>
			<fieldset class="MuiFormControl-root">
				<legend class="jss44">카테고리</legend>
				<div class="select-suport-items">
					<label class="jss46">
						<input type="radio" class="" id="categorys" name="categorys" value="all" checked>
						<span class="checkmark">전체</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="categorys" name="categorys" value="핸드메이드·수공예" >
						<span class="checkmark">핸드메이드·수공예</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="categorys" name="categorys" value="쿠킹클래스">
						<span class="checkmark">쿠킹 클래스</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="categorys" name="categorys" value="플라워레슨">
						<span class="checkmark">플라워 레슨</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="categorys" name="categorys" value="드로잉">
						<span class="checkmark">드로잉</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="categorys" name="categorys" value="음악">
						<span class="checkmark">음악</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="categorys" name="categorys" value="요가·필라테스">
						<span class="checkmark">요가·필라테스</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="categorys" name="categorys" value="레저·스포츠">
						<span class="checkmark">레저·스포츠</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="categorys" name="categorys" value="체험">
						<span class="checkmark">체험</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="categorys" name="categorys" value="자기계발">
						<span class="checkmark">자기계발</span>
					</label>
				</div>
				<div>
					<button type="button" onclick="#">검색하기</button> 
				</div>
			</fieldset>
		</form>
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
                <!-- 여기서부터 -->
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
</body>
</html>