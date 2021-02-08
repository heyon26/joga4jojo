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
		/* if('${not empty region } && ${not empty category }')	{
			$("input:radio[name='categorys']:radio[value='${category }']").prop('checked', true);
			$("input:radio[name='region']:radio[value='${region }']").prop('checked', true);
		} */
		
});

	
</script>
</head>
<jsp:include page="../main/topmenu.jsp" />
<body>
	
<!-- 검색/선택메뉴 -->	
	<div class="_empty">&nbsp;</div>
	<div class="jss40">
		<div class="jss41">
			<fieldset class="MuiFormControl-root">
				<div class="jss42">
				<legend class="jss44">클래스 명</legend>
				<div class="MuiFormControl-root">
				<form id="frm1" name="frm1" action="classSearch1.do" method="post">
					<input type="text" class="jss57" id= "word" name= "word" placeholder="원하는 클래스를 입력하세요." required>
					<button type="submit" name = "frm1Button">검색하기</button>
				</form>
				</div>
				</div>
			</fieldset>
		<div>
		<form id="frm2" name="frm2" action="classSearch2.do" method="post">
			<fieldset class="MuiFormControl-root">
					<legend class="jss44">지역</legend>
				<div class="MuiFormGroup-row MuiFormGroup-root">
				<div class="jss45">
					
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
						<span class="checkmark">쿠킹클래스</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="categorys" name="categorys" value="플라워레슨">
						<span class="checkmark">플라워레슨</span>
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
					<button type="submit" id ="frm2Button" name="frm2Button">검색하기</button> 
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
                <!-- 여기서부터 데이터 받음ㄴ -->
                <c:if test ="${empty list }">
                	<div class="typography"><h3>등록된 클래스가 없습니다.</h3></div>
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
</body>
</html>