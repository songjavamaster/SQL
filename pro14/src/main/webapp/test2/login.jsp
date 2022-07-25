<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="result.jsp">
아이디: <input type="text" size=20 name="userID"  /><br>
비밀번호: <input type="password" size=20  name="userPW" /><br>
<input type="submit" value="로그인" /> <input type="reset" value="다시입력" />
</form>
<br><br>
<a href="${pageContext.request.contextPath}/test2/memberForm.jsp">회원가입하기</a>
</body>
</html>