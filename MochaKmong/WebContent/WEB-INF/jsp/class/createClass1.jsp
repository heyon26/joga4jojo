<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>Au Register Forms by Colorlib</title>

<!-- Icons font CSS-->
<link
	href="/MochaKmong/assets/regform/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="/MochaKmong/assets/regform/vendor/select2/select2.min.css"
	rel="stylesheet" media="all">
<link
	href="/MochaKmong/assets/regform/vendor/datepicker/daterangepicker.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="/MochaKmong/assets/regform/main.css" rel="stylesheet"
	media="all">
</head>

<body>
	<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
		<div class="wrapper wrapper--w680">
			<div class="card card-4">
				<div class="card-body">

					<form method="POST">
						<!-- 폼시작 -->
						<h4 class="title">연락처</h4>
						<div class="row row-space" style="margin-bottom: 50px !important;">

							<div class="col-2">
								<div class="input-group">
									<label class="label">이메일</label> <input class="input--style-4"
										type="email" name="userEmail">
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">전화번호</label> <input class="input--style-4"
										type="text" name="userTel">
								</div>
							</div>
						</div>
						<h4 class="title">클래스 정보</h4>
						<div>
							<div>
								<div class="input-group">
									<label class="label">클래스 이름</label> <input
										class="input--style-4" type="text" name="className">
								</div>
							</div>
							<br>
							<div class="input-group">
								<label class="label">클래스 분류</label>
								<div class="rs-select2 js-select-simple select--no-search">
									<select name="cateGoryA">
										<option disabled="disabled" selected="selected">분류 선택</option>
										<option>수공예</option>
										<option>쿠킹 클래스</option>
										<option>플라워 레슨</option>
										<option>드로잉</option>
										<option>음악</option>
										<option>요가|필라테스</option>
										<option>레저|스포츠</option>
										<option>체험</option>
										<option>자기계발</option>
										<option>기타</option>
									</select>
									<div class="select-dropdown"></div>
								</div>
							</div>
<br>
							<div class="input-group">
								<label class="label">클래스 개설지역</label>
								<div class="rs-select2 js-select-simple select--no-search">
									<select name="cateGoryA">
										<option disabled="disabled" selected="selected">지역 선택</option>
										<option>서울/경기도/인천</option>
										<option>대전/세종/충청도</option>
										<option>강원도</option>
										<option>전라북도</option>
										<option>전라남도/광주</option>
										<option>경상북도/대구/부산</option>
										<option>경상남도/울산</option>
										<option>제주도</option>
									</select>
									<div class="select-dropdown"></div>
								</div>
							</div>
<br><br>
							<div>
								<div class="input-group">
									<label class="label">강사 소개</label>
									<textarea id="exIntroduce" name="exIntroduce" rows="5"
										cols="33"></textarea>
								</div>
							</div>
							<br>
							<div>
								<div class="input-group">
									<label class="label">클래스 소개</label>
									<textarea id="classIntroduce" name="classIntroduce" rows="5"
										cols="33"></textarea>
								</div>
							</div>
							<br>
							<div>
								<div class="input-group">
									<label class="label">커리큘럼</label>
									<textarea id="curriculum" name="curriculum" rows="5" cols="33"></textarea>
								</div>
							</div>
							<br>
						</div>
						<div class="p-t-15">
							<button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Jquery JS-->
	<script src="/MochaKmong/assets/regform/vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="/MochaKmong/assets/regform/vendor/select2/select2.min.js"></script>
	<script
		src="/MochaKmong/assets/regform/vendor/datepicker/moment.min.js"></script>
	<script
		src="/MochaKmong/assets/regform/vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="/MochaKmong/assets/regform/global.js"></script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->