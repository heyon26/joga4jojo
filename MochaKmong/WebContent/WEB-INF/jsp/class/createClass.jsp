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

		});
	});
</script>
<meta charset="UTF-8">
<title>클래스 등록</title>
</head>
<body>

	<div align="center">
		<div style="width: 800px">
		<form method="post">
			<div>클래스 등록하기</div>
			<div>
				1. 연락처 입력
				<div>
				
				</div>
			</div>
			<div align="left">
				
					<textarea id="summernote" name="editordata" style="display: none;"></textarea>
				
			</div>
			</form>
		</div>
	</div>

	<div class="note-modal-backdrop" style="display: none;"></div>
</body>
</html>