<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
<title>회원가입창</title>
<style type="text/css">
	.text_center{
		text-align: center;
	}
</style>
</head>
<body>
	<form action="${contextPath}/test/memberInfo.do" method="post" name="frmLogin">
	<h1 class="text_center">회원 가입창</h1>
	<table align="center">
		<tr>
			<td width="200"><p align="right">아이디</td>
			<td width="400"><input type="text" name="id"></td>
		</tr>
		<tr>
			<td width="200"><p align="right">비밀번호</td>
			<td width="400"><input type="password" name="pwd"></td>
		</tr>
		<tr>
			<td width="200"><p align="right">이름</td>
			<td width="400"><input type="text" name="name"></td>
		</tr>
		<tr>
			<td width="200"><p align="right">이메일</td>
			<td width="400"><input type="text" name="email"></td>
		</tr>
		<tr>
			<td width="200">&nbsp;</td>
			<td width="400"><input type="submit" value="가입하기"><input type="reset" value="다시입력"></td>
		</tr>
		
		
	</table>
	</form>
</body>
</html>