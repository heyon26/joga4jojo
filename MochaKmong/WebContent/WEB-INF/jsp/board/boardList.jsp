<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Travel HTML-5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

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
   <style media="screen">
    body{
      background-color: #f5f5f5;
    }
    .in-line{
      width:300px;
      height:40px;
    }
    input{
      margin:0;
    }
    input[type="text"]{
      width:73%;
      height:100%;
      border:none;
      font-size:1em;
      padding-left: 5px;
      font-style: oblique;
      display:inline;
      outline:none;
      box-sizing: border-box;
      color:black;

    }
    input[type=button]{
      width: 30%;
      height:100%;
      background-color: lightgray;
      border:none;
      background-color: white;
      font-size:1em;
      color:#042AaC;
      outline:none;
      display:inline;
      margin-left: -10px;
      box-sizing: border-box;
    }
    input[type=button]:hover{
      background-color: lightgray;
    }
  </style>
<jsp:include page="../main/topmenu.jsp"></jsp:include>
<script type="text/javascript">
	function formSubmit(str){
		frm.boardCode.value = str;
		frm.action = "boardListView.do";
		frm.submit();
	}
	
	function searchSubmit(){
		frm2.action = "searchBoard.do";
		frm2.submit();
	}
	
	
	function insertAlert() {
		var ib = confirm("공지사항을 작성하시겠습니까?");
		if(ib) {
		location.href = "newBoardForm.do";
		}
	}
</script>
<div class="container box_1170">
<div class="section-top-border">
				<h3 align="center"class="mb-30">공지사항</h3>
				<form id="frm" name="frm" action="" method="post">
					<input type="hidden" id="boardCode" name="boardCode">
				</form>
				<div class="progress-table-wrap">
					<div class="progress-table">
						<div class="table-head">
							<div class="serial">조회수</div>
							<div class="serial">카테고리</div>
							<div class="serial">카테고리</div>
							<div align="center"class="percentage">제목</div>
							<div class="serial"></div>
							<div class="serial">&nbsp;작성자</div>
							<div class="visit">&nbsp;&nbsp;&nbsp;&nbsp;작성일</div>
						</div><c:forEach var ="vo" items="${list }">
						<div class="table-row" onclick = "formSubmit('${vo.boardCode }')">
							<div class="serial">${vo.bHit }</div>
							<div class="serial">${vo.bCategoryA }</div>
							<div class="serial">${vo.bCategoryB }</div>
							<div class="percentage">${vo.bName }</div>
							<div class="serial"></div>
							<div class="serial">${vo.userId }</div>
							<div class="visit">&nbsp;&nbsp;&nbsp;&nbsp;${vo.bDate }</div>
						</div></c:forEach>
					</div>
				</div>
			</div>
			<c:if test="${user_id eq 'admin' }">	
			<div class="container box_1170">
				<form action=""	id="frm2" name="frm2" method="post">
				<select id="keyword"name="keyword">
					<option value="b_Name">제목(Title)</option>
				</select>
					<input type="text" id="searchWord" name="searchWord">
				
						<a onclick="searchSubmit()"class="genric-btn info circle arrow">검색</a>
						<a onclick="insertAlert()"class="genric-btn info circle arrow">글쓰기</a>
		
						<div align="right" class="button-group-area mt-40">
						</div>
				</form>		
			</div>
			</c:if>
			<c:if test="${user_id ne 'admin' }">	
			<div class="container box_1170">
				<form action=""	id="frm2" name="frm2" method="post">
				<select id="keyword"name="keyword">
					<option value="b_Name">제목(Title)</option>
				</select>
					<input type="text" id="searchWord" name="searchWord">
				
						<a onclick="searchSubmit()"class="genric-btn info circle arrow">검색</a>
		
						<div align="right" class="button-group-area mt-40">
						</div>
				</form>		
			</div>
			</c:if>
		</div>
</body>
</html>