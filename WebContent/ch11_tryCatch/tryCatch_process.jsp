<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>try-catch process</title>
</head>
<body>

    <%
        try {
            String num1 = request.getParameter("num1");
            String num2 = request.getParameter("num2");

            int a = Integer.parseInt(num1);
            int b = Integer.parseInt(num2);
            int c = a / b ;

            out.print(num1 + " / " + num2 + " = " + c);
        } catch (Exception e) {
        // catch로 받는 예외를 정할 수 있다. 구체적으로. 아래처럼.
        //} catch (NumberFormatException e) {
            System.out.print("예외 발생 : "+e.getMessage());
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("tryCatch_error.jsp");
            requestDispatcher.forward(request, response);
        }
    %>

</body>
<script>

</script>

</html>