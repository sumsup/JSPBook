<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>File Upload</title>
</head>
<body>
	
	<form action="01_fileUpload_process.jsp" method='post' enctype='multipart/form-data'>
		
		<p> 파 일 : <input type='file' name='filename'>
		<p> <input type='submit' value='파일 올리기'>
	
	</form>
	
</body>
</html>