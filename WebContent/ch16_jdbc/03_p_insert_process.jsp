<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Prepared Statement</title>
</head>
<body>
    <%@include file="02_db_conn.jsp"%>
    <%
        request.setCharacterEncoding("utf-8");

        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");
        String name = request.getParameter("name");

        PreparedStatement pstmt = null;

        try {
            String sql = "insert into member(id, passwd, name) values (?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, passwd);
            pstmt.setString(3, name);
            int result = pstmt.executeUpdate();
            out.println("Member 테이블 삽입이 성공했습니다.");
            out.println("updated row count : " + result);
        } catch(SQLException e) {
            out.println("Member 테이블 삽입이 실패했습니다.<br>");
            out.println("SQLException: " + e.getMessage());
        } finally {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }
    %>

</body>
<script>

</script>

</html>