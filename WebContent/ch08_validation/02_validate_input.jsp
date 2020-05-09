<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Validation</title>
</head>
<script>
    function CheckLogin() {
        var form = document.loginForm;
        event.preventDefault();
        if (form.id.value == "") {
            alert("아이디를 입력해주세요.");
            form.id.focus();
            return false;
        } else if (form.passwd.value == "") {
            alert("비밀번호를 입력해주세요.");
            form.passwd.focus();
            return false;
        }
        form.submit();
    }
</script>

<body>
    <form name="loginForm" action="validate_process.jsp" method="post">
        <p> 아 이 디 : <input type="text" name="id"></p>
        <p> 비밀번호 : <input type="password" name="passwd"></p>
        <p> <input type="submit" value="전송" onclick="CheckLogin()"></p>
    </form>
</body>

</html>