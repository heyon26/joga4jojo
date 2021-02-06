<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 수정 양식</title>

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

	<div class="container">
		<form name="form" id="frm" name="frm" onsubmit="checkValue()" action="profileUpdate.do" method="post">
			<h1>프로필 수정</h1>
			<hr>

			<div class="row">
				<!-- left column -->
				<div class="col-md-3">
					<div class="text-center">

						<div id="preview" name="preview"></div>
						<h6>프로필 이미지를 업로드해 주세요</h6>

						<input type="file" accept="image/*" id="uploadFile"
					name="uploadFile" onchange="uploadImage(event)">
					</div>
				</div>

				<!-- edit form column -->
				<div class="col-md-7 personal-info">

					<h3>유저 정보 수정</h3>
					<p/>
					<h6>변경하실 유저 정보를 입력해주세요</h6>
					<!-- Change this to a <form> to reproduce your original issue -->
					<div class="form-horizontal" role="form">
						<div class="form-group">
							<div class="col-lg-8">
								<input class="form-control" type="text" id="userName" name="userName" value="유저 이름"
						onfocus="this.value=''"
						onblur="if(this.value=='')this.value='유저 이름'">
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-8">
								<input class="form-control" ype="text" id="userTel" name="userTel" value="전화번호"
						onfocus="this.value=''"
						onblur="if(this.value=='')this.value='전화번호'">
							</div>
						</div>


						<div class="form-group">
							<label class="col-md-3 control-label"></label>
							<div class="col-md-8">
								<input type="submit" class="btn btn-primary"
									value="수정"> <span></span> <a href="/home2">
									<input type="reset" href="/home2" class="btn btn-default"
									value="취소">
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<hr>
		</form>
	</div>
</body>
</html>