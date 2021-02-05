<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="/MochaKmong/assets/js/summernote/summernote-lite.js"></script>
<script src="/MochaKmong/assets/js/summernote/lang/summernote-ko-KR.js"></script>

<link rel="stylesheet"
	href="/MochaKmong/assets/css/summernote/summernote-lite.css">
<script>
	$(document).ready(function() {
		//여기 아래 부분
		$('#summernote').summernote({
			width : 800,
			height : 300, // 에디터 높이
			minHeight : 400, // 최소 높이
			maxHeight : null, // 최대 높이
			focus : true, // 에디터 로딩후 포커스를 맞출지 여부
			lang : "ko-KR", // 한글 설정
			placeholder : '최대 2048자까지 쓸 수 있습니다' //placeholder 설정
				callbacks: {	//여기 부분이 이미지를 첨부하는 부분
					onImageUpload : function(files) {
						uploadSummernoteImageFile(files[0],this);
					},
					onPaste: function (e) {
						var clipboardData = e.originalEvent.clipboardData;
						if (clipboardData && clipboardData.items && clipboardData.items.length) {
							var item = clipboardData.items[0];
							if (item.kind === 'file' && item.type.indexOf('image/') !== -1) {
								e.preventDefault();
							}
						}
					}
				}

		});
	});
	
	/**
	* 이미지 파일 업로드
	*/
	function uploadSummernoteImageFile(file, editor) {
		data = new FormData();
		data.append("file", file);
		$.ajax({
			data : data,
			type : "POST",
			enctype="multipart/form-data",
			url : "/uploadSummernoteImageFile",
			contentType : false,
			processData : false,
			success : function(data) {
            	//항상 업로드된 파일의 url이 있어야 한다.
				$(editor).summernote('insertImage', data.url);
			}
		});
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<div style="width: 800px">
			<div>클래스 등록하기</div>
			<div align="left">
				<form method="post">
					<textarea id="summernote" name="editordata"></textarea>
				</form>
			</div>
		</div>
	</div>
</body>
</html>