<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</head>
<jsp:include page="../main/topmenu.jsp"></jsp:include>
<body>

<!-- 검색/선택메뉴 -->	
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
							<input type="radio" class="" id= "region" name="region" checked>
							<span class="checkmark">전체</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id="region" name="region" >
							<span class="checkmark">서울</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id="region" name="region" >
							<span class="checkmark">부산</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id="region" name="region" >
							<span class="checkmark">인천/경기</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id="region" name="region" >
							<span class="checkmark">대구/경북</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id="region" name="region" >
							<span class="checkmark">울산/경남</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id="region" name="region">
							<span class="checkmark">전주/전북</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id="region" name="region">
							<span class="checkmark">광주/전남</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id="region" name="region">
							<span class="checkmark">대전/충청</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id="region" name="region">
							<span class="checkmark">강원</span>
						</label>
						<label class="jss47">
							<input type="radio" class="" id="region" name="region">
							<span class="checkmark">제주</span>
						</label>
				</div>	
				</div>
			</fieldset>
			<fieldset class="MuiFormControl-root">
				<legend class="jss44">카테고리</legend>
				<div class="select-suport-items">
					<label class="jss46">
						<input type="radio" class="" id="category" name="category" checked>
						<span class="checkmark">전체</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="category" name="category" >
						<span class="checkmark">핸드메이드·수공예</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="category" name="category" >
						<span class="checkmark">쿠킹 클래스</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="category" name="category" >
						<span class="checkmark">플라워 레슨</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="category" name="category" >
						<span class="checkmark">드로잉</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="category" name="category" >
						<span class="checkmark">음악</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="category" name="category" >
						<span class="checkmark">요가.필라테스</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="category" name="category" >
						<span class="checkmark">레저.스포츠</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="category" name="category" >
						<span class="checkmark">체험</span>
					</label>
					<label class="jss46">
						<input type="radio" class="" id="category" name="category" >
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
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>#4.0(별점 숫자로)</span> </span>
                                    <h3><a href="#">#클래스명</a></h3>
                                    <p class="dolor">#클래스 가격<span>/1인당</span></p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="fas fa-map-marker-alt"></i>#지역명</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>