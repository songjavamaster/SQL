<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%
    request.setCharacterEncoding("utf-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var=:"title1" value="hello world!" />
<c:set var=:"title2" value="나는 지금 너무 졸리다!!!!!!" />
<c:set var="str1" value="졸려" />
<h2>여러 가지 문자열 함수 기능</h2>
tilte1="hello world"<br>
title2="너무너무 졸려!!!!!!!!!!!!!!!!!!"<br>
str1="졸려"<br><br>

fn:length(title1)=${fn:length(title1)}<br>
fn:toUpperCase(title1)=${fn:toUpperCase(title1)}<br>
fn:toLowerCase(title1)=${fn:toLowerCase(title1)}<br><br>
</body>
</html>