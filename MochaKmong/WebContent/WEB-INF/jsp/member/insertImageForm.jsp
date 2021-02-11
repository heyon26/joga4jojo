<%@page import="co.mok.pro.vo.UserVo"%>
<%@page import="co.mok.pro.dao.UserDao"%>
<<<<<<< HEAD
<%@page import="co.mok.pro.vo.ImageVo"%>
=======
>>>>>>> refs/remotes/origin/changon
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 이미지 삽입</title>

<<<<<<< HEAD
<style>
body {
	background: whitesmoke;
	font-family: 'Open Sans', sans-serif;
}

.container {
	max-width: 960px;
	margin: 30px auto;
	padding: 20px;
}

h1 {
	font-size: 20px;
	text-align: center;
	margin: 20px 0 20px; small { display : block;
	font-size: 15px;
	padding-top: 8px;
	color: gray;
}

}
.avatar-upload {
	position: relative;
	max-width: 205px;
	margin: 50px auto; . avatar-edit { position : absolute;
	right: 12px;
	z-index: 1;
	top: 10px; input { display : none; + label { display : inline-block;
	width: 34px;
	height: 34px;
	margin-bottom: 0;
	border-radius: 100%;
	background: #FFFFFF;
	border: 1px solid transparent;
	box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.12);
	cursor: pointer;
	font-weight: normal;
	transition: all .2s ease-in-out; &: hover { background : #f1f1f1;
	border-color: #d6d6d6;
}

&
:after {
	content: "\f040";
	font-family: 'FontAwesome';
	color: #757575;
	position: absolute;
	top: 10px;
	left: 0;
	right: 0;
	text-align: center;
	margin: auto;
}

}
}
}
.avatar-preview {
	width: 192px;
	height: 192px;
	position: relative;
	border-radius: 100%;
	border: 6px solid #F8F8F8;
	box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.1); > div { width : 100%;
	height: 100%;
	border-radius: 100%;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}
}
}
</style>
<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	

function insertImage(e){
	var msg = confirm("해당 이미지로 변경하시겠습니까?");
	if(msg){
		e.preventDefault();
		var imgName = $('#file').val();
		imgName = imgName.substring(imgName.lastIndexOf('\\') + 1);
		$('#image').val(imgName);
		document.frm.submit();
=======
<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
<script type="text/javascript">

	function insertImage(e){
		var msg = confirm("해당 이미지로 변경하시겠습니까?");
		if(msg){
			e.preventDefault();
			var imgName = $('#file').val();
			imgName = imgName.substring(imgName.lastIndexOf('\\') + 1);
			$('#image').val(imgName);
			document.frm.submit();
		}
>>>>>>> refs/remotes/origin/changon
	}
}
</script>

</head>
<body>

<!-- 로그인 세션값 호출 -->
<%
	String id = (String) session.getAttribute("user_id");

UserDao dao = new UserDao();
UserVo vo = new UserVo();

vo = dao.getUserInfo(id);
%>
<!-- 로그인 세션값 호출 -->

<<<<<<< HEAD
<form id="frm" name="frm" method="post"enctype="multipart/form-data" action="InsertImage" onsubmit="insertImage(event)">
<div class="container">
    <h1>프로필 이미지 삽입 
        <small></small>
    </h1>
    <div class="avatar-upload">
        <div class="avatar-edit" style="border:1px solid black; padding: 10px;">
            <input type='file' id="file" name="file" accept=".png, .jpg, .jpeg" />
            <input type="hidden" id="image" name="image">
            <label for="imageUpload"></label>
        </div>
        <p/>
        <div align="center">
        	<input type="submit" value="수정">&nbsp;
			<input type="reset" value="삭제">
        </div>
    </div>
=======
<form name="frm" method="post" enctype="multipart/form-data" action="InsertImage" onsubmit="insertImage(event)">
<input type="hidden" name="userId" value="<%=vo.getUserId() %>">

<div class="file-wrapper flie-wrapper-area">
		<div class="float-left">
			<span class="label-plus"><i class="fas fa-plus"></i></span> 
			<div id="preview"></div>
			<input type="file" name="file" id="file" class="upload-box upload-plus" accept="image/*" size="40">
			<input type="hidden" id="image" name="image">
			<p/>
			
			<div class="file-edit-icon">
			<input type="submit" class="preview-edit" value="수정">&nbsp;
			<input type="reset" class="preview-de" value="삭제">
			</div>
		</div>
>>>>>>> refs/remotes/origin/changon
</div>
</form>

</body>
</html>