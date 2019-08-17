<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Response Objects</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("id");
		String password = request.getParameter("passwd");
		
		if(userid.equals("관리자") && password.equals("1234")) {
			
			response.sendRedirect("05_response_success.jsp");
			
		} else {
			
			response.sendRedirect("05_response_failed.jsp");
			
		}
	
	
	
	%>

</body>
</html>