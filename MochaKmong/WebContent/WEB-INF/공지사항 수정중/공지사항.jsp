<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항리스트출력</title>
</head>
<body>
<script type="text/javascript">
	function formSubmit(str){
		frm.공지사항pk값.value = str;
		frm.submit();
	}
	
	function insertAlert() {
		var ib = confirm("공지사항을 작성하시겠습니까?");
		if(ib) {
		frm.action = "공지사항글쓰기Form.do";
		frm.submit();
		}
	
	}
</script>
<div align="center"><h1>공지사항</h1></div>
	<form id="frm" name="frm" action="공지사항상세페이지.do" method="post">
				<input type="hidden" id="공지사항pk값" name="공지사항pk값">
	</form>
<div align="center">
			<table border="1">
				<tr>
					<th align ="center">공지사항pk값</th>
					<th align ="center">공지사항값1</th>
					<th align ="center">공지사항값2</th>
					<th align ="center">공지사항값3</th>
				</tr>
			<c:forEach var ="vo" items="${list }">
				<tr class="row"onclick = "formSubmit('${vo.공지사항pk값 }')">
					<td width="200" align ="center">${vo.공지사항pk값 }</td>
					<td width="200" align ="center">${vo.공지사항값1 }</td>
					<td width="200" align ="center">${vo.공지사항값2 }</td>
					<td width="200" align ="center">${vo.공지사항값3 }</td>
					<td><button type="button" onclick="insertAlert()">글쓰기</button></td>
				</tr>
			</c:forEach>
			</table>		
</div>
</body>
</html>