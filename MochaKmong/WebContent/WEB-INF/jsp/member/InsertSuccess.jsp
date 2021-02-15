<%@page import="co.mok.pro.vo.ImageVo"%>
<%@page import="co.mok.pro.dao.ImageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 삽입 성공 페이지</title>
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

h3{
	color: #88B04B;
	font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
	font-weight: 900;
	font-size: 40px;
	margin-bottom: 10px;
}
</style>

<script type="text/javascript">
	function myclose() {

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
			<h3>Success</h3>
			<div class="space">
	<div class="user-box" align="center">
		<div class="profileImage" style="background:#FFFFFF;">
			<img src="${pageContext.request.contextPath}/image/${ivo.image}" alt="프로필 이미지 삽입 시 출력">
		</div>
	</div>
	<p/>
	<input type="button" value="닫기" onclick="myclose()">
</div>
</body>
</html>