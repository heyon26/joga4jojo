<%@page import="co.mok.pro.vo.ImageVo"%>
<%@page import="co.mok.pro.dao.ImageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 삽입 성공 페이지</title>
<link rel="stylesheet" href="assets/css/mypage.css">
<style>
.profileImage { 
    width: 150px;
    border-radius: 70%;
    overflow: hidden;
   	margin: -20px;
}
</style>

<script type="text/javascript">
	function myclose(){
		
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
			<h3>프로필 이미지가 삽입 되었습니다.</h3>
	<div class="user-box" align="center">
		<div class="profileImage" style="background:#FFFFFF;">
			<img src="${pageContext.request.contextPath}/image/${ivo.image}" alt="프로필 이미지 삽입 시 출력">
			<input type="button" value="닫기" onclick="myclose()">
		</div>
	</div>
</div>
</body>
</html>