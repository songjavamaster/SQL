<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>

/* 	.main{
		background-image: url(resources/main.jpg);
		height: 800px;	
	} */

/*#myVideo {
     position: fixed;
     right: 0;
      bottom: 0;
     min-width: 100%;
     min-height: 100%;
   }*/
.reservation-box {
	position: fixed;
	display: inline-block;
	/* margin: 300px 400px; */
	border: 1px solid black;
	padding: 5px;
	background: black;
	top: 23%;
	left: 25%;
	width: 50%;
}

.reservation-box-form {
	background: white;
	width: 100%;
	margin: 0;
	display: flex;
}

.footer-wrap {
	position: fixed;
	bottom: 0;
}

#reservation-box-checkIn-div {
	width: 40%;
}

#reservation-box-checkOut-div {
	width: 40%;
}

#reservation-box-selectBtn-div {
	width: 20%;
	text-align: center;
}

#reservation-box-checkIn {
	width: 100%;
	border: none;
	text-align: center;
	font-size: 16px;
}

#reservation-box-checkOut {
	width: 100%;
	border: none;
	text-align: center;
	font-size: 16px;
}

#reservation-box-checkIn:focus {
	outline: none;
}

#reservation-box-checkOut:focus {
	outline: none;
}

#reservation-box-selectBtn {
	border: none;
	margin: auto;
	width: 100%;
	height: 100%;
	background: black;
	color: white;
}

.banner-slider {
	border: 1px solider black;
	width: 70%;
	height: 25%;
	margin-top: 300px;
	margin-left: 300px;
	background-color: lightblue;
}

.container {
	width: 60%;
	height: 40%;
	border: 1px solid black;
	margin-top: 70px;
	margin-left: 380px;
	margin-bottom: 100px;
	display: flex;
}

#box1 {
	border: 1px solid red;
	height: 95%;
	margin-top: 12px;
	display: flex;
	flex: 1;
	margin-left: 15px;
	box-sizing: border-box;
}
.text{
padding-left: 10px;
}

a.btn {
	list-style-type:none;
	display: block;
	background: red;
	color: green;
	position: relative;
	text-transform: uppercase;
	letter-spacing: 0.1em;
	text-align: center;
	padding: 10px;
	transition: 250ms;
}

a.btn:hover {
	background: yellow;
	transition: 100ms;
}

.card {
	width: 100%;
	background: green;
	border: 1px solid black;
	background-size: cover;
}

.header {
	width: 100%;
	height: 167px;
	background-image: url("https://i.ibb.co/8dkNmbD/hotel1.png");
}
#ss{
list-style-type: none;
}

#box2 {
	border: 1px solid blue;
	height: 95%;
	margin-top: 12px;
	display: flex;
	flex: 1;
	box-sizing: border-box;
	margin-left: 15px;
}

#box3 {
	border: 1px solid green;
	height: 95%;
	margin-top: 12px;
	display: flex;
	flex: 1;
	box-sizing: border-box;
	margin-left: 15px;
	margin-right: 15px;
}

.container1 {
	width: 60%;
	height: 40%;
	border: 1px solid black;
	margin-top: 70px;
	margin-left: 380px;
	margin-bottom: 100px;
	display: flex;
}

#box4 {
	border: 1px solid red;
	height: 95%;
	margin-top: 12px;
	display: flex;
	flex: 1;
	margin-left: 15px;
	box-sizing: border-box;
}

#box5 {
	border: 1px solid blue;
	height: 95%;
	margin-top: 12px;
	display: flex;
	flex: 1;
	margin-left: 15px;
	box-sizing: border-box;
}

#box6 {
	border: 1px solid green;
	height: 95%;
	margin-top: 12px;
	display: flex;
	flex: 1;
	box-sizing: border-box;
	margin-left: 15px;
	margin-right: 15px;
}
</style>
<script>
	var today = new Date();
	function fn_selectReservation(f) {

		if (f.rCheckIn.value == '' || f.rCheckOut.value == '') {
			alert('체크인 날짜와 체크아웃 날짜를 선택해 주세요.');
			f.rCheckIn.focus();
		} else if (f.rCheckIn.value > f.rCheckOut.value) {
			alert('체크인 날짜보다 체크아웃 날짜가 빠를 수 없습니다.');
			f.rCheckOut.focus();
		} else if (new Date(f.rCheckIn.value) < today) {
			alert('지날 날짜와 당일 예약은 불가능합니다.');
			f.rCheckIn.focus();

		} else if (f.rCheckIn.value == f.rCheckOut.value) {
			alert('체크인 날짜와 체크아웃 날짜가 같을 수 없습니다.');
			f.rCheckOut.focus();
		} else {
			f.action = "selectBookable";
			f.submit();
		}

	}
</script>

<!-- 동적인 페이지 포함 -->
<jsp:include page="/WEB-INF/views/template/header.jsp" />

<!--  <video autoplay muted loop id="myVideo">
  <source src="resources/Sea.mp4" type="video/mp4">
</video>-->


<div class="main">
	<div class="reservation-box">
		<form class="reservation-box-form">
			<div id="reservation-box-checkIn-div">
				체크인<br /> <input id="reservation-box-checkIn" type="date"
					name="rCheckIn" />
			</div>
			<div id="reservation-box-checkOut-div">
				체크아웃<br /> <input id="reservation-box-checkOut" type="date"
					name="rCheckOut" />
			</div>
			<div id="reservation-box-selectBtn-div">
				<input id="reservation-box-selectBtn" type="button" value="객실검색"
					onclick="fn_selectReservation(this.form)">
			</div>
		</form>
	</div>

	<div class="banner-slider">배너 슬라이더</div>

	<div class="container">
		<div id="box1">
			<div class="card">
				<div class="header">
					<div class="icon">
						<a href="#"><i class="fa fa-heart-o"></i></a>
					</div>
				</div>
				<div class="text">
					<h3>신세계 호텔</h3>
					<i class="fa fa-clock-o"> 15 Mins</i> <i class="fa fa-users">
						Serves 2</i>

					<div class="stars">
						<li id="ss"><a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
								class="fa fa-star"></i></a> <a href="#"><i class="fa fa-star"></i></a>
							<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
								class="fa fa-star-o"></i></a></li>
					</div>
					<p class="info">130,000원</p>
				</div>
				<a href="#" class="btn">예약하기</a>
			</div>
		</div>
		<div id="box2"></div>
		<div id="box3"></div>
	</div>

	<div class="container1">
		<div id="box4"></div>
		<div id="box5"></div>
		<div id="box6"></div>
	</div>
</div>
<!-- 정적인 페이지 포함 -->
<%@ include file="/WEB-INF/views/template/footer.jsp"%>