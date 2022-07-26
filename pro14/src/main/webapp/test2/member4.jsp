<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,sec01.exam01.*"
    isELIgnored="false"%>
    <%
    request.setCharacterEncoding("UTF-8");
    %>
    <jsp:useBean id="m1" class="sec01.exam01.MemberBean" />
    <jsp:setProperty name="m1" property="*" />
    <jsp:useBean id="membersList" class="java.util.ArrayList" />
    <%
 session.setAttribute("address", "수원시 팔달구");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table align="center" border="1">
<tr align="center" bgcolor="#99ccff">
<td width="7%"><b>아이디</b></td>
<td width="7%"><b>비일번호</b></td>
<td width="5%"><b>이름</b></td>
<td width="5%"><b>이메일</b></td>
<td width="5%"><b>주소</b></td>
</tr>
<tr align="center">
<td>${id}</td>
<td>${pwd}</td>
<td>${name}</td>
<td>${email}</td>
<td>${address}</td>
</tr>

</table>
</body>
</html>