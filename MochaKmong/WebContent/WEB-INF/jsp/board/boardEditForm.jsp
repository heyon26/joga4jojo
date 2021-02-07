<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지게시판 수정폼</title>
</head>
<body>
<div align="center">
	<br/><br/><br/>
	<div><h1>공지사항 수정</h1></div>
	<div>
		<form id="frm" name="frm"action="boardEdit.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th width="150">boardCode</th>
						<td width="100"><input type="text" id="boardCode" name="boardCode""size="20" value="${vo.boardCode }"readonly="readonly"></td>
						<th width="150">bBoard</th>
						<td width="100"><input type="text" id="bBoard"name="bBoard"size="20" value="${vo.bBoard }"required="required"></td>
						<th width="150">bName</th>
						<td width="100"><input type="text" id="bName"name="bName"size="20" value="${vo.bName }"required="required"></td>
						<th width="150">bContent</th>
						<td width="100"><input type="text" id="bContent"name="bContent"size="20"value="${vo.bContent }" required="required"></td>
						<th width="150">bCategoryA</th>
						<td width="100"><input type="text" id="bCategoryA"name="bCategoryA"size="20" value="${vo.bCategoryA }"required="required"></td>
						<th width="150">bCategoryB</th>
						<td width="100"><input type="text" id="bCategoryB"name="bCategoryB"size="20" value="${vo.bCategoryB }"required="required"></td>
					</tr>
				</table>			
			</div>
				<input type="submit" value="작성완료">&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소">
		</form>
	</div>

</div>
</body>
</html>