<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
<div align="center">
<h3>${vo.userName } 님 로그인에 성공했습니다.</h3>
<h3>${vo.userAuth } 님 권한을 갖습니다.</h3>
<div>
<button type="button" onclick="location.href='main.do'">메인화면</button>
</div>
</div>
</body>
</html>