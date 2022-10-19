<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 동적인 페이지 포함 -->
<jsp:include page="/WEB-INF/views/template/header.jsp">
	<jsp:param value="::::: 관리자모드 :::::" name="title" />
</jsp:include>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js"></script>
<style>
.adminMain-wrap {
	height: 800px;
	background-color: #E2E2E2;
	padding-top: 200px;
}

.group-btn {
	text-align: center;
}

.adminMainBtn {
	display: inline-block;
	padding: 15px 25px;
	font-size: 24px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: #fff;
	background-color: #4CAF50;
	border: none;
	border-radius: 15px;
	box-shadow: 0 9px #999;
	margin: 0 20px;
}

.adminMainBtn:hover {
	background-color: #3e8e41
}

.adminMainBtn:active {
	background-color: #3e8e41;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}

#notice_name {
	width: 250px;
	margin-bottom: 70px;
}

.all {
	border: 1px solid black;
	width: 250px;
	height: auto;
	float: left;
	margin-right: 150px;
	margin-left: 40px;
	position: fixed;
}

li {
	margin: 0px 20px;
	list-style-type: none;
}

a {
	text-decoration: none;
}
</style>
<div style="height: 300px; width: 100%;"></div>
<div class="all">
	<div>
		<ul>
			<li class="icon"><i class="fa-solid fa-user-tie"
				style="font-size: 25px;"></i>사업자 관리</li>
			<li><a href="adminsellerlist1">사업자 목록</a></li>
			<li><a href="adminHotelList">호텔 승인</a></li>
			<li><a href="adminSellerList">연장/연결승인</a></li>
			<li><a href="#">글/댓글 삭제승인</a></li>
		</ul>

		<ul>
			<li class="icon"><i class="fa-solid fa-users"
				style="font-size: 25px;"></i>회원 관리</li>
			<li><a href="#">회원 목록</a></li>
			<li><a href="#">회원 탈퇴</a></li>
			<li><a href="adminBlack">블랙리스트 승인</a></li>
		</ul>

		<ul>
			<li class="icon"><i class="fa-solid fa-champagne-glasses"
				style="font-size: 25px;"></i>이벤트 관리</li>
			<li><a href="#">이벤트 승인</a></li>
			<li><a href="#">이벤트 연장</a></li>
		</ul>
	</div>
</div>
<div class="adminMain-wrap">

	<div class="group-btn">
		<input class="adminMainBtn" type="button" value="회원관리하기"
			onclick="location.href='adminList'"> <input
			class="adminMainBtn" type="button" value="객실예약현황"
			onclick="location.href='adminReservationList'">
	</div>

</div>




<%@ include file="/WEB-INF/views/template/footer.jsp"%>