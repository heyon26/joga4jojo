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
<jsp:include page="../main/topmenu.jsp"></jsp:include>
<script type="text/javascript">
	function formSubmit(str){
		frm.boardCode.value = str;
		frm.action = "askListView.do";
		frm.submit();
	}
	
	function insertAlert() {
		var ib = confirm("질문을 작성하시겠습니까?");
		if(ib) {
		location.href = "newAskForm.do";
		}
	}
</script>
<div class="container box_1170">
<div class="section-top-border">
				<h3 align="center"class="mb-30">자주 묻는 질문</h3>
				<form id="frm" name="frm" action="" method="post">
					<input type="hidden" id="boardCode" name="boardCode">
				</form>
				<div class="progress-table-wrap">
					<div class="progress-table">
						<div class="table-head">
							<div class="serial">글번호</div>
							<div class="serial">카테고리</div>
							<div align="right"class="percentage">제목</div>
							<div class="visit"></div>
							<div class="serial">&nbsp;작성자</div>
							<div class="visit">&nbsp;&nbsp;&nbsp;&nbsp;작성일</div>
						</div><c:forEach var ="vo" items="${list }">
						<div class="table-row" onclick = "formSubmit('${vo.boardCode }')">
							<div class="serial">${vo.boardCode }</div>
							<div class="serial">${vo.bCategoryA }</div>
							<div class="percentage">${vo.bName }</div>
							<div class="visit"></div>
							<div class="serial">${vo.userId }</div>
							<div class="visit">&nbsp;&nbsp;&nbsp;&nbsp;${vo.bDate }</div>
						</div></c:forEach>
					</div>
				</div>
			</div>
			<div align="right" class="button-group-area mt-40">
			<a onclick="insertAlert()"class="genric-btn info circle arrow">글쓰기</a>
			</div>
		</div>
</body>
</html>