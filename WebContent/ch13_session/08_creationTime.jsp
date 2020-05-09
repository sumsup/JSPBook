<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>getCreationTime</title>
</head>
<body>
    <%
        String session_id = session.getId(); // 고유한 세션 내장 객체의 ID.
        long last_time = session.getLastAccessedTime();
        long start_time = session.getCreationTime();
        long user_time = (last_time - start_time) / 60000; // milli second.

        out.println("세션 아이디 : " + session_id + "<br>");
        out.println("요청 시작 시간 : " + start_time + "<br>");
        out.println("요청 마지막 시간 : " + last_time + "<br>");
        out.println("웹 사이트의 경과 시간 : " + user_time + "<br>");
    %>
</body>
<script>

</script>

</html>