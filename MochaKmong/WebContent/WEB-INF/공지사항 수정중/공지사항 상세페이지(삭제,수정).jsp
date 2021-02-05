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
	function deleteAlert() {   //삭제
		var db = confirm("글을 삭제하시겠습니까?");
		if(db) {
			location.href="bookDelete.do?공지사항pk값="+"${vo.공지사항pk값}";
		}
		
	}
	
	function updateAlert() {  //수정
		var ub = confirm("글 수정 하시겠습니까?");
			if(ub) {
			frm.action = "공지사항수정Form.do";
			frm.submit();
		}
	}
</script>
<div align ="center"><h1> 공지사항 상세보기 페이지 입니다.</h1></div>
		<div>
			<form id="frm" name="frm" action="" method="post">
			<input type="hidden" id="공지사항pk값" name="공지사항pk값" value="${vo.공지사항pk값 }">
			</form>
		</div>
		<div align ="center">
		<table border="1">
			<tr>
				<th width="100">공지사항pk값</th>
				<td width="100" align="center">${book.bookCode }</td>
				<th width="100">공지사항값1</th>
				<td width="120" align="center">${book.bookName }</td>
				<th width="100">공지사항값2</th>
				<td width="120" align="center">${book.quantity }</td>
				<th width="100">공지사항값3</th>
				<td width="120" align="center">${book.bCount }</td>
			</tr>
		</table><br/>
		<div>
			<button type="button" onclick="deleteAlert()">삭 제</button>&nbsp;&nbsp;&nbsp;
			<button type="button" onclick="updateAlert()">수 정</button>&nbsp;&nbsp;&nbsp;
		</div>
</div>
</body>
</html>