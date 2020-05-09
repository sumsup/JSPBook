<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Internationalization</title>
</head>
<body>
    <p> 숫자 : <fmt:formatNumber value="3200100" /> </p>
    <p> 일반 : <fmt:formatNumber value="3200100" type="number" /> </p>

    <%-- groupingUsed : 숫자 3자리마다 , 를 붙이는 것. 기본갑은 true. true : 설정, false : 해제  --%>
    <p> groupingUsed false : <fmt:formatNumber value="3200100" type="number" groupingUsed="false"/> </p>
    <p> type=currency : <fmt:formatNumber value="3200100" type="currency" groupingUsed="true"/> </p>
    <p> currencySymbol="&" : <fmt:formatNumber value="3200100" type="currency" groupingUsed="true" currencySymbol="&"/> </p>
    <p> type="percent" : <fmt:formatNumber value="0.45" type="percent"/> </p>

    <%--
    minIntegerDigits="10" : 출력하는 정수 자릿수를 10자리로 고정.
    minFractionDigits="2" : 출력하는 실수 자릿수를 2자리로 고정.
    --%>
    <p> minIntegerDigits="10" minFractionDigits="2" :
        <fmt:formatNumber value="3200100" minIntegerDigits="10" minFractionDigits="2"/> </p>
    <p> 3200100.45 를 pattern=".000" 으로 :
        <fmt:formatNumber value="3200100.45" pattern=".000" />
    </p>
    <p>
        3207832.456 를 pattern="#,#00.0#" 으로 :
        <fmt:formatNumber value="3207832.456" pattern="#,#00.0#" />
    </p>

</body>
<script>

</script>

</html>