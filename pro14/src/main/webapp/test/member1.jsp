<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%
    request.setCharacterEncoding("UTF-8");
    %>
    <c:set var="id" value="Ra" scope="page"/>
    <c:set var="pwd" value="1234" scope="page"/>
    <c:set var="name" value="${'Racoon' }" scope="page"/>
    <c:set var="age" value="${7 }" scope="page" />
    <c:set var="height" value="${52}" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table align="center" border=1>
<tr align="center" bgcolor="lightblue">
<td width="7%" > <b>아이디</b></td>
<td width="7%" > <b>비밀번호</b></td>
<td width="7%" > <b>이름</b></td>
<td width="7%" > <b>나이</b></td>
<td width="7%" > <b>키</b></td>
</tr>
<tr align="center">
<td>${id}</td>
<td>${pwd}</td>
<td>${name}</td>
<td>${age}</td>
<td>${height}</td>
</tr>
<tr align="center">
<td><%=request.getParameter("id") %></td>
<td><%=request.getParameter("pwd") %></td>
<td><%=request.getParameter("name") %></td>
<td><%=request.getParameter("age") %></td>
<td><%=request.getParameter("height") %></td>
</tr>
</table>
</body>
</html>