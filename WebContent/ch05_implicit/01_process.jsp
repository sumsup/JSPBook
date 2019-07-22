<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Implicit Objects</title>
</head>

<%! // 전역 메서드 선언.

private String getClientIP(HttpServletRequest request){
	String ip = request.getHeader("X-Forwarded-For");
	 
    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
        ip = request.getHeader("Proxy-Client-IP");
    }
    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
        ip = request.getHeader("WL-Proxy-Client-IP");
    }
    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
        ip = request.getHeader("HTTP_CLIENT_IP");
    }
    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
        ip = request.getHeader("HTTP_X_FORWARDED_FOR");
    }
    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
        ip = request.getRemoteAddr();
    }
 
    return ip;		
}
%>

<body>
	
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
	%>
	
	<p> 이 름 : <%= name %>
	<p> 요청 정보 길이  : <%=request.getContentLength() %>
	<p> 클라이언트 전송 방식 : <%=request.getMethod() %>
	<p> 요청 URI : <%= request.getRequestURI() %>
	<p> 서버이름 : <%= request.getServerName() %>
	<p> 서버포트 : <%= request.getServerPort() %>
	<p> 웹 브라우저 IP : <%= getClientIP(request) %>
	<p> 웹 브라우저 IP (getRemoteAddr()) : <%= request.getRemoteAddr() %>
	<p> 컨텍스트 Path : <%= request.getContextPath() %>
	<p> Proxy Client IP : <%= request.getHeader("Proxy-Client-IP") %>
	<p> WL-Proxy-Client-IP : <%= request.getHeader("WL-Proxy-Client-IP") %>
	
</body>
</html>