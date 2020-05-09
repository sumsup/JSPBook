<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>validate word</title>
</head>

<body>
    <form name="loginForm" action="validate_process.jsp" method="post">
        <p> 아 이 디 : <input type="text" name="id"></p>
        <p> 비밀번호 : <input type="password" name="passwd"></p>
        <p> <input type="submit" value="전송" onclick="checkLogin()"></p>
    </form>
</body>
<script>
    function checkLogin() {
        event.preventDefault();
        var form = document.loginForm;

        for (i=0; i < form.id.value.length; i++) {
            var ch = form.id.value.charAt(i);

            if ((ch < 'a' || ch > 'z') && (ch > 'A' || ch < 'Z') && (ch < '0'||ch > '9')) {
                alert("아이디는 영문 소문자와 \n숫자만 입력 가능합니다!");
                form.id.select();
                return;
            }
        }
        form.submit();
    }
</script>
</html>