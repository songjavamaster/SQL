<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사업자 사이드바</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js"></script>
</head>
<style>
.all{
	border: 1px solid black;
	width:250px;
	height:auto;
	float:left;	
	margin-right: 50px;
	margin-left:400px;
}
li{ 
	margin:0px 20px;
	list-style-type: none;
}
a{
	text-decoration: none;
}
.hover:hover{
	color: #ff5e62;
}
</style>
<body>
	<div style="height:250px; width:100%;">
	</div> 
<div class="all">
	<div>
		<ul> 
			<li class="icon"><i class="fa-solid fa-user" style="font-size:25px;"></i></li>
			<li class="hover"><a href="blacklist">블랙리스트 등록요청</a></li>
			<li class="hover"><a href="extendPage">사업자 연장 요청</a></li>
		</ul>
		
		<ul>
			<li class="icon"><i class="fa-solid fa-cart-shopping" style="font-size:25px;"></i></li>
			<li class="hover"><a href="sellerhotel">객실관리</a></li>
			<li class="hover"><a href="sellerMain">예약현황관리</a></li>
			<li class="hover"><a href="sellerresrevation">예약신청관리</a></li>
			<li class="hover"><a href="sellerreview">리뷰관리</a></li>
		</ul>
		
		<ul>
			<li class="icon"><i class="fa-solid fa-clipboard-list" style="font-size:25px;"></i></li>
			<li class="hover"><a href="sellerevent1">이벤트 요청</a></li>
			<li class="hover"><a href="sellerevent2">이벤트 관리 요청</a></li>
		</ul>
	</div>
</div>
</body>
</html>