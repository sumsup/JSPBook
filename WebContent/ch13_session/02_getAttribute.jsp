<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>session</title>
</head>
<body>
    <%
        String user_id = (String) session.getAttribute("userID");
        String user_pw = (String) session.getAttribute("userPW");

        out.println("설정된 세션의 속성 값 [1] : " + user_id + "<br>");
        out.println("설정된 세션의 속성 값 [2] : " + user_pw);
    %>
</body>
<script>

</script>

</html>