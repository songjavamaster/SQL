<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
안녕하세요.쇼핑몰 중심 JSP 시작입니다.!!!
<br>
<jsp:include page="racoon_image.jsp" flush="true">
<jsp:param name="name" value="라쿤" />
<jsp:param name="imgName" value="racoon.PNG" />
</jsp:include>
<br>
이제 알겠냐 멍청한 인간들아!!!!
</body>
</html>