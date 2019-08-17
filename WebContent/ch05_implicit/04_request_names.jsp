<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Request Objects</title>
</head>
<body>

	<p> 클라이언트 IP : <%= request.getRemoteAddr() %>
	<p> 요청 정보 길이 : <%= request.getContentLength() %>
	<p> 요청 정보 인코딩 : <%= request.getCharacterEncoding() %>
	<p> 요청 정보 콘텐츠 유형 : <%= request.getContentType() %>
	<p> 요청 정보 프로토콜 : <%= request.getProtocol() %>
	<p> 요청 정보 전송 방식 : <%= request.getMethod() %>
	<p> 요청 URI : <%= request.getRequestURI() %>
	<p> 콘텍스트 경로 : <%= request.getContextPath() %>
	<p> 서버 이름 : <%= request.getServerName() %>
	<p> 서버 포트 : <%= request.getServerPort() %>
	<p> 쿼리문 : <%= request.getQueryString() %>

</body>
</html>