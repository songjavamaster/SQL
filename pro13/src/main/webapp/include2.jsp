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
<br>
<jsp:include page="racoon_image.jsp" flush="true">
<jsp:param name="name" value="너구리" />
<jsp:param name="imgName" value="racoon1.PNG" />
</jsp:include>
<br>
이제 알겠냐 멍청한 인간들아!!!!
</body>
</html>