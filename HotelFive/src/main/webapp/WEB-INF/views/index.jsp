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
	margin-top: 70px;
	margin-left: 380px;
	margin-bottom: 100px;
	display: flex;
}

#box1 {
	height: 100%;
	margin-top: 5px;
	display: flex;
	flex: 1;
	margin-left: 15px;
	box-sizing: border-box;
}

.text {
	background-color: blue;
	padding-left: 10px;
	height: 100px;
}

.text>p {
	margin-top: 0px;
}

.text>h4 {
	margin: 0px;
}

/*-------------------------------예약하기 버튼-------------------------------*/
a.btn {
	list-style-type: none;
	display: block;
	background: red;
	color: green;
	position: relative;
	text-transform: uppercase;
	letter-spacing: 0.1em;
	text-align: center;
	padding: 5px;
	transition: 250ms;
}

a.btn:hover {
	background: yellow;
	transition: 100ms;
}

.card {
	width: 100%;
}
/*-------------------------------호텔 사진-------------------------------*/
.header {
	width: 100%;
	height: 250px;
	background-image: url("https://i.ibb.co/8dkNmbD/hotel1.png");
}

#ss {
	list-style-type: none;
}

#box2 {
	height: 100%;
	margin-top: 5px;
	display: flex;
	flex: 1;
	margin-left: 15px;
	box-sizing: border-box;
}

.text {
	background-color: blue;
	padding-left: 10px;
	height: 100px;
}

.text>p {
	margin-top: 0px;
}

.text>h4 {
	margin: 0px;
}

/*-------------------------------예약하기 버튼-------------------------------*/
a.btn {
	list-style-type: none;
	display: block;
	background: red;
	color: green;
	position: relative;
	text-transform: uppercase;
	letter-spacing: 0.1em;
	text-align: center;
	padding: 5px;
	transition: 250ms;
}

a.btn:hover {
	background: yellow;
	transition: 100ms;
}

.card {
	width: 100%;
}
/*-------------------------------호텔 사진-------------------------------*/
.header {
	width: 100%;
	height: 250px;
	background-image: url("https://i.ibb.co/8dkNmbD/hotel1.png");
}

#ss {
	list-style-type: none;
}

#box3 {
	height: 100%;
	margin-top: 5px;
	display: flex;
	flex: 1;
	margin-left: 15px;
	box-sizing: border-box;
}

.text {
	background-color: blue;
	padding-left: 10px;
	height: 100px;
}

.text>p {
	margin-top: 0px;
}

.text>h4 {
	margin: 0px;
}

/*-------------------------------예약하기 버튼-------------------------------*/
a.btn {
	list-style-type: none;
	display: block;
	background: red;
	color: green;
	position: relative;
	text-transform: uppercase;
	letter-spacing: 0.1em;
	text-align: center;
	padding: 5px;
	transition: 250ms;
}

a.btn:hover {
	background: yellow;
	transition: 100ms;
}

.card {
	width: 100%;
}
/*-------------------------------호텔 사진-------------------------------*/
.header {
	width: 100%;
	height: 250px;
	background-image: url("https://i.ibb.co/8dkNmbD/hotel1.png");
}

#ss {
	list-style-type: none;
}

/* -------------------------------두번째 줄 호텔 박스------------------------------- */
.container1 {
	width: 60%;
	height: 40%;
	margin-top: 70px;
	margin-left: 380px;
	margin-bottom: 100px;
	display: flex;
}

#box4 {
	height: 100%;
	margin-top: 5px;
	display: flex;
	flex: 1;
	margin-left: 15px;
	box-sizing: border-box;
}

.text {
	background-color: blue;
	padding-left: 10px;
	height: 100px;
}

.text>p {
	margin-top: 0px;
}

.text>h4 {
	margin: 0px;
}

/*-------------------------------예약하기 버튼-------------------------------*/
a.btn {
	list-style-type: none;
	display: block;
	background: red;
	color: green;
	position: relative;
	text-transform: uppercase;
	letter-spacing: 0.1em;
	text-align: center;
	padding: 5px;
	transition: 250ms;
}

a.btn:hover {
	background: yellow;
	transition: 100ms;
}

.card {
	width: 100%;
}
/*-------------------------------호텔 사진-------------------------------*/
.header {
	width: 100%;
	height: 250px;
	background-image: url("https://i.ibb.co/8dkNmbD/hotel1.png");
}

#ss {
	list-style-type: none;
}

#box5 {
	height: 100%;
	margin-top: 5px;
	display: flex;
	flex: 1;
	margin-left: 15px;
	box-sizing: border-box;
}

.text {
	background-color: blue;
	padding-left: 10px;
	height: 100px;
}

.text>p {
	margin-top: 0px;
}

.text>h4 {
	margin: 0px;
}

/*-------------------------------예약하기 버튼-------------------------------*/
a.btn {
	list-style-type: none;
	display: block;
	background: red;
	color: green;
	position: relative;
	text-transform: uppercase;
	letter-spacing: 0.1em;
	text-align: center;
	padding: 5px;
	transition: 250ms;
}

a.btn:hover {
	background: yellow;
	transition: 100ms;
}

.card {
	width: 100%;
}
/*-------------------------------호텔 사진-------------------------------*/
.header {
	width: 100%;
	height: 250px;
	background-image: url("https://i.ibb.co/8dkNmbD/hotel1.png");
}

#ss {
	list-style-type: none;
}

#box6 {
	height: 100%;
	margin-top: 5px;
	display: flex;
	flex: 1;
	margin-left: 15px;
	box-sizing: border-box;
}

.text {
	background-color: blue;
	padding-left: 10px;
	height: 100px;
}

.text>p {
	margin-top: 0px;
}

.text>h4 {
	margin: 0px;
}

/*-------------------------------예약하기 버튼-------------------------------*/
a.btn {
	list-style-type: none;
	display: block;
	background: red;
	color: green;
	position: relative;
	text-transform: uppercase;
	letter-spacing: 0.1em;
	text-align: center;
	padding: 5px;
	transition: 250ms;
}

a.btn:hover {
	background: yellow;
	transition: 100ms;
}

.card {
	width: 100%;
}
/*-------------------------------호텔 사진-------------------------------*/
.header {
	width: 100%;
	height: 250px;
	background-image: url("https://i.ibb.co/8dkNmbD/hotel1.png");
}

#ss {
	list-style-type: none;
}

.aside {	
	background: white;
	padding: 24px;
	font-size: 1.2rem;
	color: dimgray;
	list-style: none;
	padding: 0;
	text-decoration: none;
	border: 1px solid black;
	position:fixed;
	left:1700px;
	top:500px;
}
ul,li{
list-style-type: none;
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
	<!-- -------------------------------배너 슬라이더------------------------------- -->
	<div class="banner-slider">배너 슬라이더</div>

	<!-- -------------------------------첫번째 컨테이너 박스------------------------------- -->
	<div class="container">
		<!-- -------------------------------첫번째 호텔박스------------------------------- -->
		<div id="box1">
			<div class="card">
				<div class="header">
					<div class="icon">
						<a href="#"><i class="fa fa-heart-o"></i></a>
					</div>
				</div>
				<div class="text">
					<h4>신세계 호텔</h4>
					<i class="fa fa-clock-o"> 15 Mins</i> <i class="fa fa-users">
						Serves 2</i>
					<div class="stars">
						<!-- -------------------------------별점 테러하는곳------------------------------- -->
						<li id="ss"><a href="#"><i class="fa fa-star"></i></a> <a
							href="#"><i class="fa fa-star"></i></a> <a href="#"><i
								class="fa fa-star"></i></a> <a href="#"><i class="fa fa-star"></i></a>
							<a href="#"><i class="fa fa-star-o"></i></a></li>
					</div>
					<p class="info">130,000원</p>
				</div>
				<a href="#" class="btn">예약하기</a>
			</div>
		</div>
		<!-- -------------------------------두번째 호텔박스------------------------------- -->
		<div id="box2">
			<div class="card">
				<div class="header">
					<div class="icon">
						<a href="#"><i class="fa fa-heart-o"></i></a>
					</div>
				</div>
				<div class="text">
					<h4>신세계 호텔</h4>
					<i class="fa fa-clock-o"> 15 Mins</i> <i class="fa fa-users">
						Serves 2</i>
					<div class="stars">
						<!-- -------------------------------별점 테러하는곳------------------------------- -->
						<li id="ss"><a href="#"><i class="fa fa-star"></i></a> <a
							href="#"><i class="fa fa-star"></i></a> <a href="#"><i
								class="fa fa-star"></i></a> <a href="#"><i class="fa fa-star"></i></a>
							<a href="#"><i class="fa fa-star-o"></i></a></li>
					</div>
					<p class="info">130,000원</p>
				</div>
				<a href="#" class="btn">예약하기</a>
			</div>
		</div>
		<!-- -------------------------------세번째 호텔박스------------------------------- -->
		<div id="box3">
			<div class="card">
				<div class="header">
					<div class="icon">
						<a href="#"><i class="fa fa-heart-o"></i></a>
					</div>
				</div>
				<div class="text">
					<h4>신세계 호텔</h4>
					<i class="fa fa-clock-o"> 15 Mins</i> <i class="fa fa-users">
						Serves 2</i>
					<div class="stars">
						<!-- -------------------------------별점 테러하는곳------------------------------- -->
						<li id="ss"><a href="#"><i class="fa fa-star"></i></a> <a
							href="#"><i class="fa fa-star"></i></a> <a href="#"><i
								class="fa fa-star"></i></a> <a href="#"><i class="fa fa-star"></i></a>
							<a href="#"><i class="fa fa-star-o"></i></a></li>
					</div>
					<p class="info">130,000원</p>
				</div>
				<a href="#" class="btn">예약하기</a>
			</div>
		</div>
	</div>

	<div class="container1">
		<!-- -------------------------------네번째 호텔박스------------------------------- -->
		<div id="box4">
			<div class="card">
				<div class="header">
					<div class="icon">
						<a href="#"><i class="fa fa-heart-o"></i></a>
					</div>
				</div>
				<div class="text">
					<h4>신세계 호텔</h4>
					<i class="fa fa-clock-o"> 15 Mins</i> <i class="fa fa-users">
						Serves 2</i>
					<div class="stars">
						<!-- -------------------------------별점 테러하는곳------------------------------- -->
						<li id="ss"><a href="#"><i class="fa fa-star"></i></a> <a
							href="#"><i class="fa fa-star"></i></a> <a href="#"><i
								class="fa fa-star"></i></a> <a href="#"><i class="fa fa-star"></i></a>
							<a href="#"><i class="fa fa-star-o"></i></a></li>
					</div>
					<p class="info">130,000원</p>
				</div>
				<a href="#" class="btn">예약하기</a>
			</div>
		</div>
		<!-- -------------------------------다섯번째 호텔박스------------------------------- -->
		<div id="box5">
			<div class="card">
				<div class="header">
					<div class="icon">
						<a href="#"><i class="fa fa-heart-o"></i></a>
					</div>
				</div>
				<div class="text">
					<h4>신세계 호텔</h4>
					<i class="fa fa-clock-o"> 15 Mins</i> <i class="fa fa-users">
						Serves 2</i>
					<div class="stars">
						<!-- -------------------------------별점 테러하는곳------------------------------- -->
						<li id="ss"><a href="#"><i class="fa fa-star"></i></a> <a
							href="#"><i class="fa fa-star"></i></a> <a href="#"><i
								class="fa fa-star"></i></a> <a href="#"><i class="fa fa-star"></i></a>
							<a href="#"><i class="fa fa-star-o"></i></a></li>
					</div>
					<p class="info">130,000원</p>
				</div>
				<a href="#" class="btn">예약하기</a>
			</div>
		</div>
		<!-- -------------------------------여섯번째 호텔박스------------------------------- -->
		<div id="box6">
			<div class="card">
				<div class="header">
					<div class="icon">
						<a href="#"><i class="fa fa-heart-o"></i></a>
					</div>
				</div>
				<div class="text">
					<h4>신세계 호텔</h4>
					<i class="fa fa-clock-o"> 15 Mins</i> <i class="fa fa-users">
						Serves 2</i>
					<div class="stars">
						<!-- -------------------------------별점 테러하는곳------------------------------- -->
						<li id="ss"><a href="#"><i class="fa fa-star"></i></a> <a
							href="#"><i class="fa fa-star"></i></a> <a href="#"><i
								class="fa fa-star"></i></a> <a href="#"><i class="fa fa-star"></i></a>
							<a href="#"><i class="fa fa-star-o"></i></a></li>
					</div>
					<p class="info">130,000원</p>
				</div>
				<a href="#" class="btn">예약하기</a>
			</div>
		</div>
	</div>
	<!-- <div class="aside">
		<nav>
			<h2>목차</h2>
			<ul>
				<li><a href="/">머리말</a></li>
				<li><a href="/">HTML</a></li>
				<li><a href="/">CSS</a></li>
				<li><a href="/">HTTP</a></li>
				<li><a href="/">맺음말</a></li>
			</ul>
		</nav>
	</div> -->
</div>
<!-- 정적인 페이지 포함 -->
<%@ include file="/WEB-INF/views/template/footer.jsp"%>