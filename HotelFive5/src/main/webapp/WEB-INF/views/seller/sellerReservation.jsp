<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 동적인 페이지 포함 -->
<jsp:include page="/WEB-INF/views/template/sellerheader.jsp" />
<jsp:include page="/WEB-INF/views/template/sellerSide.jsp" />
<title>사업자 예약관리</title>
</head>
<script>
	$(document).ready(function() {
		$(".allr").css("display", "inline"); //allr 활성화
		$(".approvalr").css("display", "none"); 
		$(".cancelr").css("display", "none"); 
		$(".approvaldoner").css("display", "none");
	});
	function allr(){
		$(".allr").css("display", "inline"); //allr 활성화
		$(".approvalr").css("display", "none"); 
		$(".cancelr").css("display", "none"); 
		$(".approvaldoner").css("display", "none");
	}
	function approvalr(){
		$(".allr").css("display", "none"); 
		$(".approvalr").css("display", "inline"); //approvalr 활성화
		$(".cancelr").css("display", "none"); 
		$(".approvaldoner").css("display", "none");
	}
	function cancelr(){
		$(".allr").css("display", "none"); 
		$(".approvalr").css("display", "none"); 
		$(".cancelr").css("display", "inline"); //cancelr 활성화
		$(".approvaldoner").css("display", "none");
	}
	function approvaldoner(){
		$(".allr").css("display", "none"); 
		$(".approvalr").css("display", "none"); 
		$(".cancelr").css("display", "none"); 
		$(".approvaldoner").css("display", "inline");//approvaldoner 활성화
	}
</script>
<style>
   table{border-collapse: collapse;width: 900px; text-align:center;}
   tr th {background: #FEE3EC;}
   td { padding:10px;border-bottom: 1px solid lightgray;}
	allcontent{
		margin:5px auto;
		padding:5px auto;
		margin-left: 200px;
		/* text-align: center; */
	}
	h4{
		margin-left:600px;
	}
	.contentul .contentli{
		display: inline-block;
	}
	.contentli{
		list-style: none;
	}
	.contentli:hover{
		color: #ff5e62;
	}
</style>
<body>
	<div class="allcontent">
	
	<div id="title"><h4>호텔 객실 예약승인 페이지</h4></div>
	
	<div class="nav">
		<ul class="contentul">
			<li class="contentli" onclick="allr()">전체</li>
			<li class="contentli" onclick="approvalr()">예약승인</li>
			<li class="contentli" onclick="cancelr()">취소승인</li>
			<li class="contentli" onclick="approvaldoner()">예약승인완료</li>
		</ul>
	</div>
	
	<div class="allr">
	 <table>
	 	<tr>
	 	<th>예약번호</th>
		<th>객실이름</th>	 	
		<th>회원번호</th>
		<th>비회원전화번호</th>
		<th>예약인원</th>
		<th>결제금액</th>
		<th>입실일</th>
		<th>퇴실일</th>
	 	</tr>
	 	<tr>
	 	<td>디비에서 값을 받아와야해여 ^^</td>
	 	</tr>
	 </table>
	</div>
	
	<div class="approvalr">
	 <table>
	 	<tr>
	 	<th>예약번호</th>
		<th>객실이름</th>	 	
		<th>회원번호</th>
		<th>비회원전화번호</th>
		<th>예약인원</th>
		<th>결제금액</th>
		<th>입실일</th>
		<th>퇴실일</th>
	 	</tr>
	 	<tr>
	 	<td>디비에서 값을 받아와야해여 ^^</td>
	 	</tr>
	 </table>
	</div>
	
	<div class="cancelr">
	 <table>
	 	<tr>
	 	<th>예약번호</th>
		<th>객실이름</th>	 	
		<th>회원번호</th>
		<th>비회원전화번호</th>
		<th>예약인원</th>
		<th>결제금액</th>
		<th>입실일</th>
		<th>퇴실일</th>
	 	</tr>
	 	<tr>
	 	<td>디비에서 값을 받아와야해여 ^^</td>
	 	</tr>
	 </table>	
	</div>
	
	<div class="approvaldoner">
	 <table>
	 	<tr>
	 	<th>예약번호</th>
		<th>객실이름</th>	 	
		<th>회원번호</th>
		<th>비회원전화번호</th>
		<th>예약인원</th>
		<th>결제금액</th>
		<th>입실일</th>
		<th>퇴실일</th>
	 	</tr>
	 	<tr>
	 	<td>디비에서 값을 받아와야해여 ^^</td>
	 	</tr>
	 </table>
	</div>
	</div>
</body>
</html>
<!-- 정적페이지 포함 -->
<%@ include file="/WEB-INF/views/template/footer.jsp" %>