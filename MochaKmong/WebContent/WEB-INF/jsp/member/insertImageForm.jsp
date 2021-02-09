<%@page import="co.mok.pro.vo.UserVo"%>
<%@page import="co.mok.pro.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 이미지 삽입</title>

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
	}
</script>

</head>
<body>

<!-- 로그인 세션값 호출 -->
<%
	String id = (String)session.getAttribute("user_id");
	
	UserDao dao = new UserDao();
	UserVo vo = new UserVo();
		
	vo = dao.getUserInfo(id);
%>
<!-- 로그인 세션값 호출 -->

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
</div>
</form>

<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
<script type="text/javascript">

	function handleFileSelect(event) {
		var input = this;
		console.log(input.files)
		if (input.files && input.files.length) {
			var reader = new FileReader();
			this.enabled = false
			reader.onload = (function(e) {
				console.log(e)
				$("#preview").html(
						[ '<img class="thumb" src="', e.target.result,
								'" title="', escape(e.name), '"/>' ].join(''))
			});
			reader.readAsDataURL(input.files[0]);
		}
	}
	$('#file').change(handleFileSelect);
	$('.file-edit-icon').on('click', '.preview-de', function() {
		$("#preview").empty()
		$("#file").val("");
	});
	$('.preview-edit').click(function() {
		$("#file").click();
	});
</script>
</body>
</html>