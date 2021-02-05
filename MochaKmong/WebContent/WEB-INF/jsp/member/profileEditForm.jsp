<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 수정 양식</title>

<style>
	img{
		width: 300px;
		height: 300px;
		border: 1px solid #f4f4f4;
	}
	
	#profileLayout{
		background-color: #fafafa;
		border-radius: 25px;
	}
	
</style>

<!-- 이미지 미리보기 -->
	<script>
		function uploadImage(event){
			var reader = new FileReader();
			reader.onload = function(event){
				var img = document.createElement("img");
				img.setAttribute("src",event.target.result);
				document.querySelector("div#preview").appendChild(img);
			}
			reader.readAsDataURL(event.target.files[0]);
		}
	</script>
	

</head>
<body>

	<form name="form" id="frm" name="frm" onsubmit="checkValue()" action="profileUpdate.do" method="post" align="center">
		<div id="profileLayout">
			<div>
				<h2>프로필 수정</h2>
				<p>프로필 이미지를 업로드해 주세요</p>
			</div>
			<div id="imgEdit">
				<h4>이미지 수정</h4>
				<div id="preview"></div>
			</div>
			<p />
			<div>
				<input type="file" accept="image/*" id="uploadFile"
					name="uploadFile" onchange="uploadImage(event)">
			</div>
			<div id="userEdit">
				<div>
					<h2>유저 정보 수정</h2>
					<p>변경하실 유저 정보를 입력해주세요</p>
				</div>
				<div>
					<input type="text" id="userName" name="userName" value="유저 이름"
						onfocus="this.value=''"
						onblur="if(this.value=='')this.value='유저 이름'">

					<p />
					<input type="text" id="userTel" name="userTel" value="전화번호"
						onfocus="this.value=''"
						onblur="if(this.value=='')this.value='전화번호'">
				</div>
			</div>

			<div>
				<button type="submit">수정</button>
				<button type="reset">취소</button>
			</div>
		</div>

	</form>
</body>
</html>