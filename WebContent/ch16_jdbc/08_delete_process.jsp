<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>excute statement process - delete</title>
</head>
<body>
    <%@include file="02_db_conn.jsp"%>
    <%
        request.setCharacterEncoding("utf-8");

        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");

        ResultSet rs = null;
        Statement stmt = null;

        try {
            String sql = "select id, passwd from member where id = '" + id + "'";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                String rId = rs.getString("id");
                String rPasswd = rs.getString("passwd");

                if (id.equals(rId) && passwd.equals(rPasswd)) {
                    sql = "delete from member where id = '" + id + "' and passwd = '" + passwd + "'";
                    stmt = conn.createStatement();
                    stmt.executeUpdate(sql);
                    out.println("Member 테이블을 삭제했습니다.");
                }
                else {
                    out.println("일치하는 비밀번호가 아닙니다.");
                }
            }
            else {
                out.println("Member 테이블에 일치하는 아이디가 없습니다.");
            }
        } catch(SQLException e) {
            out.println("SQLException: "+e.getMessage());
        } finally {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        }
    %>
</body>
<script>

</script>
</html>