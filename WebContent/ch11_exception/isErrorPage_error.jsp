<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Exception</title>
</head>
<body>
    <p> 오류 발생쓰! </p>
    <p> 예외 유형 : <%= exception.getClass().getName() %> </p>
    <p> 오류 메시지 : <%= exception.getMessage()%> </p>

</body>
<script>

</script>

</html>