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
  
  <script type="text/javascript">
	function formCheck() {

		if (frm.userPw.value != frm.userPw1.value) {
			alert("패스워드가 일치하지 않습니다.")
			frm.userPw1.value = null;
			frm.userPw1.focus();
			return false;
		}
		
		if (frm.userName.value == "") {
			alert("이름은 반드시 입력해야 합니다.")
			frm.userName.focus();
			return false;
		}

		if (frm.userPw.value == "") {
			alert("패스워드는 반드시 입력해야 합니다..")
			frm.userPw.focus();
			return false;
		}
		
		return true;
	}
	
	function idCheck(str) {
		var url = "idCheck.do?user_id=" + str;
		if(str == "") {
			alter("아이디를 입력하세요");
			frm.userId.focus();
		}else {
		window.open(url, "아이디 중복체크","width=600, height=200, top=100, left=100");
		}
	}
</script>
</head>
<body>
<div align="center">
        <div>
		<h3>회원가입</h3>
		</div>
		<form class= "form-inline" id="frm" name="frm" onsubmit="return formCheck()" action="userJoin.do" method="post">
				<div>
				   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				   <input type="text" class="form-control" id="userId" name="userId" placeholder="아이디" required="required"> &nbsp;&nbsp;
					  <button type="button" class="btn btn-default" onclick="idCheck(userId.value)">중복체크</button>
						</div><br/>
						
						<div>
							<input type="password"  class="form-control" id="userPw" name="userPw" placeholder="패스워드" required="required">
						</div><br/>
						
						<div>
							<input type="password"  class="form-control" id="userPw1" name="userPw1" placeholder="패스워드 확인"  required="required">
						</div><br/>	
						
						<div>
							<input type="text" class="form-control" id="userName" name="userName" placeholder="이름" required="required">
						</div><br/>
						
						<div>
						<input type="text" class="form-control" id="userTel" name="userTel" placeholder="전화번호" required="required">
						</div><br/>
						
						<div>
					   <input type="text" class="form-control" id="userEmail" name="userEmail" placeholder="이메일" required="required">
						</div><br/>
						
						<div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="text" class="form-control" id="userZipcode" name="userZipcode" placeholder="우편번호" required="required"> &nbsp;&nbsp;
						<button type="button" class="btn btn-default">우편번호</button><br/><br/>
						<input type="text" class="form-control" id="userAddress" name="userAddress" placeholder="주소" required="required"> <br/><br/>
						</div><br/>
						
					<div>
					<input type="submit" class="btn btn-primary" value="submit">&nbsp;&nbsp;&nbsp;
				   <input type="reset"  class="btn btn-primary" value="reset">
				   </div>
		   </form>
      </div>
</body>
</html>