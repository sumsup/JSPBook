<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Connection</title>
</head>
<body>
    <%
        Connection conn = null;
        try {
            String url = "jdbc:mysql://localhost:3306/jsp_book";
            String user = "root";
            String password = "mysql";

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
            out.println("데이터 베이스 연결이 성공했습니다.");

        } catch(SQLException e) {
            out.println("데이터 베이스 연결이 실패했습니다.<br>");
            out.println("SQLException : " + e.getMessage());
        } finally {
            if (conn != null) conn.close();
        }

    %>

</body>
<script>

</script>

</html>