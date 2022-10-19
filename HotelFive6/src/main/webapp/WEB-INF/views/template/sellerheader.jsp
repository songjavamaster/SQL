<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
request.setCharacterEncoding("utf-8");
String title = request.getParameter("title");
if (title == null || title.isEmpty()) {
	title = "Welcome to the KoreaHotel";
}
pageContext.setAttribute("title", title);
%>

<!DOCTYPE html>
<html>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Inconsolata">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>
<meta charset="UTF-8">
<title>${title }</title>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style type="text/css">
* {
	box-sizing: border-box;
	font-family: "Inconsolata", sans-serif;
}

body {
	margin: 0;
	padding: 0;
}

.header-wrap {
	top: 0;
	text-align: center;
	background-color: rgba(256, 256, 256, 0.4);
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	https: //saeatechnote.tistory.com/entry/CSS-display-fixed-%EA%B0%80% EC%9A%B4%EB%8D%B0-%EC%A0%95%
		EB%A0%AC%ED%95% 98% EA%B8%B0width: 1000px;
	margin: 0 auto;
	width: 1100px;
	top: 0;
	left: 0;
	right: 0;
	position: fixed;
	z-index: 10;
}

.center-tab a {
	color: white;
	text-shadow: 2px 2px 2px gray;
	text-decoration: none;
	font-size: 20px;
	font-weight: bold;
	margin: 0 40px 40px 0;
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
	margin-right: 50px;
}

#loginout:hover {
	color: black;
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
	position: absolute;
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
	height: 630px;
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
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=wkmpm92bc1&submodules=geocoder">
	
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
		$('#login_sId').val(savedID);

		// savedID 가 있으면, 체크박스를 체크 상태로 유지
		if ($('#login_sId').val() != '') {
			$('#saveIDCheck').attr('checked', true);
		}

		// 체크박스의 상태가 변하면,
		$('#saveIDCheck').change(function() {
			// 체크되어 있다
			if ($('#saveIDCheck').is(':checked')) {
				setCookie("savedID", $('#login_sId').val(), 7); // 7일간 쿠키에 보관
			}
			// 체크해제되어 있다.
			else {
				deleteCookie("savedID");
			}
		});

		// 아이디를 입력할 때
		$('#login_sId').keyup(function() {
			// 체크되어 있다
			if ($('#saveIDCheck').is(':checked')) {
				setCookie("savedID", $('#login_sId').val(), 7); // 7일간 쿠키에 보관
			}
		});
		
	});

	function fn_logout() {
		location.href = 'sellerlogout';
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
						url : 'sellerlogin',
						type : 'POST',
						dataType : 'JSON',
						data : 'sId=' + $('#login_sId').val() + '&sPw='
								+ $('#login_sPw').val(),
						success : function(data) {
							if (data.result != 'YES') {
								alert('로그인 실패 아이디와 비밀번호를 확인하세요.');
								$('#login_sPw').val('');
								$('#input_key').val('');
								$('#login_sPw').focus();
								cc();
							} else {
								var url = 'sellerMain?sId='+$('#login_sId').val();
								location.href = url;
								/* location.reload(); */}
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
</head>
<body>
	<div class="header-wrap">
		<div class="center-tab">
			<a href="hotelInfo">AboutUs</a> <a href="reservation">Reservation</a>
			<a href="sellerMain"><img id="logo" alt="logo"
				src="resources/logo/logogo.png" /></a>
			<div class="dropdown">
				<a>Board▼</a>
				<div class="dropdown-content">
					<a href="noticeBoardListPage">Notice</a> <a href="qnaBoardList">QNA</a>
					<a href="ReviewBoardListPage">Review</a>
				</div>
			</div>


			<c:if test="${loginDTO eq null }">
				<a id="loginout" href="javascript:void(0);" style="float: right;"
					onclick="aa()"><i class="fas fa-sign-in-alt fa-2x"></i><br />LOGIN</a>
			</c:if>
			<c:if test="${loginDTO ne null }">
				<a id="loginout" href="javascript:void(0);" style="float: right;"
					onclick="fn_logout()"><i class="fas fa-sign-out-alt fa-2x"></i><br />LOGOUT</a>
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
							<br /> 
							<input class="login-text" id="login_sId" type="text" name="login_sId" placeholder="사업자 아이디" autofocus /><br /> 
							<input class="login-text" id="login_sPw" type="password" name="login_sPw" placeholder="사업자 비밀번호" /><br /> 
							<input id="saveIDCheck" type="checkbox" name="saveIDCheck" value="true" checked />아이디 기억하기 
							<img id="getchaImg" src="" style="width: 360px; height: 120px;" /> 
							<input id="input_key" type="text" name="input_key" style="margin-top: 5px;" /> 
							<a href="javascript:void(0);" onclick="cc()">
							<i class="fas fa-redo-alt"></i></a><br /> 
							<input id="loginButton" type="button" value="로그인" onclick="fn_login(this.form)" /> 
							<input id="registerButton" type="button" value="회원가입" onclick="location.href='sellerRegisterPage'" />
							<div class="find">
								&nbsp;|&nbsp; <a href="findSellerPwPage">비밀번호 찾기</a><br />
							</div>
						</form>
					</div>
					<button class="pop-up-close" onclick="bbb()"></button>
				</div>
			</div>
		</div>
	</div>