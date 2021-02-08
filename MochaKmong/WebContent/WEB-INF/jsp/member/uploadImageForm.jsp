<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 이미지 수정</title>
</head>
<!-- 이미지 미리보기 -->
<!-- <script>
	
		function uploadImage(event){
			var reader = new FileReader();
			reader.onload = function(event){
				var img = document.createElement("img");
				img.setAttribute("src",event.target.result);
				document.querySelector("div#preview").appendChild(img);
			}
			reader.readAsDataURL(event.target.files[0]);
		}		
	</script> -->
	
	<script type="text/javascript">
		// 등록 이미지 등록 미리보기 

		function readInputFile(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#preview').html("<img src="+ e.target.result +">");
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
		$(".inp-img").on('change', function() {
			readInputFile(this);
		}); 
		
		// 등록 이미지 삭제 ( input file reset ) 
		function resetInputFile($input, $preview) { 
			var agent = navigator.userAgent.toLowerCase(); 
			if((navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1)) { 
			// ie 일때 
			$input.replaceWith($input.clone(true)); $preview.empty(); } else { 
				//other 
				$input.val(""); 
				$preview.empty(); 
				} 
		} 
		$(".btn-delete").click(function(event) { 
			var $input = $(".inp-img"); 
			var $preview = $('#preview'); 
			resetInputFile($input, $preview); 
		});
	</script>	

<body>
<!-- 	<div class="col-md-3">
		<div class="text-center">

			<div id="preview" name="preview"></div>
			<h6>프로필 이미지를 업로드해 주세요</h6>

			<input type="file" accept="image/*" id="uploadFile" name="uploadFile"
				onchange="uploadImage(event)">
		</div>
	</div> -->
	<div id="sero3">이미지등록 :</div>
	<div id="sero4">
		<input type="file" name="upfile" class="inp-img" accept=".gif, .jpg, .png"> <span class="btn-delete">삭제</span>
	</div>
	<div id="work_col_left">
		<div id="preview"></div>
	</div>

</body>

	
</html>