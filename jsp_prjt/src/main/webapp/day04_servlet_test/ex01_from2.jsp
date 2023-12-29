<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력값 전송방식: post방식</title>
</head>
<body>
	<from method = "get" action = "/human/info" name = "frm">
	아이디:<input type = "text" name = "member_id"><br>
	주 소:<input type = "text" name = "daaress"><br>
	가입인사:<br>
	<input type = "textarea" name = "greet" rows = "5" cols = "35"><br>
	<input type = "submit" id = "submit_btn" value = "post방식으로 전송">
	</from>
</body>
</html>