<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Validation</title>
</head>
<script>
    function CheckForm() {
        alert("아이디 : " + document.loginForm.id.value + "\n" +
              "비밀번호 : " + document.loginForm.passwd.value);
    }
</script>

<body>
    <form name="loginForm">
        <p> 아 이 디 : <input type="text" name="id"></p>
        <p> 비밀번호 : <input type="password" name="passwd"></p>
        <p> <input type="submit" onclick="CheckForm()"></p>
    </form>
</body>

</html>