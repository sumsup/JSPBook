<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Implicit Objects</title>
</head>
<body>

	<%
	
		Enumeration en = request.getHeaderNames(); // 모든 헤더의 name 값을 가져옴.
	
		while (en.hasMoreElements()) { // 요소를 다 가져옴.
			
			String headerName = (String) en.nextElement(); // 헤더의 다음 값을 가져옴.
			String headerValue = request.getHeader(headerName); // 헤더의 name 값에 해당하는 value를 가져옴.
			
	%>
	
	<%= headerName %> : <%= headerValue %> <br>
	
	<%
	
		}
	
	%>
	
</body>
</html>