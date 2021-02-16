<%@page import="co.mok.pro.vo.ImageVo"%>
<%@page import="co.mok.pro.dao.ImageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 이미지 업로드 성공 페이지</title>
<link rel="stylesheet" href="assets/css/style.css">
<style>
.user-box {
	width: 110px;
	margin: auto;
	margin-bottom: 20px;
}
.user-box img {
	width: 100%;
	border-radius: 50%;
	border: 1px solid #ffc107;
	padding: 3px;
	background: #fff;
}
.profileImage {
	width: 150px;
	border-radius: 70%;
	margin: -20px;
}
h5{
	color: #ffc107;
	font-family: font-family: 'Nanum Gothic', sans-serif;
	font-weight: 900;
	font-size: 25px;
	margin:70px 0 70px 0;
}
.closeBtn{
	margin-top: 30px;
	background-color: #ffc107 !important;
}
</style>

<script type="text/javascript">
	function myclose(){
		opener.document.location.href="myPage.do"; // 자식창 닫고 부모창 refresh
		window.close();
	}
	
</script>

</head>
<body>
<!-- 해당 아이디 프로필 이미지 삽입 구현  -->
<%
ImageDAO idao = new ImageDAO();
ImageVo ivo = new ImageVo();

ivo.setUserId(session.getAttribute("user_id").toString());
ivo = idao.selectImage(ivo);
request.setAttribute("ivo", ivo);
%>
<div align="center">
<h5>- 프로필 이미지가 수정 되었습니다 -</h5>
	<div class="user-box" align="center">
		<div class="profileImage" style="background:#FFFFFF;">
			<img src="${pageContext.request.contextPath}/image/${ivo.image}" alt="프로필 이미지 삽입 시 출력">
			<input type="button" value="닫기" class="genric-btn info circle arrow closeBtn" onclick="myclose()">
		</div>
	</div>
</div>
</body>
</html>