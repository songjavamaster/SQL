<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<c:redirect url="/test/member1.jsp" >
<c:param name="id" value="${'Ra'}" />
<c:param name="pwd" value="${'1234'}" />
<c:param name="name" value="${'Racoon'}" />
<c:param name="age" value="${'7'}" />
<c:param name="height" value="${'180'}" />
</c:redirect>
</body>
</html>