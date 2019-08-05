<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>file upload information</title>
</head>
<body>

	<form name='fileForm' method='post' enctype='multipart/form-data' action='02_fileupload_info_process.jsp'>
	
		<p> 이 름 : <input type='text' name='name'>
		<p> 제 목 : <input type='text' name='subject'>
		<p> 파 일 : <input type='file' name='filename'>
		<p> <input type='submit' value='파일 올리기'>
	
	</form>

</body>
</html>