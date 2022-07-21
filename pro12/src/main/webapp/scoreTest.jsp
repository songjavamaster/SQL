<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8");
    int score=Integer.parseInt(request.getParameter("score"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>시험점수 <%=score  %>점</h1><br>
<%
if(score>=90){
%>
<h1>A학점 송인재입니다.</h1>
<%
}else if(score>=80 && score<90){
%>
<h1>B학점 평민.</h1>
<%
}else if(score>=70 && score<80){
%>
<h1>C학점 노예</h1>
<%
}else if(score>=60 && score<80){
%>
<h1>D학점 후.....</h1>
<%
}else{
%><h1>F학점 인생 나가리다.</h1>
<%
}
%>
<br>
<a href="scoreTest.html">시험점수입력</a>
</body>
</html>