<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cookie</title>
</head>
<body>
    <%
        String userId = request.getParameter("id");
        String userPW = request.getParameter("pw");

        if ("admin".equals(userId) && "1234".equals(userPW)) {
            Cookie cookieId = new Cookie("userID",userId);
            Cookie cookiePW = new Cookie("userPW",userPW);
            response.addCookie(cookieId);
            response.addCookie(cookiePW);
            out.println("쿠키 생성이 성공했습니다<br>");
            out.println(userId + "님 환영합니다.");
        }
        else {
            out.println("쿠키 생성이 실패 했습니다.\n정확한 ID와 비밀번호를 입력해줘.");
        }

    %>
    <a href="02_getCookies.jsp">쿠키확인!</a>
    <a href="03_setMaxAge.jsp">쿠키삭제!</a>
</body>
<script>

</script>

</html>