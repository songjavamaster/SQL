<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,sec01.exam01.*"
	isELIgnored="false"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="m1" class="sec01.exam01.MemberBean" />
<jsp:setProperty name="m1" property="*" />
<jsp:useBean id="membersList" class="java.util.ArrayList" />
<jsp:useBean id="membersMap" class="java.util.HashMap" />
<%
membersMap.put("id", "park2");
membersMap.put("pwd", "4321");
membersMap.put("name", "박지성");
membersMap.put("email", "park@test.com");
MemberBean m2 = new MemberBean("son", "1234", "손흥밍", "son@test.com");
membersList.add(m1);
membersList.add(m2);
membersMap.put("membersList", membersList);
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
			<td width="20%"><b>아이디</b></td>
			<td width="20%"><b>비일번호</b></td>
			<td width="20%"><b>이름</b></td>
			<td width="20%"><b>이메일</b></td>
		</tr>
		<tr align=center>
			<td>${membersMap.id }</td>
			<td>${membersMap.pwd }</td>
			<td>${membersMap.name }</td>
			<td>${membersMap.email }</td>
		<tr align=center>
			<td>${membersMap.membersList[0].id}</td>
			<td>${membersMap.membersList[0].pwd}</td>
			<td>${membersMap.membersList[0].name}</td>
			<td>${membersMap.membersList[0].email}</td>
		</tr>
		<tr align=center>
			<td>${membersMap.membersList[1].id}</td>
			<td>${membersMap.membersList[1].pwd}</td>
			<td>${membersMap.membersList[1].name}</td>
			<td>${membersMap.membersList[1].email}</td>
		</tr>
	</table>
</body>

</body>
</html>