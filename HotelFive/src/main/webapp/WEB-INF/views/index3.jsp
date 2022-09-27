<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" type="text/css"
	href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script src="https://code.jquery.com/jquery-3.6.1.min.js"
	integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<style>

/*    .main{
      background-image: url(resources/main.jpg);
      height: 800px;   
   } */
/* ------------------------체크인 박스-------------------------*/
.reservation-box {
	/* margin: 300px 400px; */
	border: 1px solid black;
	padding: 5px;
	background: black;
	margin-top: 20px;
	margin-left: 500px;
	width: 50%;
	border: 10px solid green;
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
/* ------------------------체크인 박스 끝!!!!-------------------------*/
section#cat2 {
	float: left;
	margin-top: 50px;
	height: 360px;
	width: 520px;
	margin-left: 280px;
	border: 5px solid yellow;
	left: 30px;
}

.post-slider {
	width: 70%;
	margin: 0px auto;
	position: relative;
	border: 10px solid blue;
	left: 20px;
}

.next {
	position: absolute;
	top: 80%;
	right: 10px;
	font-size: 2em;
	color: gray;
	cursor: pointer;
}

.prev {
	position: absolute;
	top: 80%;
	left: 70px;
	font-size: 2em;
	color: gray;
	cursor: pointer;
}

.post-wrapper {
	width: 84%;
	height: 350px;
	margin: 0px auto;
	overflow: hidden;
	padding: 10px 0px 10px 80px;
}

.post {
	width: 300px;
	height: 300px;
	margin: 0px 10px;
	display: inline-block;
	background: white;
	border-radius: 5px;
}

.post-info {
	font-size: 15px;
	height: 30%;
	padding-left: 10px;
}

.post-slider1{
	width: 70%;
	margin: 0px auto;
	position: relative;
	border: 10px solid blue;
	left: 20px;
}

.next1{
	position: absolute;
	top: 80%;
	right: 10px;
	font-size: 2em;
	color: gray;
	cursor: pointer;
}

.prev1{
	position: absolute;
	top: 80%;
	left: 70px;
	font-size: 2em;
	color: gray;
	cursor: pointer;
}

.post-wrapper1{
	width: 84%;
	height: 350px;
	margin: 0px auto;
	overflow: hidden;
	padding: 10px 0px 10px 80px;
}

.post1{
	width: 300px;
	height: 300px;
	margin: 0px 10px;
	display: inline-block;
	background: white;
	border-radius: 5px;
}

.post-info1{
	font-size: 15px;
	height: 30%;
	padding-left: 10px;
}
.slider-image {
	width: 100%;
	height: 175px;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
}

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

.one {
	width: 100px;
	height: 100px;
	margin: 0 auto;
	border: 1px solid black;
}

#logo {
	width: 100px;
	height: 100px;
}
/*----------------------------사이드 퀵바-----------------------------------------*/
.fixed {
	position: fixed;
	bottom: 100px;
	right: 20px;
	z-index: 10;
}

.chat-content {
	background-color: #279de1;
	padding: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 3px 5px 10px #999999;
	box-shadow: 3px 5px 10px #999999;
	-webkit-animation: chat 1s infinite;
	animation: chat 1s infinite;
	cursor: pointer;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-ms-flex-direction: column;
	flex-direction: column; 
	text-align: center;
}

.chat-content .chat__call {
	margin-bottom: 20px;
}

.chat-content .chat__call .callIcon, .chat-content, .chat__aboutUs, .chat__roomInfo, .chat__reservation
	{
	color: #fff;
	font-size: 20px;
	text-decoration: none;
	
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
        //웹 페이지가 시작할때 사용되는 기본값 설정
        $(document).ready(function(){
            let width = 1300;
            let height = 200;
            let current = 0;

            //다시 처음부터 움직일수 있게 인터벌사용 - 커렌트값을 증가 또는 0으로 만들어주는 기능을 가진함수
            setInterval(function(){
                    current = current + 1;
                    current = current % imageLength;
                    moveTo();
                },3000); //1000단위당 1초
            //1초마다 커렌트값이 1씩 증가하면서 커*위 
            const moveTo = function(){
                $('.images').animate({
                    left: -current * width   
                },1000);
            };
            const imageLength = $('.slider').find('.image').length;
            
                $('.slider').css({
                    position: 'relative',
                    width: width,
                    height: height,
                    overflow: 'hidden'
                });
                $('.images').css({
                    position: 'absolute',
                    width: width * imageLength
                    
                });
                $('.image').css({
                    margin: 0,
                    padding: 0,
                    width : width,
                    height: height,
                    float: 'left'
                });
        });
    </script>





<!-- 동적인 페이지 포함 -->
<div class="one">
	<a href="main"><img id="logo" alt="logo"
		src="resources/logo/FinalLogo.png" /></a>
</div>

<div class="fixed">
	<div class="chat-content">
		 <!-- <a class="chat__call">AboutUs</a> -->
		<!-- <a class="chat__kakao">채팅</a> -->
		 <a href="hotelInfo" class="chat__aboutUs">AboutUs</a>
		 <a href="roomListPage" class="chat__roomInfo">RoomInfo</a>
		 <a href="reservation" class="chat__reservation">Reservation</a>
	</div>

</div>

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
</div>





<div class="ssss">
	<section id="cat2" class="slider">
		<div class="images">
			<img class="image" src="resources/logo/DF.jpg"> <img
				class="image" src="resources/logo/DF.jpg"> <img class="image"
				src="resources/logo/DF.jpg">
		</div>
	</section>
	<div class="page-wrapper" style="position: relative;">
		<!--page slider -->
		<div class="post-slider">
			<h1 class="silder-title">Trending Posts</h1>
			<i class="fas fa-chevron-left prev"></i> <i
				class="fas fa-chevron-right next"></i>
			<div class="post-wrapper">
				<div class="post">
					<img src="https://ifh.cc/g/HHOrB3.jpg" class="slider-image">
					<div class="post-info">
						<h4 style="margin: 0px;">
							<a href="#" class="post-subject">Lorem ipsu eiusmod tempor
								incididunt ut </a>
						</h4>
						<i class="far fa-user" style="height: 5%;">Awa Melvine</i>
					</div>
					<a href="#" class="btn">예약하기</a>
				</div>
				<div class="post">
					<img src="https://ifh.cc/g/HHOrB3.jpg" class="slider-image">
					<div class="post-info">
						<h4 style="margin: 0px;">
							<a href="#"> Commodo odio aenean sed </a>
						</h4>
						<i class="far fa-user" style="height: 10%;">Awa Melvine</i>
					</div>
					<a href="#" class="btn">예약하기</a>
				</div>
				<div class="post">
					<img src="https://ifh.cc/g/HHOrB3.jpg" class="slider-image">
					<div class="post-info">
						<h4 style="margin: 0px;">
							<a href="#">Quis hendrerit dolor magna eget est lorem ipsum
								dolor sit. </a>
						</h4>
						<i class="far fa-user" style="height: 10%;">Awa Melvine</i>
					</div>
					<a href="#" class="btn">예약하기</a>
				</div>
				<div class="post">
					<img src="https://ifh.cc/g/HHOrB3.jpg" class="slider-image">
					<div class="post-info">
						<h4 style="margin: 0px;">
							<a href="#">Elit at imperdiet dui accumsan sit.</a>
						</h4>
						<i class="far fa-user" style="height: 10%;">Awa Melvine</i>
					</div>
					<a href="#" class="btn">예약하기</a>
				</div>
			</div>
		</div>
	</div>
	<!-- -----------------------두번쨰 줄 슬라이더------------------------------------ -->
	<div class="page-wrapper1" style="position: relative;">
		<!--page slider -->
		<div class="post-slider1">
			<h1 class="silder-title">Trending Posts1</h1>
			<i class="fas fa-chevron-left prev1"></i>
			<i class="fas fa-chevron-right next1"></i>
			<div class="post-wrapper1">
				<div class="post">
					<img src="https://ifh.cc/g/HHOrB3.jpg" class="slider-image">
					<div class="post-info">
						<h4 style="margin: 0px;">
							<a href="#" class="post-subject">Lorem ipsu eiusmod tempor
								incididunt ut </a>
						</h4>
						<i class="far fa-user" style="height: 5%;">Awa Melvine</i>
					</div>
					<a href="#" class="btn">예약하기</a>
				</div>
				<div class="post">
					<img src="https://ifh.cc/g/HHOrB3.jpg" class="slider-image">
					<div class="post-info">
						<h4 style="margin: 0px;">
							<a href="#"> Commodo odio aenean sed </a>
						</h4>
						<i class="far fa-user" style="height: 10%;">Awa Melvine</i>
					</div>
					<a href="#" class="btn">예약하기</a>
				</div>
				<div class="post">
					<img src="https://ifh.cc/g/HHOrB3.jpg" class="slider-image">
					<div class="post-info">
						<h4 style="margin: 0px;">
							<a href="#">Quis hendrerit dolor magna eget est lorem ipsum
								dolor sit. </a>
						</h4>
						<i class="far fa-user" style="height: 10%;">Awa Melvine</i>
					</div>
					<a href="#" class="btn">예약하기</a>
				</div>
				<div class="post">
					<img src="https://ifh.cc/g/HHOrB3.jpg" class="slider-image">
					<div class="post-info">
						<h4 style="margin: 0px;">
							<a href="#">Elit at imperdiet dui accumsan sit.</a>
						</h4>
						<i class="far fa-user" style="height: 10%;">Awa Melvine</i>
					</div>
					<a href="#" class="btn">예약하기</a>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$('.post-wrapper').slick({
		  slidesToShow: 3,
		  slidesToScroll: 1,
		  autoplay: true,
		  autoplaySpeed: 2000,
		  nextArrow:$('.next'),
		  prevArrow:$('.prev'),
		});
	
	$('.post-wrapper1').slick({
		  slidesToShow: 3,
		  slidesToScroll: 1,
		  autoplay: true,
		  autoplaySpeed: 2000,
		  nextArrow:$('.next1'),
		  prevArrow:$('.prev1'),
		});
</script>


<!-- 정적인 페이지 포함 -->
<%@ include file="/WEB-INF/views/template/footer.jsp"%>