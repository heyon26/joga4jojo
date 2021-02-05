<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>로그인 / 회원가입 폼 템플릿</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div align="center">
  <h3>로그인</h3>
  <form class="form-inline" id="frm" name="frm" action="login.do" method="post">
    <div>
      <input type="text" class="form-control" id="userId" name="userId" placeholder="Enter id" required="required">
    </div><br/>
    <div>
      <input type="password" class="form-control" id="userPw" name="userPw" placeholder="Enter password" required="required">
    </div><br/>
    <input type="submit" class="btn btn-primary" value="로그인">&nbsp;&nbsp;&nbsp;
     </form>
</div>
</body>
</html>