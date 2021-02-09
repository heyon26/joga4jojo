<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<style>
#carouselExampleIndicators {
	z-index: 1900 !important;
}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- Vendor CSS-->
<link href="/MochaKmong/assets/regform/vendor/select2/select2.min.css"
	rel="stylesheet" media="all">
<link
	href="/MochaKmong/assets/regform/vendor/datepicker/daterangepicker.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="/MochaKmong/assets/regform/main.css" rel="stylesheet"
	media="all">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<!-- Jquery JS-->
<script>
	$('.carousel').carousel({
		interval : -1
	})
</script>
<!-- Jquery JS-->
<!-- Vendor JS-->
<script src="/MochaKmong/assets/regform/vendor/select2/select2.min.js"></script>
<script src="/MochaKmong/assets/regform/vendor/datepicker/moment.min.js"></script>
<script
	src="/MochaKmong/assets/regform/vendor/datepicker/daterangepicker.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script> -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
	
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
	<script src="/MochaKmong/assets/js/summernote/lang/summernote-ko-KR.js"></script>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>Au Register Forms by Colorlib</title>



</head>

<body>
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<form method="POST">
			<div class="carousel-inner">
				<!-- 첫번째 슬라이드 -->
				<div class="d-block w-100">
					<div class="carousel-item active">
						<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
							<div class="wrapper wrapper--w680">
								<div class="card card-4">
									<div class="card-body">

										<h4 class="title">연락처</h4>
										<div class="row2 row2-space"
											style="margin-bottom: 50px !important;">

											<div class="col-22">
												<div class="input-group">
													<label class="label">이메일</label> <input
														class="input--style-4" type="email" name="userEmail">
												</div>
											</div>
											<div class="col-22">
												<div class="input-group">
													<label class="label">전화번호</label> <input
														class="input--style-4" type="text" name="userTel">
												</div>
											</div>
											<div class="input-group">

												<div class="row2 row2-space">
													<div class="col-22">
														<div class="input-group">
															<label class="label">우편번호</label><input type="text"
																class="input--style-4" id="postcode" placeholder="우편번호"
																readonly="readonly">
														</div>
													</div>
													<div class="col-22">

														<div class="input-group">
															<label class="label">지역</label> <input
																class="input--style-4" type="text" id="area"
																placeholder="지역" readonly="readonly">
														</div>
													</div>
												</div>
												<br> <br>
												<div class="input-group">
													<label class="label">주소</label><input type="text"
														class="input--style-4" id="address" placeholder="주소"
														readonly="readonly">
												</div>
												<div class="input-group">
													<label class="label">상세주소</label><input type="text"
														class="input--style-4" id="detailAddress"
														placeholder="상세주소">
												</div>
												<div class="input-group">
													<input type="button" class="btn btn--radius-2 btn--blue"
														onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
												</div>
												<div id="map"
													style="width: 550px; height: 300px; margin-top: 10px; display: none"></div>
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
							<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
								<div class="wrapper wrapper--w680">
									<div class="card card-4">
										<div class="card-body">
											<div>
												<h4 class="title">클래스 정보</h4>
											</div>
											<br>

											<div class="input-group">
												<label class="label">클래스 소개</label>
												<textarea id="classIntroduce" name="classIntroduce" rows="3"
													cols="33" style="height: 200px !important;"></textarea>
											</div>

											<br>

											<div class="input-group">
												<label class="label">커리큘럼</label>
												<textarea id="curriculum" name="curriculum" rows="3"
													cols="33" style="height: 200px !important;"></textarea>
											</div>

										</div>
									</div>



								</div>
							</div>
						</div>
					</div>


					<div class="carousel-item">
						<div class="d-block w-100">
							<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
								<div class="wrapper wrapper--w680">
									<div class="card card-4">
										<div class="card-body">
											<div>클래스 등록</div>

											<textarea id="summernote" name="editordata"></textarea>
											<div class="p-t-15">
												<button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
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
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>






	<!-- ---------------------------------------------------- -->


	<!-- Main JS-->
	<script src="/MochaKmong/assets/regform/global.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=166687fbfc9cd51a893d2249271fe4e1&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
			center : new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
			level : 5
		// 지도의 확대 레벨
		};

		//지도를 미리 생성
		var map = new daum.maps.Map(mapContainer, mapOption);
		//주소-좌표 변환 객체를 생성
		var geocoder = new daum.maps.services.Geocoder();
		//마커를 미리 생성
		var marker = new daum.maps.Marker({
			position : new daum.maps.LatLng(37.537187, 127.005476),
			map : map
		});

		function sample5_execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					var addr = data.address; // 최종 주소 변수

					// 주소 정보를 해당 필드에 넣는다.
					document.getElementById('area').value = data.sido;
					document.getElementById('postcode').value = data.zonecode;
					document.getElementById("address").value = addr;
					// 주소로 상세 정보를 검색
					geocoder.addressSearch(data.address, function(results,
							status) {
						// 정상적으로 검색이 완료됐으면
						if (status === daum.maps.services.Status.OK) {

							var result = results[0]; //첫번째 결과의 값을 활용

							// 해당 주소에 대한 좌표를 받아서
							var coords = new daum.maps.LatLng(result.y,
									result.x);
							// 지도를 보여준다.
							mapContainer.style.display = "block";
							map.relayout();
							// 지도 중심을 변경한다.
							map.setCenter(coords);
							// 마커를 결과값으로 받은 위치로 옮긴다.
							marker.setPosition(coords)
						}
					});
				}
			}).open();
		}
	</script>
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
				url : "<%= application.getContextPath() %>/imageUpload",
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