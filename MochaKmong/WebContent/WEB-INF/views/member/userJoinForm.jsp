<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div align="center">
        <div>
		<h3>회원가입</h3>
		</div>
		<form class= "form-inline" id="frm" name="frm" onsubmit="return formCheck()" action="#" method="post">
				<div>
				   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				   <input type="text" class="form-control" id="user_id" name="user_id" placeholder="아이디" required="required"> &nbsp;&nbsp;
					  <button type="button" class="btn btn-default" onclick="idCheck(user_id.value)">중복체크</button>
						</div><br/>
						
						<div>
							<input type="password"  class="form-control" id="user_pw" name="user_pw" placeholder="패스워드" required="required">
						</div><br/>
						
						<div>
							<input type="password"  class="form-control" id="user_pw1" name="user_pw1" placeholder="패스워드 확인"  required="required">
						</div><br/>	
						
						<div>
							<input type="text" class="form-control" id="user_name" name="user_name" placeholder="이름" required="required">
						</div><br/>
						
						<div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="text" class="form-control" id="user_zipcode" name="user_zipcode" placeholder="우편번호" required="required"> &nbsp;&nbsp;
						<button type="button" class="btn btn-default">우편번호</button><br/><br/>
						<input type="text" class="form-control" id="user_address" name="user_address" placeholder="주소" required="required"> <br/><br/>
						</div><br/>
						
						<div>
						<input type="text" class="form-control" id="user_tel" name="user_tel" placeholder="전화번호" required="required">
						</div><br/>
						
						<div>
					   <input type="text" class="form-control" id="user_email" name="user_email" placeholder="이메일" required="required">
						</div><br/><br/>
						
					<div>
					<input type="submit" class="btn btn-primary" value="submit">&nbsp;&nbsp;&nbsp;
				   <input type="reset"  class="btn btn-primary" value="reset">
				   </div>
		   </form>
      </div>
</body>
</html>