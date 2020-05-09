<%@ page import="java.util.Locale" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Internationalization</title>
</head>
<body>
    <h3>현재 로케일의 국가, 날짜, 통화</h3>
    <%
        // 브라우저에 설정된 언어 설정에서 국가를 가져옴.
        // 브라우저에서 언어를 en-US 로 변경하면 locale값도 en-US로 변경됨.
        Locale locale = request.getLocale();
        Date currentDate = new Date();
        DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.FULL, locale);
        NumberFormat numberFormat = NumberFormat.getNumberInstance(locale);
    %>
<p> 국가 : <%=locale.getDisplayCountry()%></p>
<p> 날짜 : <%=dateFormat.format(currentDate)%></p>
<p> 숫자 (12345.67) : <%=numberFormat.format(12345.67)%></p>

</body>
<script>

</script>

</html>