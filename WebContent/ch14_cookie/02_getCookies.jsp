<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>getCookies</title>
</head>
<body>
    <%
        Cookie[] cookies = request.getCookies();

        out.print("현재 설정된 쿠키의 개수 => " + cookies.length + "<br>");
        out.print("==========================================<br>");

        for (int i=0, loop=cookies.length; i < loop; i++) {
            out.print("설정된 쿠키 name [" + (i+1) + "] : " + cookies[i].getName() + "<br>");
            out.print("설정된 쿠키 value [" + (i+1) + "] : " + cookies[i].getValue() + "<br>");
            out.print("--------------------------------------------------<br>");
        }
    %>
</body>
<script>

</script>

</html>