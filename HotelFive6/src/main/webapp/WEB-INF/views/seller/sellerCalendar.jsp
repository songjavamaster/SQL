<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 동적인 페이지 포함 -->
<jsp:include page="/WEB-INF/views/template/sellerheader.jsp" />
<title>Insert title here</title>
<!-- JS -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	var today = null;
	var year = null;
	var month = null;
	var firstDay = null;
	var lastDay = null;
	var $tdDay = null;
	var $tdSche = null;
	var $sId2 = ${sId};
	var $sId = $(document).ready(function() {
		drawCalendar();
		initDate();
		drawDays();
		$("#movePrevMonth").on("click", function() {
			movePrevMonth();
		});
		$("#moveNextMonth").on("click", function() {
			moveNextMonth();
		});

	});

	//calendar 그리기
	function drawCalendar() {
		var setTableHTML = "";
		setTableHTML += '<table class="calendar">';
		setTableHTML += '<tr><th style="color:red">일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th style="color:blue">토</th></tr>';
		for (var i = 0; i < 6; i++) {
			setTableHTML += '<tr height="50">';
			for (var j = 0; j < 7; j++) {
				setTableHTML += '<td id="day_check" onclick="fn_du(this)" style="text-overflow:ellipsis;overflow:hidden;white-space:nowrap">';
				setTableHTML += '    <div class="cal-day"></div>';
				//setTableHTML+='    <div class="cal-schedule"></div>';
				setTableHTML += '</td>';
			}
			setTableHTML += '</tr>';
		}
		setTableHTML += '</table>';
		$("#cal_tab").html(setTableHTML);

	}
	//날짜 초기화
	function initDate() {
		$tdDay = $("td div.cal-day")
		$tdSche = $("td div.cal-schedule")
		dayCount = 0;
		today = new Date();
		year = today.getFullYear();
		month = today.getMonth() + 1;
		firstDay = new Date(year, month - 1, 1);
		lastDay = new Date(year, month, 0);
	}

	//calendar 날짜표시
	function drawDays() {
		$("#cal_top_year").text(year);
		$("#cal_top_month").text(month);
		//달의 첫날부터 마지막날까지 ++
		for (var i = firstDay.getDay(); i < firstDay.getDay()
				+ lastDay.getDate(); i++) {
			$tdDay.eq(i).text(++dayCount);
			/* $tdDay.eq(i).css("margin","50px") */
		}
		//토요일 일요일의 날짜 글자 색 
		for (var i = 0; i < 42; i += 7) {
			$tdDay.eq(i).css("color", "red");
		}
		for (var i = 6; i < 42; i += 7) {
			$tdDay.eq(i).css("color", "blue");
		}

	}

	//calendar 월 이동
	function movePrevMonth() {
		month--;
		if (month <= 0) {
			month = 12;
			year--;
		}
		if (month < 10) {
			month = String("0" + month);
		}
		getNewInfo();
	}

	function moveNextMonth() {
		month++;
		if (month > 12) {
			month = 1;
			year++;
		}
		if (month < 10) {
			month = String("0" + month);
		}
		getNewInfo();
	}

	function getNewInfo() {
		for (var i = 0; i < 42; i++) {
			$(day_check).eq(i).css('background', 'white').css('color', 'black');
			$tdDay.eq(i).css('background', 'white').css('color', 'black');
			$tdDay.eq(i).text("");
			$tdSche.eq(i).css("background", "");
		}
		dayCount = 0;
		firstDay = new Date(year, month - 1, 1);
		lastDay = new Date(year, month, 0);
		drawDays();
	}
</script>
<!-- CSS -->
<style>
#info {
	margin: 40px;
}

.cal_move {
	margin: 50px;
	padding: 50px;
}

.all {
	border: 1px solid black;
	width: 250px;
	height: auto;
	float: left;
	margin-right: 50px;
	margin-left: 400px;
}

li {
	margin: 0px 20px;
	list-style-type: none;
}

a {
	text-decoration: none;
}

.hover:hover {
	color: #ff5e62;
}
</style>


</head>
<body>
	<div style="height: 250px; width: 100%;"></div>
	<div class="all">
		<div>
			<ul>
				<li class="icon"><i class="fa-solid fa-user"
					style="font-size: 25px;"></i></li>
				<li class="hover"><a href="blacklist">블랙리스트 등록요청</a></li>
				<li class="hover"><a href="extendPage?sId=${sId}">사업자 연장 요청</a></li>
			</ul>

			<ul>
				<li class="icon"><i class="fa-solid fa-cart-shopping"
					style="font-size: 25px;"></i></li>
				<li class="hover"><a href="sellerhotel">객실관리</a></li>
				<li class="hover"><a href="sellerMain">예약현황관리</a></li>
				<li class="hover"><a href="sellerresrevation">예약신청관리</a></li>
				<li class="hover"><a href="sellerreview">리뷰관리</a></li>
			</ul>

			<ul>
				<li class="icon"><i class="fa-solid fa-clipboard-list"
					style="font-size: 25px;"></i></li>
				<li class="hover"><a href="sellerevent1">이벤트 요청</a></li>
				<li class="hover"><a href="sellerevent2">이벤트 관리 요청</a></li>
			</ul>
		</div>
	</div>

	<div id="info">
		<div id="cal">
			<div id="cal_move">
				<a href="#" id="movePrevMonth"><span id="prevMonth"
					class="cal_tit">전달</span></a> <span id="cal_top_year"></span>-<span
					id="cal_top_month"></span> <a href="#" id="moveNextMonth"><span
					id="nextMonth" class="cal_tit">다음달</span></a>
			</div>
			<div id="cal_tab" class="cal"></div>
		</div>
	</div>


</body>

</html>

<%@ include file="/WEB-INF/views/template/footer.jsp"%>