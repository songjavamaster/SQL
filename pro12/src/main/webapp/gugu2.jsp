<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int dan = Integer.parseInt(request.getParameter("dan"));
			
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" width='800' >
		<tr align="center" bgcolor="#ffff66">
			<td colspan='2'><%=dan%>단 출력</td>
		</tr>
	<%
for(int i=1; i<=dan; i++){
%>
<% for(int k=1; k<10; k++){ %>
	<%
if(i%2==1){
%>
	<tr align='center' bgcolor="#aabb66">
			<td width='400'><%=i%> * <%=k %>
			</td>
			<td width='400'>
			<%=i*k  %>
			</td>
	</tr>
	
	
		<%
}else{
%>
	
	<tr align='center' bgcolor="#ccdd66">
			<td width='400'><%=i%> * <%=k %>
			</td>
			<td width='400'>
			<%=i*k  %>
			</td>
	</tr>
		<%
	}
}
}
%>

</table>
	
</body>
</html>