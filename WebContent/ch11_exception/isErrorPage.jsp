<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="isErrorPage_error.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Exception</title>
</head>
<body>
    name 파라미터 : <%= request.getParameter("name").toUpperCase() %>
</body>
<script>

</script>

</html>