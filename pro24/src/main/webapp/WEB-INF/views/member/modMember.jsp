<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:set var="contextPath" value="${pageContext.request.contextPath }" />
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.text_center{
text-align:center;
}
</style>
</head>
<body>
<form method="post" action="${contextPath }/mem4.do?action=updateMember">
<h1 class="text_center">수정 한번 혀봐~</h1>
<table align="center">
<tr>
<td width="200"><p align="right">아이디</p></td>
<td width="400"><input type="text" name="id" placeholder="신중하게 생각혀봐~"></td>
</tr>
<tr>
<td width="200"><p align="right">비밀번호</p></td>
<td width="400"><input type="password" name="pwd" placeholder="절대 까묵지 말어~"></td>
</tr>
<tr>
<td width="200"><p align="right">이름</p></td>
<td width="400"><input type="text" name="name"></td>
</tr>
<tr>
<td width="200"><p align="right">이메일</p></td>
<td width="400"><input type="text" name="email"></td>
</tr>
<tr>
<td width="200"><p>&nbsp;</p></td>
<td width="400"><input type="submit" value="수정하기"><input type="reset" value="다시입력"></td>
</tr>
</table>
</form>
</body>
</html>