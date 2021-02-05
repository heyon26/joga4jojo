<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<br/><br/><br/>
	<div><h1>게시글작성</h1></div>
	<div>
		<form id="frm" name="frm"action="글작성.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th width="150">작성자</th>
						<td width="100"><input type="text" id="bName"name="bName"size="20" required="required"></td>
						<th width="150">작성일자</th>
						<td width="100"><input type="date" id="bDate"name="bDate"size="20" required="required"></td>
					</tr>
					<tr>
						<th width="150">제목</th>
						<td width="100" colspan="3"><input type="text" id="bTitle"name="bTitle"size="75" required="required"></td>
					</tr>
					<tr>
						<th width="150" >내용</th>
						<td width="100" colspan="3"><textarea id="bContent"name="bContent"rows="7" cols="70" required="required"></textarea></td>
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