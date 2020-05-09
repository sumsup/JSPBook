<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Pstmt - update</title>
</head>
<body>
    <%@include file="02_db_conn.jsp"%>
    <%
        request.setCharacterEncoding("utf-8");

        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");
        String name = request.getParameter("name");

        ResultSet rs = null;
        PreparedStatement pstmt = null;
        try {
            String sql = "select id, passwd from member where id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            // if (pstmt != null) pstmt.close(); // stmt의 excuteQuery 응답이 오기전에 stmt를 close하면 Exception.

            if (rs.next()) {
                String rId = rs.getString("id");
                String rPasswd = rs.getString("passwd");

                if (id.equals(rId) && passwd.equals(rPasswd)) {
                    sql = "update member set name = ? where id = ?";
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setString(1, name);
                    pstmt.setString(2, id);
                    pstmt.executeUpdate();
                    out.println("Member 테이블을 수정했습니다.");
                }
                else {
                    out.println("일치하는 비밀번호가 아닙니다.");
                }
            }
            else {
                out.println("Member 테이블에 일치하는 아이디가 없습니다.");
            }
        } catch(Exception e) {
            out.println("SQLException: " + e.getMessage());
        } finally {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }
    %>
</body>
<script>

</script>
</html>