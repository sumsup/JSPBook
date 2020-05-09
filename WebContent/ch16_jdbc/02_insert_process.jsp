<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Statement</title>
</head>
<body>
    <%@include file="02_db_conn.jsp"%>
    <%
        request.setCharacterEncoding("utf-8");

        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");
        String name = request.getParameter("name");

        Statement stmt = null;

        try {
            String sql = "insert into member(id, passwd, name) values ('"+id+"','"+passwd+"','"+name+"')";
            stmt = conn.createStatement();
            stmt.executeUpdate(sql);
            out.println("Member 테이블 삽입이 성공했습니다.");

        } catch(SQLException e) {
            out.println("Member 테이블 삽입이 실패 했습니다. <br>");
            out.println("SQLException: " + e.getMessage());
        } finally {
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        }
    %>
</body>
<script>

</script>

</html>