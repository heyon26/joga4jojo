<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script>
$(document).ready(function(){
	$("input:radio[name='skill']:radio[value='2']").prop('checked', true);
});
</script>
</head>
<body>
<input type="radio" name="skill" value="1">JAVA
<input type="radio" name="skill" value="2">JSP
<input type="radio" name="skill" value="3">ASP
<input type="radio" name="skill" value="4">PHP
<input type="radio" name="skill" value="5">Delphi
</body>
</html>