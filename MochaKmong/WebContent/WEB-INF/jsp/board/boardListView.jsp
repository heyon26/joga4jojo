<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세보기</title>
</head>
<body>
<script type="text/javascript">
	
	function updateAlert() {  //수정
		var ub = confirm("글 수정 하시겠습니까?");
			if(ub) {
			frm.action = "boardEditForm.do";
			frm.submit();
		}
	}
</script>
<div align ="center"><h1> 공지사항 상세보기 페이지 입니다.</h1></div>
		<div>
			<form id="frm" name="frm" action="" method="post">
			<input type="hidden" id="boardCode" name="boardCode" value="${vo.boardCode }">
			</form>
		</div>
		<div align ="center">
		<table border="1">
			<tr>
				<th width="100">제목</th>
				<td width="100" align="center">${vo.bName }</td>
				<th width="100">내용</th>
				<td width="120" align="center">${vo.bContent }</td>
				<th width="100">작성자</th>
				<td width="120" align="center">${vo.userId }</td>
				<th width="100">작성일자</th>
				<td width="120" align="center">${vo.bDate }</td>
			</tr>
		</table><br/>
		<div>
			<button type="button" onclick="deleteAlert()">삭 제</button>&nbsp;&nbsp;&nbsp;
			<button type="button" onclick="updateAlert()">수 정</button>&nbsp;&nbsp;&nbsp;
		</div>
</div>
</body>
</html>