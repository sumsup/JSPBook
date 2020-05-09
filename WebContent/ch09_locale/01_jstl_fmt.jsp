<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Internationalization</title>
</head>
<body>
    <P> -------- 기본 로케일 -------- </P>
    <fmt:setLocale value="ko"/>
    <fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle" />
    <p> 제목 : <fmt:message key="title" bundle="${resourceBundle}" /></p>
    <p> <fmt:message key="username" var="userMsg" bundle="${resourceBundle}"/> </p>
        이름 : ${userMsg}
    <p> -------- 영문 로케일 --------
        <fmt:setLocale value="en" />
        <fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle" /></p>
    <p> 제목 : <fmt:message key="title" bundle="${resourceBundle}" /></p>
    <p> 이름 : <fmt:message key="username" bundle="${resourceBundle}" /></p>
</body>
<script>

</script>

</html>