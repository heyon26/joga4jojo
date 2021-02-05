<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<script>

	// 파일 업로드 확인
	$("#updateImg").on("change", function(e){
		var f = e.target.file[0];
		if(!f.type.match("image.txt")){
			alert("이미지만 첨부할 수 있습니다.");
			$("#updateImg").val('');
			return;
		}
		
		var f.size = 1024*1024*2;
		if(!f.size > 1024*1024*2){
			alert("2mb까지의 사진만 업데이트 할 수 있습니다.");
			$("#updateImg").val('');
			return;
		}
		
		var reader = new FileReader();
		reader.onload = function(e){
			$("#imgPreview").attr("src", e.target.result);
		}
		reader.readAsDataURL(f);
	});
	
	
	
</script>
</head>
<body>

	<form name="form" id="frm" name="frm" onsubmit="checkValue()" action="profileEditUpdate.do" method="post" align="center">
		<div id="profileLayout">
			<div>
				<h2>프로필 수정</h2>
				<p>프로필 이미지를 업로드해 주세요</p>
			</div>
			<div id="imgEdit">
				<h4>이미지 수정</h4>
				<img src="assets/img/mypage/profile.png" alt="프로필 이미지" id="imgPreview" name="imgPreview">
			</div>
				<p />
				<div>
					<input type="file" value="프로필 이미지 업로드" id="updateImg" name="updateImg" onclick="imgUpload()">
				</div>
			<div id="userEdit">
				<div>
					<h2>유저 정보 수정</h2>
					<p>변경하실 유저 정보를 입력해주세요</p>
				</div>
				<div>
					<input type="text" id="userName" name="userName" value="유저 이름" onfocus="this.value=''" onblur="if(this.value=='')this.value='유저 이름'">

					<p />
					<input type="text" id="userTel" name="userTel" value="전화번호" onfocus="this.value=''" onblur="if(this.value=='')this.value='전화번호'">
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