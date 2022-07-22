<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%
    request.setCharacterEncoding("UTF-8");
    %>
    <c:set var="id" value="song" scope="page" />
    <c:set var="pwd" value="1234" scope="page" />
    <c:set var="name" value="${'송인재'}" scope="page" />
     <c:set var="name1" value="${'양현성'}" scope="page" />
    <c:set var="age" value="${33 }" scope="page" />
    <c:set var="height" value="${177 }" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c : if test="${true}">
<h1>안녕하세요 "참"입니다.</h1>
</c : if>
<c : if test="${11==11}">
<h1>두 값은 같지요오~?</h1>
</c : if>
<c : if test="${11!=31}">
<h1>두 값은 틀리지요오~?</h1>
</c : if>
<c : if test="${(id=='song') && (name=='송인재')}">
<h1>아이디는 ${id}이고, 이름은 ${name }입니다.</h1>
</c : if>
<c : if test="${age==33}">
<h1>${name }의 나이는 ${age }살입니다.</h1>
</c : if>
<c : if test="${height<160}">
<h1>${name }의 키는 송지섭 보다 작습니다.</h1>
<c : if test="${height>160}">
<h1>${name }의 키는 양현성 보다 큽니다.</h1>
</c : if>
<c : if test="${height>160}">
<h1>하지만 ${name1 }은 송인재 보다 마음이 넓습니다.</h1>
</body>
</html>