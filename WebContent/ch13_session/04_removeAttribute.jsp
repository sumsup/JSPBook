<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
</head>
<body>
    <h4>------ 세션을 삭제하기 전 ------</h4>
    <%
        String user_id = (String) session.getAttribute("userID");
        String user_pw = (String) session.getAttribute("userID");

        out.println("설정된 세션 이름 userID : " + user_id + "<br>");
        out.println("설정된 세션 이름 userPW : " + user_pw + "<br>");

        session.removeAttribute("userID");
    %>
    <h4>------ 세션을 삭제한 후 ------</h4>
    <%
        user_id = (String) session.getAttribute("userID");
        user_pw = (String) session.getAttribute("userID");

        out.println("설정된 세션 이름 userID : " + user_id + "<br>");
        out.println("설정된 세션 이름 userPW : " + user_pw + "<br>");
    %>

</body>
<script>

</script>

</html>