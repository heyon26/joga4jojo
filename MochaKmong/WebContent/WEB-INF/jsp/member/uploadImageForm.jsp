<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 이미지 수정</title>

<script>
	function uploadImage(){
		var msg = confirm("해당 이미지로 변경하시겠습니까?");
		if(msg){
			frm.action = "uploadImage.do";
			frm.userId.value;
			frm.submit();
		}
	}
</script>

</head>

<body>

<form name="frm" method="post" enctype="multipart/form-data" action="uploadImage.do">
<input type="hidden" name="userId">
<div class="file-wrapper flie-wrapper-area">
		<div class="float-left">
			<span class="label-plus"><i class="fas fa-plus"></i></span> 
			<div id="preview"></div>
			<input type="file" name="userImage" id="userImage" class="upload-box upload-plus" accept="image/*" size="40">
			<p/>
			
			<div class="file-edit-icon">
			<input type="button" class="preview-edit" value="수정" onclick="uploadImage()">&nbsp;
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