<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

	<meta charset="UTF-8">
	<title>Action Tag</title>
	
</head>

<body>
	
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" />
	<!-- 객체를 만든다. 사용범위는 request. 이 request 는 뭐지? 한 번의 요청에서만 사용 가능하다는 건가? -->
	
	<p> 아이디 : <%= person.getId() %>
	<p> 이  름 : <%= person.getName() %>
	
	<%
		
		person.setId(20201027);
		person.setName("홍길동");
	
	%>
	
	<jsp:include page="05_useBean03_person.jsp" />

</body>

</html>