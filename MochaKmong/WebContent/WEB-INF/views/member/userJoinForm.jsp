<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 / 회원가입 폼 템플릿</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/login/css/main.css">
<!--===============================================================================================-->
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
	
	function openZipSearch() {
		new daum.Postcode({
			oncomplete: function(data) {
				$('[name=userZipcode]').val(data.zonecode); // 우편번호 (5자리)
				$('[name=userAddress]').val(data.address);
			}
		}).open();
	}
	</script>
	
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script>
function openZipSearch() {
	new daum.Postcode({
		oncomplete: function(data) {
			$('[name=userZipcode]').val(data.zonecode); // 우편번호 (5자리)
			$('[name=userAddress]').val(data.address);
		}
	}).open();
}
</script>
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
				<form class="login100-form validate-form" id="frm" name="frm" onsubmit="return formCheck()" action="userJoin.do" method="post">	
				     <div align="center" class="logo">
                     <a href="main.do"><img src="assets/img/logo/123.png"></a>
                     </div><br/>
					<span class="login100-form-title p-b-33">
						Join Membership
					</span>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<table>
					<tr>
						<td><input class="input100" type="text" id="userId" name="userId" placeholder="Enter id" required="required" size="30">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span></td>
						<td><button type="button" class="btn btn-primary default btn-sm" onclick="idCheck(userId.value)">idCheck</button></td>
					</tr>
					</table>
					</div>

					<div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
						<input class="input100" type="password" id="userPw" name="userPw" placeholder="Enter password" required="required">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>
					
					<div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
						<input class="input100" type="password" id="userPw1" name="userPw1" placeholder="password check" required="required">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>
					
					<div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
						<input class="input100" type="text" id="userName" name="userName" placeholder="Enter name" required="required">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>
					
					<div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
						<input class="input100" type="text" id="userTel" name="userTel" placeholder="Enter tel" required="required">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>
					
					<div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
						<input class="input100" type="text" id="userEmail" name="userEmail" placeholder="Enter email" required="required">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>
					
					<div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
					<table>
					<tr>
						<td><input class="input100" type="text" id="userZipcode" name="userZipcode" placeholder="Enter zipcode" required="required" size="30">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span></td>
						<td><button type="button" class="btn btn-primary default btn-sm" onclick="openZipSearch()">zipCode</button></td>
					</tr>
					</table>
					</div>
					
					<div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
						<input class="input100" type="text" id="userAddress" name="userAddress" placeholder="Enter address" required="required">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div><br/>
					

					<div class="container-login100-form-btn m-t-20">
						<button class="login100-form-btn" type="submit">
							registration
						</button>
					</div><br/>
					
					</form>
				</div>
			</div>
		</div>
      <!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/assets/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/assets/login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/assets/login/vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/assets/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/assets/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/assets/login/vendor/daterangepicker/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/assets/login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/assets/login/js/main.js"></script>
	
      
</body>
</html>