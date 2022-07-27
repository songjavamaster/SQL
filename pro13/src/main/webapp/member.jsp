<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, sec01.exam01.*"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String email = request.getParameter("email");
MemberBean m = new MemberBean(id, pwd, name, email);
MemberDAO memberDAO = new MemberDAO();
memberDAO.addMember(m);
List memberList = memberDAO.listMembers();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table align="center" width="100%">
		<tr align="center" bgcolor=lightblue>
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="7%">이름</td>
			<td width="7%">이메일</td>
			<td width="7%">가입일</td>
		</tr>
		<%
		if (memberList.size() == 0) {
		%>
		<tr>
			<td colspan="5">
				<p align="center">
					<b><span style="font-size: 9pt;">등록된 회원이 없습니다.</span></b>
				</p>
			</td>
		</tr>
		<%
		} else {
		for (int i = 0; i < memberList.size(); i++) {
			MemberBean bean = (MemberBean) memberList.get(i);
		%>
		<tr align="center">
			<td><%=bean.getId()%></td>
			<td><%=bean.getPwd()%></td>
			<td><%=bean.getName()%></td>
			<td><%=bean.getEmail()%></td>
			<td><%=bean.getJoinDate()%></td>
		</tr>
		<%
		}
		}
		%>
	</table>
</body>
</html>