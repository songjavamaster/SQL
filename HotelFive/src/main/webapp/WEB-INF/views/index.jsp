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
/*---------------------------------슬라이더-------------------------------*/
.slide {
  /* layout */
  display: flex;
  flex-wrap: nowrap;
  /* 컨테이너의 내용물이 컨테이너 크기(width, height)를 넘어설 때 보이지 않도록 하기 위해 hidden을 준다. */
  overflow: hidden;

  /* position */
  /* slide_button의 position absolute가 컨테이너 안쪽에서 top, left, right offset이 적용될 수 있도록 relative를 준다. (기본값이 static인데, static인 경우 그 상위 컨테이너로 나가면서 현재 코드에선 html을 기준으로 offset을 적용시키기 때문) */
  position: relative;

  /* size */
  width: 100%;
}
.slide_item {
  /* layout */
  display: flex;
  align-items: center;
  justify-content: center;

  /* position - 버튼 클릭시 left offset값을 적용시키기 위해 */
  position: relative;
  left: 0px;

  /* size */
  width: 100%;
  height: 300px;
  /* flex item의 flex-shrink는 기본값이 1이므로 컨테이너 크기에 맞게 줄어드는데, 슬라이드를 구현할 것이므로 줄어들지 않도록 0을 준다. */
  flex-shrink: 0;

  /* transition */
  transition: left 0.15s;
}
.slide_button {
  /* layout */
  display: flex;
  justify-content: center;
  align-items: center;

  /* position */
  position: absolute;
  /* 버튼이 중앙에 위치하게 하기위해 계산 */
  top: calc(50% - 16px);

  /* size */
  width: 32px;
  height: 32px;

  /* style */
  border-radius: 100%;
  background-color: #cccc;
  cursor: pointer;
}

.slide_prev_button {
  left: 10px;
}
.slide_next_button {
  right: 10px;
}

/* 각 슬라이드가 변경되는 것을 시각적으로 확인하기 쉽도록 각 슬라이드별 색상 적용 */
.slide_item:nth-child(1) {
  background-color: darkgoldenrod;
}
.slide_item:nth-child(2) {
  background-color: aqua;
}
.slide_item:nth-child(3) {
  background-color: blueviolet;
}
.slide_item:nth-child(4) {
  background-color: burlywood;
}
.slide_item:nth-child(5) {
  background-color: cornflowerblue;
}

/* 페이지네이션 스타일 */
ul,
li {
  list-style-type: none;
  padding: 0;
  margin: 0;
}
.slide_pagination {
  /* layout */
  display: flex;
  gap: 5px;

  /* position */
  position: absolute;
  bottom: 0;
  /* left:50%, translateX(-50%)를 하면 가로 가운데로 위치시킬 수 있다. */
  left: 50%;
  transform: translateX(-50%);
}
.slide_pagination > li {
  /* 현재 슬라이드가 아닌 것은 투명도 부여 */
  color: #7fb5ff88;
  cursor: pointer;
  font-size: 25px;
}
.slide_pagination > li.active {
  /* 현재 슬라이드 색상은 투명도 없이 */
  color: #7fb5ff;
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
<script>
const slide = document.querySelector(".slide");
let slideWidth = slide.clientWidth;

// 버튼 엘리먼트 선택하기
const prevBtn = document.querySelector(".slide_prev_button");
const nextBtn = document.querySelector(".slide_next_button");

// 슬라이드 전체를 선택해 값을 변경해주기 위해 슬라이드 전체 선택하기
const slideItems = document.querySelectorAll(".slide_item");
// 현재 슬라이드 위치가 슬라이드 개수를 넘기지 않게 하기 위한 변수
const maxSlide = slideItems.length;

// 버튼 클릭할 때 마다 현재 슬라이드가 어디인지 알려주기 위한 변수
let currSlide = 1;

// 페이지네이션 생성
const pagination = document.querySelector(".slide_pagination");

for (let i = 0; i < maxSlide; i++) {
  if (i === 0) pagination.innerHTML += `<li class="active">•</li>`;
  else pagination.innerHTML += `<li>•</li>`;
}

const paginationItems = document.querySelectorAll(".slide_pagination > li");
console.log(paginationItems);

// 버튼 엘리먼트에 클릭 이벤트 추가하기
nextBtn.addEventListener("click", () => {
  // 이후 버튼 누를 경우 현재 슬라이드를 변경
  currSlide++;
  // 마지막 슬라이드 이상으로 넘어가지 않게 하기 위해서
  if (currSlide <= maxSlide) {
    // 슬라이드를 이동시키기 위한 offset 계산
    const offset = slideWidth * (currSlide - 1);
    // 각 슬라이드 아이템의 left에 offset 적용
    slideItems.forEach((i) => {
      i.setAttribute("style", `left: ${-offset}px`);
    });
    // 슬라이드 이동 시 현재 활성화된 pagination 변경
    paginationItems.forEach((i) => i.classList.remove("active"));
    paginationItems[currSlide - 1].classList.add("active");
  } else {
    currSlide--;
  }
});
// 버튼 엘리먼트에 클릭 이벤트 추가하기
prevBtn.addEventListener("click", () => {
  // 이전 버튼 누를 경우 현재 슬라이드를 변경
  currSlide--;
  // 1번째 슬라이드 이하로 넘어가지 않게 하기 위해서
  if (currSlide > 0) {
    // 슬라이드를 이동시키기 위한 offset 계산
    const offset = slideWidth * (currSlide - 1);
    // 각 슬라이드 아이템의 left에 offset 적용
    slideItems.forEach((i) => {
      i.setAttribute("style", `left: ${-offset}px`);
    });
    // 슬라이드 이동 시 현재 활성화된 pagination 변경
    paginationItems.forEach((i) => i.classList.remove("active"));
    paginationItems[currSlide - 1].classList.add("active");
  } else {
    currSlide++;
  }
});

// 브라우저 화면이 조정될 때 마다 slideWidth를 변경하기 위해
window.addEventListener("resize", () => {
  slideWidth = slide.clientWidth;
});

// 각 페이지네이션 클릭 시 해당 슬라이드로 이동하기
for (let i = 0; i < maxSlide; i++) {
  // 각 페이지네이션마다 클릭 이벤트 추가하기
  paginationItems[i].addEventListener("click", () => {
    // 클릭한 페이지네이션에 따라 현재 슬라이드 변경해주기(currSlide는 시작 위치가 1이기 때문에 + 1)
    currSlide = i + 1;
    // 슬라이드를 이동시키기 위한 offset 계산
    const offset = slideWidth * (currSlide - 1);
    // 각 슬라이드 아이템의 left에 offset 적용
    slideItems.forEach((i) => {
      i.setAttribute("style", `left: ${-offset}px`);
    });
    // 슬라이드 이동 시 현재 활성화된 pagination 변경
    paginationItems.forEach((i) => i.classList.remove("active"));
    paginationItems[currSlide - 1].classList.add("active");
  });
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

    <div class="slide slide_wrap">
      <div class="slide_item">1</div>
      <div class="slide_item">2</div>
      <div class="slide_item">3</div>
      <div class="slide_item">4</div>
      <div class="slide_item">5</div>
      <div class="slide_prev_button slide_button">◀</div>
      <div class="slide_next_button slide_button">▶</div>
      <ul class="slide_pagination"></ul>
    </div>

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