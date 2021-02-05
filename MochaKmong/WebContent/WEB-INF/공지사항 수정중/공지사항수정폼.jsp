<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정폼</title>
</head>
<body>
<div align="center">
		<h1>공지사항 정보 수정</h1>
	</div>
	<div align="center">
		<form id="frm" name="frm" method="post" action="공지사항수정실행.do">
			<table border="1">
				<tr>
					<th width="100">공지사항th</th>
						<td width="120" align="center">
				수정부분	<input type="text" id="mTel" name="mTel" value="'${vo.mName}'"></td>
					<th width="100">공지사항th</th>
						<td width="120" align="center">
				수정부분	<input type="text" id="mTel" name="mTel" value="${vo.mTel }"></td>
					<th width="100">공지사항th</th>
						<td width="100" align="center">#</td>
				</tr>
				<tr>
					<th width="100">공지사항th</th>
					<td colspan="5">${vo.값 }</td>
				</tr>
				<tr>
					<th width="150">공지사항th</th>
					<td colspan="5"><textarea rows="7" cols="90">공지사항 내용</textarea></td>
				</tr>
			</table><br/>
				<button type="submit">수정 완료</button>
				<button type="reset">취소</button>
		</form>
	</div>
</body>
</html>