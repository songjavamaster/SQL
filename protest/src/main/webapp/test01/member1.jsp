<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--taglib=자바에서 import문을 선언하듯 JSP에서도 JSTL 확장 태그를 
    사용하려면 taglib 지시자로 라이버리를 선언해야 한다.

JSP 지시자 태그 <%@ taglib %>를 사용해서 다음과 같이 선언한다.
!!!!!!!!core 태그 라이브러리를 사용하기 위해 반드시 선언해야합니다.--%>
<%
request.setCharacterEncoding("utf-8");
%>
<c:set var="id" value="song" scope="page" /><%--scope=범위--%>
<c:set var="pwd" value="1234" scope="page" />
<c:set var="name" value="{'송인재'}" scope="page" />
<c:set var="age" value="${22}" scope="page" />
<c:set var="height" value="${180}" scope="page" />
<%--웹 어플리케이션에서 스코프(영역)은 총4개 page,request,session,application
    1.page영역 : Page는 따로 내장된 객체가 없기 때문에 pageContext객체를 이용하며 하나의page안에서
    입력과 출력이 모두 이뤄지며 페이지 이동을 하기엔 Page의 영역이 다른 Page에 닿지 않기때문에 다른 페이지에서
    PageContext객체를 사용할 수 없다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table align="center" border=1 >
<tr align="center" bgcolor="lightblue">
<td width="7%">아이디</td>
<td width="7%">비밀번호</td>
<td width="7%">이름</td>
<td width="7%">나이</td>
<td width="7%">키</td>
</tr>
<tr align="center">
<td>${id}</td>
<td>${pwd}</td>
<td>${name}</td>
<td>${age}</td>
<td>${height}</td>
</tr>
</table>
</body>
</html>