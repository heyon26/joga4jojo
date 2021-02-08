<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
<!-- <script>
<c:if test="${user_id eq null}">
alert("로그인해주십시오.");
location.href ="main.do";
</c:if>
</script> -->

<style>

#carouselExampleIndicators {
	z-index: 1900 !important;
}

body {
	background-image: url("/MochaKmong/assets/img/bg/bg.png");
	background-size: cover;
	background-repeat: repeat;

}
.note-modal-content{
height: 360px;
}

li {
min-height: 10px !important;
}
</style>


<script src="http://code.jquery.com/jquery-latest.js"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">


<!-- Main CSS-->
<link href="/MochaKmong/assets/regform/main.css" rel="stylesheet"
	media="all">
<!-- Vendor CSS-->
<link href="/MochaKmong/assets/regform/vendor/select2/select2.min.css"
	rel="stylesheet" media="all">
<link
	href="/MochaKmong/assets/regform/vendor/datepicker/daterangepicker.css"
	rel="stylesheet" media="all">
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>클래스 등록</title>



</head>

<body>
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel" data-interval="false">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
		</ol>
		<form id="frm" name="frm" action="createClass.do" method="POST">
			<div class="carousel-inner">
				<!-- 첫번째 슬라이드 -->
				<div class="d-block w-100">
					<div class="carousel-item active">
						<div class="page-wrapper p-t-130 p-b-100 font-poppins">
							<div class="wrapper wrapper--w680">
								<div class="card card-4">
									<div class="card-body">

										<h4 class="title">연락처</h4>
										<div class="row2 row2-space"
											style="margin-bottom: 50px !important;">

											<div class="col-22">
												<div class="input-group">
													<label class="label">이메일</label> <input
														class="input--style-4" type="email" name="email">
												</div>
											</div>
											<div class="col-22">
												<div class="input-group">
													<label class="label">전화번호</label> <input
														class="input--style-4" type="text" name="tel">
												</div>
											</div>
											<div class="input-group">

												<div class="row2 row2-space">
													<div class="col-22">
														<div class="input-group">
															<label class="label">우편번호</label><input type="text"
																class="input--style-4" id="zipcode" name="zipcode"
																placeholder="우편번호" readonly="readonly">
														</div>
													</div>
													<div class="col-22">

														<div class="input-group">
															<label class="label">지역</label> <input
																class="input--style-4" type="text" id="area" name="area"
																placeholder="지역" readonly="readonly">
														</div>
													</div>
												</div>
												<br> <br>
												<div class="input-group">
													<label class="label">주소</label><input type="text"
														class="input--style-4" id="address" name="address"
														placeholder="주소" readonly="readonly">
												</div>
												<div class="input-group">
													<label class="label">상세주소</label><input type="text"
														class="input--style-4" id="detailAddress"
														name="detailAddress" placeholder="상세주소">
												</div>
												<div class="input-group">
													<input type="button" class="btn btn--radius-2 btn--blue"
														onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
												</div>

											</div>

										</div>






									</div>



								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">

						<!-- 두번째 슬라이드 -->
						<div class="d-block w-100">
							<div class="page-wrapper p-t-130 p-b-100 font-poppins">
								<div class="wrapper wrapper--w680">
									<div class="card card-4">
										<div class="card-body">
											<div>
												<h4 class="title">클래스 정보</h4>
											</div>
											<div class="input-group">
												<label class="label">클래스 이름</label><input type="text"
													class="input--style-4" id="className" name="className"
													placeholder="이름">
											</div>
											<br>

												<label class="label">클래스 분류</label>
												<div>
												<div class="rs-select2 js-select-simple" style="width: 100% !important">
													<select name="cateGoryA">
														<option disabled="disabled" selected="selected">분류
															선택</option>
														<option>핸드메이드·수공예</option>
														<option>쿠킹클래스</option>
														<option>플라워레슨</option>
														<option>드로잉</option>
														<option>음악</option>
														<option>요가·필라테스</option>
														<option>레저·스포츠</option>
														<option>체험</option>
														<option>자기계발</option>
													</select>
													<div class="select-dropdown"></div>
												</div>
												</div>
										

											<div class="input-group">
												<label class="label">클래스 소개</label>
												<textarea id="classIntroduce" name="classIntroduce" rows="3"
													cols="33" style="height: 150px !important;"></textarea>
											</div>

											<br>
												<div class="input-group">
												<label class="label">수업비</label><input type="number"
													class="input--style-4" id="classPrice" name="classPrice"
													placeholder="수업비">
											</div>
										</div>
									</div>



								</div>
							</div>
						</div>
					</div>


					<div class="carousel-item">
						<div class="d-block w-100">
							<div class="page-wrapper p-t-130 p-b-100 font-poppins">
								<div class="wrapper wrapper--w680">
									<div class="card card-4">
										<div class="card-body">
											<h4 class="title">클래스 상세</h4>

											<textarea id="summernote" name="summernote"></textarea>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="d-block w-100">
							<div class="page-wrapper p-t-130 p-b-100 font-poppins">
								<div class="wrapper wrapper--w680">
									<div class="card card-4">
										<div class="card-body">
											<h4 class="title">클래스 일정</h4>
<jsp:include page="calendar.jsp"></jsp:include>
											
											<div class="p-t-15" align="right">
												<button class="btn btn--radius-2 btn--blue" type="submit">등록</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</form>

		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"
			style="position: fixed; top: 0; left: 5%;"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"
			style="position: fixed; top: 0; right: 5%"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>






	<!-- ---------------------------------------------------- -->

<!-- Vendor JS-->
<script src="/MochaKmong/assets/regform/vendor/select2/select2.min.js"></script>
<script src="/MochaKmong/assets/regform/vendor/datepicker/moment.min.js"></script>
<script
	src="/MochaKmong/assets/regform/vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="/MochaKmong/assets/regform/global.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=166687fbfc9cd51a893d2249271fe4e1&libraries=services"></script>
	<script>
	

		function sample5_execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					var addr = data.address; // 최종 주소 변수

					// 주소 정보를 해당 필드에 넣는다.
					document.getElementById('area').value = data.sido;
					document.getElementById('zipcode').value = data.zonecode;
					document.getElementById("address").value = addr;
					// 주소로 상세 정보를 검색

				}
			}).open();
		}
	</script>
	

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<script src="/MochaKmong/assets/js/summernote/lang/summernote-ko-KR.js"></script>
<script>
		$('#summernote').summernote(
				{	lang : "ko-KR",
					placeholder : 'Hello stand alone ui',
					tabsize : 2,
					height : 300,
					toolbar : [ [ 'style', [ 'style' ] ],
							[ 'font', [ 'bold', 'underline', 'clear' ] ],
							[ 'color', [ 'color' ] ],
							[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
							[ 'table', [ 'table' ] ],
							[ 'insert', [ 'link', 'picture', 'video' ] ],
							[ 'view', [ 'fullscreen', 'codeview', 'help' ] ] ],
					callbacks : {
						onImageUpload : function(files, editor, welEditable) {
							for (var i = files.length - 1; i >= 0; i--) {
								sendFile(files[i], this);
							}
						}
					}

				});

		function sendFile(file, el) {
			var form_data = new FormData();
			form_data.append('file', file);
			$.ajax({
				data : form_data,
				type : "POST",
				url : "<%=application.getContextPath()%>/imageUpload",
				cache : false,
				contentType : false,
				enctype : 'multipart/form-data',
				processData : false,
				success : function(img_name) {
					$(el).summernote('editor.insertImage', img_name);
				}
			});
		}
	</script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->