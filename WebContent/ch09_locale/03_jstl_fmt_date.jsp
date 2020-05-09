<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Internationalization</title>
</head>
<body>
    <p> <jsp:useBean id="now" class="java.util.Date" /></p>
    <p> <fmt:formatDate value="${now}" type="date" /></p>
    <p> <fmt:formatDate value="${now}" type="time" /></p>
    <p> <fmt:formatDate value="${now}" type="both" dateStyle="default" timeStyle="default"/></p>
    <p> <fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"/></p>
    <p> <fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium"/></p>
    <p> <fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long"/></p>
    <p> <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/></p>
    <p> <fmt:formatDate value="${now}" type="both" pattern="yyyy년MM월dd일 이며 HH시에 mm분이며 ss초에 E요일 입니다."/></p>
</body>
<script>

</script>

</html>