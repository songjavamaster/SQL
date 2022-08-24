<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border=1 align="center" width="100%">
<tr align="center" bgcolor="lightskyblue">
<td><b>아이디</b></td>
<td><b>비밀번호</b></td>
<td><b>이름</b></td>
<td><b>이메일</b></td>
<td><b>가입일</b></td>
<td><b>삭제</b></td>
</tr>
<c:forEach var="member" items="${memberList }">
<tr align="center">
<td>${member.id }</td>
<td>${member.pwd }</td>
<td>${member.name }</td>
<td>${member.email }</td>
<td>${member.joinDate }</td>
<td><a href="${contextPath }/member/removeMember.do?id=${member.id}">삭제하기</a></td>
</tr>
</c:forEach>
</table>
<a href="${contextPath }/member/memberForm.jsp">
<h1 style="text-align:center">회원가입</h1>
</a>
</body>
</html>