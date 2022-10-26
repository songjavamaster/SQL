<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 동적인 페이지 포함 -->
<jsp:include page="/WEB-INF/views/template/sellerheader.jsp" />
<jsp:include page="/WEB-INF/views/template/sellerSide.jsp" />
<title>이벤트 연장 삭제요청</title>
<!--CSS -->
<style>
	allcontent{
			margin:5px auto;
			padding:5px auto;
			margin-left: 200px;
		}
	h4{
		margin-left:600px;
		margin-bottom:70px;
	}
</style>
<!-- JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function request(){
	if(confirm("관리자에게 이벤트연장 요청하시겠습니까?")){
	/* 매핑후 서밋 */
		alert("이벤트연장 요청을 완료했습니다.");
	} else{
	}	
}

function requestdelete(){
	if(confirm("관리자에게 이벤트삭제를 요청하시겠습니까?")){
	/* 매핑후 서밋 */
		alert("이벤트삭제 요청을 완료했습니다.");
	} else{
	}	
}
</script>
</head>
<body>
<body>
<div class="allcontent">
	<div id="title"><h4>이벤트 연장,삭제요청</h4></div>
	<div>
	<table class="table">	
	<tr>
	<th>이벤트 목록</th>
	<th>요청사유</th>
	<th>연장마감일</th>
	<th>연장요청</th>
	<th>삭제요청</th>
	</tr>
	<tr class="form">
	<td><select name="event">
	<option value="">이벤트를 선택해주세요.</option>
	<option value="db 이벤트명">이벤트명 db에서 가져오기</option>
	<option value="db 이벤트명">이벤트명 db에서 가져오기</option>
	</select></td>
	<td><textarea id="reason"/></textarea>
	<td><input type="date" id="enddate"/></td>
	<td><input type="button" id="delete" onclick="request()" value="연장요청"></td>
	<td><input type="button" id="delete" onclick="requestdelete()" value="삭제요청"></td>
	</tr>
	</table>
	</div>
</div>
</body>
</body>
</html>
<!-- 정적페이지 포함 -->
<%@ include file="/WEB-INF/views/template/footer.jsp" %>