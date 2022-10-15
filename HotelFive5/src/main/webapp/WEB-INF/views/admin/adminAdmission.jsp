<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 동적인 페이지 포함 -->
<jsp:include page="/WEB-INF/views/template/sellerheader.jsp" />
<jsp:include page="/WEB-INF/views/admin/adminside.jsp" />
<title>사업자 블랙리스트 승인관리</title>
</head>
<!-- CSS -->
<style>
	allcontent{
		margin:5px auto;
		padding:5px auto;
		margin-left: 400px;
	}
 	h4{
		margin-left:100px;
	}


</style>

<!-- JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
//등록요청 버튼 클릭시 
function request(){
	if(confirm("블랙 리스트 승인을 하시겠습니까?")){
	/* 	f.action='blacklistrequest'
		f.submit(); */
		alert("블랙 리스트 승인을 완료했습니다.");
	} else{
	}	
}

function request1(){
	if(confirm("블랙 리스트 요청 거절 하시겠습니까?")){
	/* 	f.action='blacklistrequest'
		f.submit(); */
		alert("블랙 리스트 거절을 완료했습니다.");
	} else{
	}	
}

//요청양식 추가
function newform(){
		 $('.table').append (                        
         '<tr class="newform"><td><input type="text" id="userid"/></td><td><input type="text" id="reason"/></td><td><input type="button" id="delete" onclick="request()" value="등록요청"/></td></tr>'
         );	
}

 //요청양식 삭제
function deleteform(){
		 $('.newform').remove();   
} 

</script>
<body>
<div class="allcontent">
	<div id="title"><h4>블랙 리스트 관리</h4></div>
	<table class="table">	
	<tr>
	<th>아이디</th>
	<th>등록요청 사유</th>
	
	</tr>
	<tr class="form">
	<td><input type="text" id="userid"/></td>
	<td><input type="text" id="reason"/></td>
	<td><input type="button" id="delete" onclick="request()" value="승인"></td>
	<td><input type="button" id="delete" onclick="request1()" value="거절"></td>
	</tr>
	</table>
	</div>
</div>
</body>
</html>
<!-- 정적페이지 포함 -->
<%@ include file="/WEB-INF/views/template/footer.jsp" %>