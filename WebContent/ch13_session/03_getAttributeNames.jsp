<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>title</title>
</head>
<body>
    <%
        String name;
        String value;

        Enumeration en = session.getAttributeNames();
        int i = 0;

        while (en.hasMoreElements()) {
            i++;
            name = en.nextElement().toString();
            value = session.getAttribute(name).toString();

            out.println("설정된 세션의 속성 이름 [ " + i + " ] : " + name + "<br>");
            out.println("설정된 세션의 속성 값 [ " + i + " ] : " + value + "<br>");
        }
    %>
</body>
<script>

</script>

</html>