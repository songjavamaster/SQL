<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script
  src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<style>

.post-slider {
	width: 70%;
	margin: 0px auto;
	position : relative;
}

.silder-title {
	text-align: center;
	margin: 30px auto;
}

.next {
	position: absolute;
	top: 50%;
	right: 30px;
	font-size: 2em;
	color: gray;
	cursor: pointer;
	border: 1px solid red;
	background-image: url("https://ifh.cc/g/HHOrB3.jpg");
}

.prev {
	position: absolute;
	top: 50%;
	left: 30px;
	font-size: 2em;
	color: gray;
	cursor: pointer;
	border: 1px solid red;
}

.post-wrapper {
	width: 84%;
	height: 350px;
	margin: 0px auto;
	overflow: hidden;
	padding: 10px 0px 10px 0px;
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

.slider-image {
	width: 100%;
	height: 175px;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="page-wrapper" style="position: relative;">
		<!--page slider -->
		<div class="post-slider">
			<h1 class="silder-title">Trending Posts</h1>
			<i class="fas fa-chevron-left prev"></i> //왼쪽 방향 버튼 <i
				class="fas fa-chevron-right next"></i> //오른쪽 방향 버튼
			<div class="post-wrapper">
				<div class="post">
					<img src="https://ifh.cc/g/HHOrB3.jpg" class="slider-image">
					<div class="post-info">
						<h4>
							<a href="#" class="post-subject">Lorem ipsu eiusmod tempor
								incididunt ut </a>
						</h4>
						<i class="far fa-user" style="height: 10%;">Awa Melvine</i>
					</div>
				</div>
				<div class="post">
					<img src="https://ifh.cc/g/HHOrB3.jpg" class="slider-image">
					<div class="post-info">
						<h4>
							<a href="#"> Commodo odio aenean sed </a>
						</h4>
						<i class="far fa-user" style="height: 10%;">Awa Melvine</i>
					</div>
				</div>
				<div class="post">
					<img src="https://ifh.cc/g/HHOrB3.jpg" class="slider-image">
					<div class="post-info">
						<h4>
							<a href="#">Quis hendrerit dolor magna eget est lorem ipsum
								dolor sit. </a>
						</h4>
						<i class="far fa-user" style="height: 10%;">Awa Melvine</i>
					</div>
				</div>
				<div class="post">
					<img src="https://ifh.cc/g/HHOrB3.jpg" class="slider-image">
					<div class="post-info">
						<h4>
							<a href="#">Elit at imperdiet dui accumsan sit.</a>
						</h4>
						<i class="far fa-user" style="height: 10%;">Awa Melvine</i>
					</div>
				</div>
			</div>
		</div>
		<!--post slider-->
	</div>
	<script>

	$('.post-wrapper').slick({
	  infinite: true,
	  slidesToShow: 3,
	  slidesToScroll: 3
	});
</script>
</body>
</html>