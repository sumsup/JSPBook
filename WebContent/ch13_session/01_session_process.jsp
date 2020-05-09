<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>session_process</title>
</head>
<body>
    <%
        String user_id = request.getParameter("id");
        String user_pw = request.getParameter("passwd");

        if ("admin".equals(user_id) && "1234".equals(user_pw)) {
            session.setAttribute("userID", user_id);
            session.setAttribute("userPW", user_pw);
            out.println("세션 설정이 성공했습니다.<br>");
            out.println(user_id + "님 환영합니다.");
        } else {
            out.println("세션 설정이 실패했습니다.");
        }
    %>
</body>
<script>

</script>

</html>