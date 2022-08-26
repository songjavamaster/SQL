<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, java.io.*"
	isELIgnored="false"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지섭 - 로그인창</title>
<c:choose>
	<c:when test="${result == 'loginFailed' }">
		<script type="text/javascript">
			window.onload = function() {
				alert("아이디나 비밀번호가 틀립니다. 다시 로그인 하세요!");
			}
		</script>
	</c:when>
</c:choose>
</head>
<body>
	<form method="post" action="${contextPath}/member/login.do">
      <table border="1" align=center width="100%">
         <tr>
            <td>아이디</td>
            <td>비밀번호</td>
         </tr>
         <tr>
         
            <td>
            <input type="text" name="id" size="10">
            </td>
            <td>
            <input type="password" name="pwd" size="10">
            </td>
         </tr>
         <tr>
            <td colspan=2>
            <input type="submit" value="로그인"> 
            <input type="reset" value="다시입력">
            </td>
         </tr>
      </table>
   </form>

</body>
</html>