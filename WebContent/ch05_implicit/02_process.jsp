<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Implicit Object</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		
		String userid = request.getParameter("id");
		String password = request.getParameter("passwd");
		
	%>
	
	<p> 아이디 : <%= userid %>
	<p> 비밀번호 : <%= password %>

</body>
</html>