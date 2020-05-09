<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script>

    </script>
    <title>validation</title>
</head>

<body>
    <h3>입력에 성공했습니다.</h3>
    <%
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");
    %>
    <p> 아이디 : <%=id%></p>
    <p> 비밀번호 : <%=passwd%></p>
</body>
</html>