<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>init param process</title>
</head>
<body>
    <%
        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");
    %>

    <p> 입력된 id : <%=id %></p>
    <p> 입력된 pw : <%=passwd%></p>

</body>
<script>

</script>

</html>