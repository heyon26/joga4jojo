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
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="assets/css/classView.css">

<script type="text/javaScript">
	function eventKeyup(str){
		 var num = $("#applyNum").val(str);  
		 var totalPrice= num * ${vo.classPrice  };
		 $("#totalPrice").val()=totalPrice;
	}
</script>

</head>
	<jsp:include page="/WEB-INF/jsp/main/topmenu.jsp" />
<body>
<%-- ${vo.classCode }
${vo.className } --%>
<!-- 클래스 사진 나열(3개)  -->
	<div class="slideshow-container">
	
	  <div class="mySlides fade">
	    <div class="numbertext">1 / 3</div>
	    <c:if test="${vo.cateGoryA == '핸드메이드·수공예'}">
	    	<img src="assets/img/classImage/" style="width:100%">
	    </c:if>
	   	<c:if test="${vo.cateGoryA == '쿠킹클래스'}">
	    	<img src="assets/img/classImage/" style="width:100%">
	    </c:if>
	   	<c:if test="${vo.cateGoryA == '플라워레슨'}">
	    	<img src="assets/img/classImage/" style="width:100%">
	    </c:if>
	   	<c:if test="${vo.cateGoryA == '드로잉'}">
	    	<img src="assets/img/classImage/" style="width:100%">
	    </c:if>
	   	<c:if test="${vo.cateGoryA == '음악'}">
	    	<img src="assets/img/classImage/" style="width:100%">
	    </c:if>
	   	<c:if test="${vo.cateGoryA == '요가·필라테스'}">
	    	<img src="assets/img/classImage/" style="width:100%">
	    </c:if>
	   	<c:if test="${vo.cateGoryA == '레저·스포츠'}">
	    	<img src="assets/img/classImage/" style="width:100%">
	    </c:if>
	    <c:if test="${vo.cateGoryA == '체험'}">
	    	<img src="assets/img/classImage/" style="width:100%">
	    </c:if>
	    <c:if test="${vo.cateGoryA == '자기계발'}">
	    	<img src="assets/img/classImage/" style="width:100%">
	    </c:if>
	    <div class="text">Caption Text</div>
	  </div>
	</div>
	<div class="container">
		<div class="title">
			<span>^${vo.cateGoryA }</span>
			<h3>^${vo.className }</h3>
		</div>	
	</div>
	<div class="containter" >
		<div class="apply" >
			<span>1인 ^${vo.classPrice }</span>
			<div class="input-group">
				<p>신청인원<input type="number" class="input--style-4" id="applyNum" name="applyNum" placeholder="인원수" onkeyup="eventKeyup(this.value)" required="required"></p>
				<p>금액<input type="text" id="Totalprice" name="Totalprice" readonly>
			</div>
		</div>
	</div>

<!-- 클래스 사진 보기 끝 -->
<!-- 메뉴 탭바 시작  -->
    <div class="container" style="margin-bottom:40px">
      <div class="row">
        <div class="col">
          <div>
          </div>
            <ul class="nav nav-justified nav-tabs">
              <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#introduce">클래스 소개</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#location">클래스 위치</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#ask">문의</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#review">수강후기</a>
              </li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane fade show active" id="apply" style="border-bottom: solid #e8e8e3;">
              	<div>
              		
              	</div>
              </div>
              <div class="tab-pane fade" id="introduce" style="border-bottom: solid #e8e8e3;">
              	^^${vo.classContent }
              </div>
              <div class="tab-pane fade" id="location" style="border-bottom: solid #e8e8e3;">
              	^^${vo.classAddress }
              	<!--//지도 API로 주소 입력해서 지도 출력하기-->
              </div>
              <div class="tab-pane fade" id="문의" style="border-bottom: solid #e8e8e3;">
              s <!-- //문의할 수 있는 연락처나 게시판 안내 -->
              </div>
              <div class="tab-pane fade" id="수강후기" style="border-bottom: solid #e8e8e3;">
              <!-- //수강후기(table로 만들기 가능하면 접었다 폈다..?); -->
              
              </div>
            </div>
        </div>
      </div>
    </div>
 <!-- 메뉴 탭바 끝 -->   
 
<!-- ./Tabs -->
    
    
    <!-- script -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  </body>
</html>