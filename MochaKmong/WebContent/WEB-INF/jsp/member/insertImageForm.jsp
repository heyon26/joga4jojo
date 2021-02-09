<%@page import="co.mok.pro.vo.UserVo"%>
<%@page import="co.mok.pro.dao.UserDao"%>
<%@page import="co.mok.pro.vo.ImageVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 이미지 삽입</title>

<script>
	function insertImage(){
		var msg = confirm("해당 이미지로 변경하시겠습니까?");
		if(msg){
			frm.action = "${pageContext.request.contextPath}/InsertImage";
			frm.userId.value;
			frm.submit();
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

<form name="frm" method="post" enctype="multipart/form-data">
<input type="hidden" name="userId" value="<%=vo.getUserId() %>">

<div class="file-wrapper flie-wrapper-area">
		<div class="float-left">
			<span class="label-plus"><i class="fas fa-plus"></i></span> 
			<div id="preview"></div>
			<input type="file" name="userImage" id="userImage" class="upload-box upload-plus" accept="image/*" size="40">
			<p/>
			
			<div class="file-edit-icon">
			<input type="button" class="preview-edit" value="수정" onclick="insertImage()">&nbsp;
			<input type="button" class="preview-de" value="삭제">
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