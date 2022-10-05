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
@import url('https://fonts.googleapis.com/css2?family=Secular+One&display=swap');

.ALLALL{
font-family: 'Secular One', sans-serif;
background-color: #fdfbf4;
}
/*    .main{
      background-image: url(resources/main.jpg);
      height: 800px;   
   } */
/*----------------------------메인 Board , login%out !!!!!!!!!-----------------------------------------*/
 .header-wrap {
	position: absolute;
	top: 0;
	text-align: center;
	width: 100%;
	margin-top: 0px;
	z-index: 10;
}

.center-tab a {
	color: white;
	text-shadow: 2px 2px 2px gray;
	text-decoration: none;
	font-size: 25px;
	font-weight: bold;
	margin: 0 -320px 40px 0;
}

.center-tab>a:hover {
	color: black;
}

.center-tab {
	display: inline-block;
	width: 100%;
	margin: auto;
}

.center-tab #logo {
	width: 200px;
}

#loginout {
	margin-top: 40px;
	margin-right: 250px;
}

#loginout:hover {
	color:#ff5e62;
}

.main-wrap {
	z-index: 1;
}

/* .footer-wrap {
         width: 100%;
        height: 200px;
        background-color: rgb(30,30,30);
        left: 0; 
        bottom: 0;
   } */
.footer {
	height: 200px;
	width: 100%;
	padding: 30px 0 30px 0;
	font-size: 13px;
	color: white;
	background-color: rgb(30, 30, 30);
	bottom: 0;
}

.footer .footer_menu {
	margin-bottom: 20px;
}

.footer ul {
	overflow: hidden;
	margin: 0 auto;
	width: 100%;
	text-align: center;
	margin-top: 10px;
}

.footer ul li {
	display: inline;
	margin: 0;
	height: 10px;
}

.footer ul.footer_menu li {
	padding-right: 15px;
}

.footer ul.company_info li {
	padding-right: 5px;
}

.footer ul.footer_menu li:after {
	content: '';
	width: 1px;
	height: 10px;
	background: #2e2e2e;
	display: inline-block;
	margin-left: 20px;
}

.footer ul.company_info li:after {
	content: '';
	width: 1px;
	height: 10px;
	background: #2e2e2e;
	display: inline-block;
	margin-left: 10px;
}

.footer ul li:last-child:after {
	display: none;
}

.footer p {
	text-align: center;
	margin-top: 10px;
}

.footer-img {
	width: 30px;
}

.footer-wrap .footer-content {
	color: rgb(170, 170, 170);
	column-count: 2;
	column-gap: 40px;
	font-weight: 300;
	width: 900px;
	margin: auto;
	padding: 50px 0 0 0;
}

.footer-bottom {
	bottom: 0;
	height: 20px;
	width: 100%;
	text-align: center;
	color: rgb(220, 220, 220);
	background-color: rgb(60, 60, 60);
}

.dropdown {
	position: relative;
	display: inline-block;
	margin-left: 1000px;
    margin-top: 50px;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: rgba(0, 0, 0, 0.6);
	min-width: 130px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	padding: 12px 16px;
	z-index: 1;
}

.dropdown-content a {
	color: white;
	margin: 0 20px 40px 20px;
	text-shadow: 0px 0px 0px;
	font-weight: lighter;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown-content a:hover {
	text-decoration: underline;
}

.dropdown:hover .dropdown-content {
	display: block;
	display:
}

.dropdown:hover .dropbtn {
	background-color: rgb(190, 190, 190);
}

.test_1 {
	width: 100%;
	height: 100%;
	display: none;
	z-index: 200;
	position: fixed;
}

.test_1.open {
	display: block;
}

.test_1.open:before {
	content: '';
	width: 100%;
	height: 100%;
	z-index: 25;
	position: fixed;
	background: black;
	opacity: 0.4;
	top: 0;
}

.test_1 .test_2 {
	position: fixed;
	margin: auto;
	top: 50%;
	z-index: 30;
	background: white;
	left: 50%;
	width: 450px;
	padding: 20px 45px 50px;
	height: 570px;
	margin-top: -268px;
	margin-left: -255px;
}

.login-box h1 {
	text-align: center;
}

.login-text {
	width: 360px;
	height: 47px;
	padding-left: 20px;
	border: 1px solid #d9d9d9;
	margin: 0 0 10px;
	font-size: 14px;
}

.find {
	float: right;
}

#loginButton {
	border: none;
	width: 360px;
	padding: 10px 0;
	background: black;
	color: white;
	margin: 10px 0;
}

#loginButton:hover {
	outline: none;
	background: #5A5A5A;
}

#registerButton {
	border: none;
	width: 360px;
	padding: 10px 0;
	background: #E3EAF3;
	margin: 0 0 10px
}

#registerButton:hover {
	outline: none;
	background: #A4CAED;
}
/*    a {text-decoration: none; font-size: 0.9em; color: black;} */
.pop-up-close {
	border: none;
	position: absolute;
	top: -20.5px;
	right: -20px;
	width: 40px;
	height: 41px;
	text-indent: -9999px;
	background-color: transparent;
	background-image: url(resources/x-button.png);
	background-repeat: no-repeat;
	background-size: 100%;
	background-position: center;
}

/*----------------------------메인 Board , login%out !!!!!!!!!-----------------------------------------*/      
   
/* ------------------------체크인 박스-------------------------*/
.reservation-box {
	/* margin: 300px 400px; */
	border: 1px solid #ff5e62;
	padding: 5px;
	background: #ff5e62;
	margin-top: 20px;
	margin-left: 500px;
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
	width: 101%;
	height: 100%;
	background: #ff5e62;
	color: white;
}
/* ------------------------체크인 박스 끝!!!!-------------------------*/


/* ------------------------중간 슬라이더!!!!-------------------------*/
section#cat2 {
	float: left;
	margin-top: 50px;
	height: 360px;
	width: 520px;
	margin-left: 280px;

	left: 30px;
}

/* ------------------------중간 슬라이더 끝!!!!-------------------------*/


/* ------------------------슬라이더 3개 !!!!!!!!-------------------------*/
.post-slider {
	width: 70%;
	margin: 0px auto;
	position: relative;
}

.silder-title{
color:#ff5e62;
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
/* ------------------------슬라이더 3개  끝!!!!!!!!-------------------------*/

/* ------------------------슬라이더 3개 !!!!!!!!-------------------------*/
.post-slider1{
	width: 70%;
	margin: 0px auto;
	position: relative;
}

.next1{
	position: absolute;
	top: 70%;
	right: 10px;
	font-size: 2em;
	color: gray;
	cursor: pointer;
}

.prev1{
	position: absolute;
	top: 70%;
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
/* ------------------------슬라이더 3개 끝 !!!!!!!!-------------------------*/
a.btn {
	list-style-type: none;
	display: block;
	background: #FFEFBA;
	color:ff5e62;
	position: relative;
	text-transform: uppercase;
	letter-spacing: 0.1em;
	text-align: center;
	padding: 5px;
	transition: 250ms;
	text-decoration: none;
	font-weight: bold;
}

a.btn:hover {
	background: #fffbd5;
	transition: 100ms;
}

.one {
	width: 100px;
	height: 100px;
	margin: 0 auto;
}

#logo {
	width: 100px;
	height: 100px;
}
/*----------------------------사이드 퀵바-----------------------------------------*/
.fixed {
	position: fixed;
	bottom: 200px;
	right: 50px;
	z-index: 10;
}

.chat-content {
	background-color:transparent;
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
	color: black;
	font-size: 20px;
	text-decoration: none;
	
}
/*----------------------------사이드 퀵바 끝!!!!!!!!!-----------------------------------------*/
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
<script type="text/javascript">
	var filename;

	function aa() {
		//$('.test_1').css("display","block");
		$('.test_1').addClass('open');

		$.ajax({
			url : 'getImage',
			type : 'POST',
			dataType : 'JSON',
			success : function(data) {
				filename = data.filename;
				$('#getchaImg').attr("src", "resources/storage/" + filename);
			},
			error : function() {
				alert('AJAX 통신이 실패했습니다1.');
			}
		});
	}

	function cc() {
		$.ajax({
			url : 'getImage',
			type : 'POST',
			dataType : 'JSON',
			success : function(data) {
				filename = data.filename;
				$('#getchaImg').attr("src", "resources/storage/" + filename);
			},
			error : function() {
				alert('AJAX 통신이 실패했습니다1.');
			}
		});
		$('#input_key').val('');
		$('#input_key').focus();
	}

	function bbb() {
		$('.test_1').removeClass('open');
		//$('.test_1').css("display","none");
	}

	$(document).ready(function() {

		// 아이디 기억하기
		var savedID = getCookie("savedID");
		$('#login_mId').val(savedID);

		// savedID 가 있으면, 체크박스를 체크 상태로 유지
		if ($('#login_mId').val() != '') {
			$('#saveIDCheck').attr('checked', true);
		}

		// 체크박스의 상태가 변하면,
		$('#saveIDCheck').change(function() {
			// 체크되어 있다
			if ($('#saveIDCheck').is(':checked')) {
				setCookie("savedID", $('#login_mId').val(), 7); // 7일간 쿠키에 보관
			}
			// 체크해제되어 있다.
			else {
				deleteCookie("savedID");
			}
		});

		// 아이디를 입력할 때
		$('#login_mId').keyup(function() {
			// 체크되어 있다
			if ($('#saveIDCheck').is(':checked')) {
				setCookie("savedID", $('#login_mId').val(), 7); // 7일간 쿠키에 보관
			}
		});
	});

	function fn_logout() {
		location.href = 'logout';
	}

	function fn_login(f) {
		$.ajax({
			url : 'loginCheck',
			type : 'POST',
			dataType : 'JSON',
			data : 'input_key=' + $('#input_key').val(),
			success : function(data) {
				if (data.result == true) {
					$.ajax({
						url : 'login',
						type : 'POST',
						dataType : 'JSON',
						data : 'mId=' + $('#login_mId').val() + '&mPw='
								+ $('#login_mPw').val(),
						success : function(data) {
							if (data.result != 'YES') {
								if (data.result == 'DELETED') {
									alert('탈퇴한 회원입니다.');
								} else {
									alert('로그인 실패 아이디와 비밀번호를 확인하세요.');
								}
								$('#login_mPw').val('');
								$('#input_key').val('');
								$('#login_mPw').focus();
								cc();
							} else {
								location.reload();
							}
						},
						error : function() {
							alert('AJAX 통신이 실패했습니다.2');
						}
					});
				} else {
					alert('그림의 인증번호와 입력하신 인증번호가 다릅니다.');
					$('#input_key').val('');
					$('#input_key').focus();
					cc();
				}
			},
			error : function() {
				alert('AJAX 통신이 실패했습니다.2');
			}
		});
	}

	// 1. 쿠키 만들기
	function setCookie(cookieName, value, exdays) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var cookieValue = escape(value)
				+ ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
		document.cookie = cookieName + "=" + cookieValue;
	}

	// 2. 쿠키 삭제
	function deleteCookie(cookieName) {
		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() - 1);
		document.cookie = cookieName + "= " + "; expires="
				+ expireDate.toGMTString();
	}

	// 3. 쿠키 가져오기
	function getCookie(cookieName) {
		cookieName = cookieName + "=";
		var cookieData = document.cookie;
		var start = cookieData.indexOf(cookieName);
		var cookieValue = "";
		if (start != -1) {
			start += cookieName.length;
			var end = cookieData.indexOf(";", start);
			if (end == -1) {
				end = cookieData.length;
			}
			cookieValue = cookieData.substring(start, end);
		}
		return unescape(cookieValue);
	}
</script>




<!-- 동적인 페이지 포함 -->
<div class="ALLALL">
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
	<!-- -----------------------첫번째 줄 슬라이더------------------------------------ -->
	<div class="page-wrapper" style="position: relative;">
		<!--page slider -->
		<div class="post-slider">
			<h2 class="silder-title">★Hot Issue Hotel★</h2>
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
	<!-- -----------------------첫번째 줄 슬라이더 끝!!!!------------------------------------ -->
	
	<!-- -----------------------두번쨰 줄 슬라이더------------------------------------ -->
	<div class="page-wrapper1" style="position: relative;">
		<!--page slider -->
		<div class="post-slider1">
			<h2 class="silder-title">Trending Posts1</h2>
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
<!-- -----------------------두번쨰 줄 슬라이더 끝!!!!!!------------------------------------ -->

	<div class="header-wrap">
		<div class="center-tab">
			<div class="dropdown">
				<a>Board▼</a>
				<div class="dropdown-content">
					<a href="noticeBoardListPage">Notice</a> <a href="qnaBoardList">QNA</a>
					<a href="ReviewBoardListPage">Review</a>
				</div>
			</div>
			<c:if test="${loginDTO.mRight eq 1}">
				<a href="adminMain">Member Management</a>
			</c:if>
			<c:if test="${loginDTO ne null and loginDTO.mRight ne 1}">
				<a href="goMyPage">MyPage</a>
			</c:if>
			<c:if test="${loginDTO eq null }">
				<a id="loginout" href="javascript:void(0);" style="float: right;"
					onclick="aa()"><i class="fas fa-bone"></i><br />LOGIN</a>
			</c:if>
			<c:if test="${loginDTO ne null }">
				<a id="loginout" href="javascript:void(0);" style="float: right;"
					onclick="fn_logout()"><i class="fas fa-bone"></i><br />LOGOUT</a>
			</c:if>
		</div>


	</div>
<div class="main-footer">
		<div class="main-wrap">

			<div class="test_1">

				<div class="test_2">
					<div id="login" class="login-box">
						<form method="POST">
							<h1>LOGIN</h1>
							<br /> <input class="login-text" id="login_mId" type="text"
								name="login_mId" placeholder="아이디" autofocus /><br /> <input
								class="login-text" id="login_mPw" type="password"
								name="login_mPw" placeholder="비밀번호" /><br /> <input
								id="saveIDCheck" type="checkbox" name="saveIDCheck" value="true"
								checked />아이디 기억하기 <img id="getchaImg" src=""
								style="width: 360px; height: 120px;" /> <input id="input_key"
								type="text" name="input_key" style="margin-top: 5px;" /> <a
								href="javascript:void(0);" onclick="cc()"><i
								class="fas fa-redo-alt"></i></a> <br />
							<input id="loginButton" type="button" value="로그인"
								onclick="fn_login(this.form)" /> <br />
							<input id="registerButton" type="button" value="회원가입"
								onclick="location.href='registerPage'" /> <br />
							<div class="find">
								<a href="findIdPage">아이디 찾기</a>&nbsp;|&nbsp; <a
									href="findPwPage">비밀번호 찾기</a><br />
							</div>
							<a href="findReservationNumber">비회원 예약확인</a><br />
						</form>
					</div>
					<button class="pop-up-close" onclick="bbb()"></button>
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