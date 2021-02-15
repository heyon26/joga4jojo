<%@page import="co.mok.pro.vo.ImageVo"%>
<%@page import="co.mok.pro.dao.ImageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 삽입 성공 페이지</title>
<script type="text/javascript">
	function myclose(){
		
		window.close();
	}
</script>
</head>
<body>
	<div align="center">
		<h3>프로필 이미지가 삽입 되었습니다.</h3>
		<input type="button" value="닫기" onclick="myclose()">
	</div>
</body>
</html>