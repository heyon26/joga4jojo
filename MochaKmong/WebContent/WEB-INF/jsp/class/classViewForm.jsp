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
<!-- <link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico"> -->

	<!-- CSS here -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.14.0-beta/dist/css/bootstrap-select.min.css">
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
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/classView.css">
	<script src="assets/js/jquery-3.5.1.min.js"></script>

<style>
	img{display : block ; margin : auto;}
	.cate{
		border-radius:15px;
		min-width:70px;
		max-width:250px;
		height:45px;
		padding-top:10px;
		padding-bottom:10px;
		padding-left:20px; 
		font-size:20px; 
		font-weight:bold;
	}
	#add1{
		text-align:right;
		display:inline-block; 
		font-weight:bold; 
		font-size:x-large; 
		border:0px;
		width:150px;
	}
	#add2{
		border:0.5px solid ;
		width:70px;
		height:40px;
		border-radius: 10px;
		padding:15px;
	}
	
	#total{
		text-align:right;
		font-weight:bold; 
		font-size:x-large; 
		border:0px;
		width:150px;
		color:black;
	}	
	.form-control01 {
	    display: block;
	    width: 400x;
	    height: 50px;
	    padding: .375rem .75rem;
	    margin:10px;
	    font-size: 1rem;
	    line-height: 1.5;
	    color: #495057;
	    background-color: #fff;
	    background-clip: padding-box;
	    border: 1px solid #ced4da;
	    border-radius: .25rem;
	    transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}

</style>

<!-- 실시간 결제 예상 금액 계산 -->
<script>
	$(document).ready(function(){
		$('.numPerson').on('keyup',function(e){ 
			   let price = (${vo.classPrice } * parseInt($('#add2').val()||0));
			    alert(price);
		   		 $('#total').empty();
			    $('#total').val(price);
				console.log($('#total').val());
			    
			  });
		
	})


	
	function applyClassDate() {
		var result = true;
		if('${user_id }'==""){
			alert("로그인 후 신청 가능 합니다.");
			location.href="loginForm.do";
			return false;
		}
		if('${user_id }'!=null){
		var classTime=$("#classTime option:selected").val();
			alert(classTime);
			$("#startTime").empty();
			$("#startTime").val(classTime);
		}
		return result;
	}
	
</script>
</head>
	<jsp:include page="/WEB-INF/jsp/main/topmenu.jsp" />
<body>

<!-- 클래스 사진 -->
	<div class="container">
		    <c:if test="${vo.cateGoryA == '핸드메이드·수공예'}">
		    	<img src="assets/img/classImage/handmade.jpg" style="width:800px; height:500px; border-radius:15px">
		    </c:if>
		   	<c:if test="${vo.cateGoryA == '쿠킹클래스'}">
		    	<img src="assets/img/classImage/cooking.jpg" style="width:800px; height:500px;">
		    </c:if>
		   	<c:if test="${vo.cateGoryA == '플라워레슨'}">
		    	<img src="assets/img/classImage/flower.jpg" style="width:800px; height:500px;">
		    </c:if>
		   	<c:if test="${vo.cateGoryA == '드로잉'}">
		    	<img src="assets/img/classImage/drawing.jpg" style="width:800px; height:500px;">
		    </c:if>
		   	<c:if test="${vo.cateGoryA == '음악'}">
		    	<img src="assets/img/classImage/music.jpg" style="width:800px; height:500px;">
		    </c:if>
		   	<c:if test="${vo.cateGoryA == '요가·필라테스'}">
		    	<img src="assets/img/classImage/yoga.jpg" style="width:800px; height:500px;">
		    </c:if>
		   	<c:if test="${vo.cateGoryA == '레저·스포츠'}">
		    	<img src="assets/img/classImage/sport.png" style="width:800px; height:500px;">
		    </c:if>
		    <c:if test="${vo.cateGoryA == '체험'}">
		    	<img src="assets/img/classImage/dying.png" style="width:800px; height:500px; border-radius:15px">
		    </c:if>
		    <c:if test="${vo.cateGoryA == '자기계발'}">
		    	<img src="assets/img/classImage/programming.jpg" style="width:800px; height:500px;">
		    </c:if>
	</div>
	<div class="container" style="margin-bottom:40px;">
		<div class="title">
			<div class="cate">
				<p style="display:inline-block; font-weight:bold; color:#6c757d ;">카테고리</p>&nbsp;&nbsp;
				<p style="display:inline-block; font-weight:bold; color:black ;"> ${vo.cateGoryA }</p>
			</div>
			<h4 style="display:inline-block; font-weight:bold; color:#6c757d;">클래스명</h4>&nbsp;&nbsp;&nbsp;&nbsp;	
			<h3 style="display:inline-block; font-weight:bold;color:black;">${vo.className }</h3>
		</div>	
		<form id="applyFrm" name="applyFrm" onsubmit="return applyClassDate()" action="applyViewForm.do" method="post">
					<!-- 값 넘기기 위해서 hidden -->
						<input type="hidden" name="classCode" id="classCode" value="${vo.classCode }">
						<input type="hidden" name="startTime" id="startTime"> 
						<input type="hidden" name="className" id="className" value="${vo.className }">
								
			<div class="cul" align="right">
					<p style="display:inline-block; font-weight:bold; color:#6c757d;">1인 금액 </p>&nbsp;&nbsp;&nbsp;
					<input  type="text" name="add1" id="add1" value="${vo.classPrice }" readonly> 원
				<div align="right">
					<p style="display:inline-block; font-weight:bold; color:#6c757d;" >신청 인원</p> &nbsp;&nbsp;&nbsp;
					<input  type="text" class="input--style-4 numPerson" id="add2" name="add2" placeholder="인원" value="" required="required">&nbsp;명
					<p style="font-weight:bold; color:#6c757d;"> 결제 예정 금액 &nbsp; <input type="text" id="total" name="total" readonly>&nbsp;원</p>	
					
						<select class="form-control01" id="classTime" >
								<option>날짜 선택</option>
								<c:if test="${not empty list }">
									<c:forEach var="clist" items="${list }">
<%-- 									<c:if test="${clist.startTime == null || clist.possibleNumber==0 }">
									 		<option>선택가능한 일자가 없습니다.</option>
									 	</c:if> --%>
								 		<option value="${clist.startTime }"> 신청일자 : ${clist.startTime } / 현재 신청가능인원 : ${clist.possibleNumber }</option>
								 </c:forEach>
							 	</c:if>
	  					</select>
  							
					<button type="submit" class="btn-secondary btn-sm"> 클래스 신청하기</button>
				</div>
			</div>
		</form>	
	</div>

<!-- 클래스 사진 보기 끝 -->

<!-- 메뉴 탭바 시작  -->
    <div class="container" style="margin-bottom:40px">
      <div class="row">
			<div class="col-xs-12 ">
				<nav>
					<div class="nav nav-items nav-justified" id="nav-tab" role="tablist" style="width:1200px;background-color: #f9df84;">
						<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#content" role="tab" aria-controls="nav-home" aria-selected="true">클래스 소개</a>
						<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#location" role="tab" aria-controls="nav-profile" aria-selected="false">클래스 장소</a>
						<a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#review" role="tab" aria-controls="nav-contact" aria-selected="false">리뷰</a>
						<a class="nav-item nav-link" id="nav-about-tab" data-toggle="tab" href="#ask" role="tab" aria-controls="nav-about" aria-selected="false">문의</a>
					</div>
				</nav>
				<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent" style="background-color:white;">
						<div class="tab-pane fade show active" id="content" >
							${vo.classContent }					
						</div>
						<div class="tab-pane fade" id="location" >
							<div style="padding-left:20px; margin-bottom:20px;" >
		             			<p style="font-size:15px; font-weight:20;"> 클래스 장소 : ${vo.classAddress } </p>
	             			</div>
		              		<div id="map" style="width:600px;height:600px; margin-bottom:60px;">
		              	
		              		</div>
						</div>
						<div class="tab-pane fade" id="review" >
								<div class="review" style="margin-top:40px; margin-bottom:40px; padding:20px;">
									<table class="table" style="margin-top:40px; margin-bottom:40px; padding:20px;">
										<tr>
											<th>번호</th>
											<th>작성자</th>
											<th>리뷰</th>
											<th>작성일자</th>
										</tr>
										<tr>
										<td colspan=4 style="text-align:center"> 현재 등록된 리뷰가 없습니다.</td>	
									</table>
									<div align="right">
										<button class="btn-secondary btn-sm" type="button" onclick="createReview()">리뷰 작성하기</button>
									</div>
								</div>
							</div>
						<div class="tab-pane fade" id="ask" >
						  	<div class="paymentAsk">
		              	  		<ul>
		              	  			<li style="font-size:20px;font-weight:bold;font-style:italic;">>> 결제안내</li>
		              	  			<p>&nbsp;</p>
									<li>개설된 클래스 스케쥴이 없는 경우 수강 신청 관련해서는 강사분의 컨택 가능한 정보(전화/SNS)를 통해 문의 부탁드립니다.</li>
		  							<li>개설된 클래스가 있는 경우 카드결제 서비스를 제공하고 있습니다.</li>
		  							<li>결제 완료시 수강 신청이 완료되고 이메일로 결제와 클래스 확인 내용을 드립니다.</li>
		  							<li>문의사항은 문의게시판 혹은 mk-admin@mk.com으로 문의주시면 빠르게 답변 드리겠습니다.</li>
								</ul>
              	 			 </div>
			              	  <div class="returnAsk">
			              	  		<ul>
			              	  			<li style="font-size:20px;font-weight:bold;font-style:italic;">>> 환불안내</li>
			              	  			<p>&nbsp;</p>
			 							<li>수강 취소를 원하시는 경우, 수강 이틀 전까지는 전액 환불, 재료 준비로 인하여 전날과 수강 당일은 환불이 불가함을 알려드립니다. </li>
			 							<li></li>
			  							<li> 문의게시판 혹은 mk-admin@mk.com으로 환불 문의를 주세요.</li>
									</ul>
			              	  </div>
					              <div class="askClass" >
						             	 <ul>
					              	  		<li style="font-size:20px;font-weight:bold;font-style:italic;">>> 추가문의</li>
					              	  		<p>&nbsp;</p>
					 						<li>클래스 내용에 대한 상세 문의사항은 아래 강사 연락처 (전화번호 혹은 email) 또는 상단 머뉴 공지사항 내 문의게시판으로 문의</li>
					 						<li>바랍니다.</li>
					  						<li> 강사 연락처 : ${vo.classTel } </li>
										 </ul>
					              </div>
						</div>
					</div>
				</div>
			</div>
        </div>
<!-- 메뉴 탭바 끝 -->   
 
<!-- 주소 받아서 지도생성(카카오API) -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f614ddf014ea92f2a62125c93f40009a&libraries=services"></script>         		
     <script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = {
			        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };  
			
			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption); 
			
			// 지도를 표시하는 div 크기를 변경하는 함수입니다
			function resizeMap() {
			    var mapContainer = document.getElementById('map');
			    mapContainer.style.width = '600px';
			    mapContainer.style.height = '600px'; 
			}

			function relayout() {    
			    
			    // 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다
			    // 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다 
			    // window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다
			    map.relayout();
			}
			
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();
			
			var classAd = ("${vo.classAddress}").split('.');
			
			
			// 주소로 좌표를 검색합니다
			geocoder.addressSearch(classAd[0], function(result, status) {
			
			    // 정상적으로 검색이 완료됐으면 
			     if (status === kakao.maps.services.Status.OK) {
			
			        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			
			        // 결과값으로 받은 위치를 마커로 표시합니다
			        var marker = new kakao.maps.Marker({
			            map: map,
			            position: coords
			        });
/* 			        // 인포윈도우로 장소에 대한 설명을 표시합니다
			        var infowindow = new kakao.maps.InfoWindow({
			            content: '<div style="width:150px;text-align:center;padding:6px 0;"></div>'
			        });
			        infowindow.open(map, marker); */


			        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			        map.setCenter(coords);
			    } 
			});    
</script>

    
    <!-- script -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.14.0-beta/dist/js/bootstrap-select.min.js"></script>

  </body>
</html>