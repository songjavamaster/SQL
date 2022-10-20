	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 동적인 페이지 포함 -->
<jsp:include page="/WEB-INF/views/template/sellerheader.jsp" />
<jsp:include page="/WEB-INF/views/template/sellerSide.jsp" />
<title>사업자 블랙리스트 등록요청</title>
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
/*2.onclick="request()"<<을 실행되는 함수입니다.   */
function request(){
	if(confirm("관리자에게 블랙 리스트 등록을 요청하시겠습니까?")){
		/*예/아니오 창을 띄우는 메소드 그래서 예를 클릭하면 true가 반환돼서 if구문 안으로 들어갑니다.  */
		black.action='blacklistrequest'
		black.submit(); /*3.서밋을 하면 폼테그 안에 정보를 가지고 액션에 있는 블랙리스트리퀘스트로 간다.  */
		alert("블랙 리스트 등록요청을 완료했습니다.");
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

<!--1. input에 쓴 값을 보내기위해서 form으로 감싼 id=black 아래쪽에 onclick="request()" 위쪽에 함수(black.action이랑
black.submit)를 실행하기 위한 메소드  앞에있는 black이 아까 폼으로 감싼 id명-->
<body>
<form id="black" method="post">
<div class="allcontent">
	<div id="title"><h4>블랙 리스트 등록요청</h4></div>
	<div><input type="button" value="요청양식 추가하기" onclick="newform()" style="margin-left:500px;"/> 
		<input type="button" value="요청양식 삭제하기" onclick="deleteform()"/>
	<table class="table">	
	<tr>
	<th>아이디</th>
	<th>등록요청 사유</th>
	<th>등록요청</th>
	</tr>
	<tr class="form">
	<td><input type="text" id="userid" name="userid"/></td>
	<td><input type="text" id="reason"  name="reason"/></td>
	<td><input type="button" id="delete" onclick="request()" value="등록요청"></td>
	<td><input type="button" id="reset" onclick="request()" value="등록취소"></td>
	</tr>
	</table>
	</div>
</div>
</form>
</body>
</html>
<!-- 정적페이지 포함 -->
<%@ include file="/WEB-INF/views/template/footer.jsp" %>