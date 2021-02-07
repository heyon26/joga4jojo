<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문리스트출력</title>
</head>
<body>
<script type="text/javascript">
	function formSubmit(str){
		frm.boardCode.value = str;
		frm.action = "askListView.do";
		frm.submit();
	}
	
	function insertAlert() {
		var ib = confirm("질문 리스트를 작성하시겠습니까?");
		if(ib) {
		location.href = "newAskForm.do";
		}
	}
</script>
<div align="center"><h1>자주 묻는 질문</h1></div>
	<form id="frm" name="frm" action="" method="post">
				<input type="hidden" id="boardCode" name="boardCode">
	</form>
<div align="center">
			<table border="1">
				<tr>
					<th align ="center">글번호</th>
					<th align ="center">소분류1</th>
					<th align ="center">소분류2</th>
					<th align ="center">제목</th>
					<th align ="center">ID</th>
					<th align ="center">작성일자</th>
				</tr>
			<c:forEach var ="vo" items="${list }">
				<tr class="row"onclick = "formSubmit('${vo.boardCode }')">
					<td width="100" align ="center">${vo.boardCode }</td>
					<td width="100" align ="center">${vo.bCategoryA }</td>
					<td width="100" align ="center">${vo.bCategoryB }</td>
					<td width="450" align ="center">${vo.bName }</td>
					<td width="100" align ="center">${vo.userId }</td>
					<td width="150" align ="center">${vo.bDate }</td>
				</tr>
			</c:forEach>
			</table>		
				<button type="button" onclick="insertAlert()">글쓰기</button>
				<button type="button" onclick="#">문의하기</button>
</div>
</body>
</html>