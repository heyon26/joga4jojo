<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성폼</title>
</head>
<body>
<div align="center">
	<br/><br/><br/>
	<div><h1>공지사항 작성</h1></div>
	<div>
		<form id="frm" name="frm"action="newBoard.do" method="post">
			<input type="hidden" id="bBoard"name="bBoard"size="20" required="required" value=test > 
			<div>
				<table border="1">
					<tr>
						<th width="150">userId</th>
						<td width="100"><input type="text" id="userId"name="userId"size="20"required="required"value=admin></td>
						<th width="150">bName</th>
						<td width="100"><input type="text" id="bName"name="bName"size="20" required="required"></td>
						<th width="150">bContent</th>
						<td width="100"><input type="text" id="bContent"name="bContent"size="20" required="required"></td>
						<th width="150">bCategoryA</th>
						<td width="100"><input type="text" id="bCategoryA"name="bCategoryA"size="20" required="required"></td>
						<th width="150">bCategoryA</th>
						<td width="100"><input type="text" id="bCategoryB"name="bCategoryB"size="20" required="required"></td>
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