<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    String name = "이순신";
   	public String getName(){ return name;}%>
   	<% String age= request.getParameter("age"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>안녕하세요 <%=name %>님!!!</h1>
 <h1> 내가 만든 거북선이여!!!!!!!!</h1>
 <img src="./img/Lee.jpg">
 <h1>나이는 <%=age %></h1>
 <h1>키는 <%=180 %></h1>
 <h1>나이+10 은 <%=Integer.parseInt(age)+10 %>살!!!!!!!!!!!</h1>
</body>
</html>