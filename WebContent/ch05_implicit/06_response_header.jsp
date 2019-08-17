<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	
	<p>이 페이지는 5초마다 새로 고침 됩니다.</p>
	<%
		
		response.setIntHeader("Refresh", 5); // 5초마다 refresh.
		
		response.setHeader("Cache-control", "use_cache");
		response.setDateHeader("date", 1L);
	
	%>
	
	<%= (new java.util.Date()) %>
	
	<p>Cache-control : <%= response.getHeader("Cache-control") %>
	<p>content Type : <%= response.getHeader("contentType") %>
	<p>date : <%= response.getHeader("date") %>
	
</body>
</html>