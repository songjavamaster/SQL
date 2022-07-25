<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*,sec01.exam01.*"
   pageEncoding="UTF-8" 
    isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%request.setCharacterEncoding("UTF-8");
    List membersList = new ArrayList();
    MemberBean m1 = new MemberBean("song","1234","송인재","song@test.com");
    MemberBean m2 = new MemberBean("song","4321","송지섭","song@test.com");
    MemberBean m3 = new MemberBean("oh","1212","오서준","oh@test.com");
    membersList.add(m1);
    membersList.add(m2);
    membersList.add(m3);
    %>
    <c:set var="membersList" value="<%=membersList %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" align="center">;
<tr align="center" bgcolor="Lightblue">
<td width="7%"><b>아이디</b></td>
<td width="7%"><b>비밀번호</b></td>
<td width="5%"><b>이름</b></td>
<td width="2%"><b>이메일</b></td>
</tr>
<c:forEach var="i" begin="0" end="2" step="1">
<tr align="center">
<td>${membersList[i].id}</td>
<td>${membersList[i].pwd}</td>
<td>${membersList[i].name}</td>
<td>${membersList[i].email}</td>
</tr>
</c:forEach>
</table>
</body>
</html>