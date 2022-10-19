<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 동적인 페이지 포함 -->
<jsp:include page="/WEB-INF/views/template/header.jsp">
	<jsp:param value="관리자용" name="title" />
</jsp:include>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<style type="text/css">
.container {
	width: 70%;
	height: 700px;
}

.queryBtn {
	width: 70px;
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 7px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	cursor: pointer;
	border-radius: 4px;
}

tr, th {
	text-align: center;
}

select {
	width: 140px;
	padding: .6em .3em;
	font-family: inherit;
	background:
		url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg)
		no-repeat 95% 50%;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border: 1px solid #999;
	border-radius: 0px;
}

select::-ms-expand {
	/* for IE 11 */
	display: none;
}

.queryInput {
	height: 40px;
	border-radius: 3px;
}

.Btn { /* 버튼 : 회원추가, 전체회원 리스트 */
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 10px 24px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	transition-duration: 0.4s;
	cursor: pointer;
}

.btnAdd, .btnTotalList {
	background-color: white;
	color: black;
	border: 2px solid #4CAF50;
}

.btnAdd:hover, .btnTotalList:hover {
	background-color: #4CAF50;
	color: white;
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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js"></script>
<script type="text/javascript">	    
		function fn_SellerExtendOk(i){
			if( confirm('연장승인 하시겠습니까?') ){
				var url = 'SellerExtendOk?sNo='+ i + '&extend=1' ;
	         	location.href= url;
	         	alert("승인이 완료되었습니다.");
	     	}
   		}
	
	// 검색 결과 보기
	function fn_queryAdminList(f) {

		if (f.query.value == '') {
			//swal("검색할 입력은 필수입니다","", 'error');
			alert('검색할 입력은 필수입니다');
			f.query.focus();
			return;
		}
		if (f.column.value == 'EMPTY' && f.query.value != '') {
			//swal("검색할 카테고리를 지정해주세요","", 'error');
			alert('검색할 카테고리를 지정해주세요');
			f.column.focus();
			return;
		}
		f.action = 'queryAdminListPage';
		f.submit();
	}

	function fn_insertMember() {
		if (confirm('회원가입 페이지로 이동합니다. 이동하시겠습니까?')) {
			location.href = 'adminInsertPage';
		}
	}
</script>
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

		<ul>
			<li class="icon"><i class="fa-solid fa-clipboard-list"
				style="font-size: 25px;">컨텐츠 관리</i></li>
			<li><a href="#">요청 승인/거절</a></li>
		</ul>
	</div>
</div>

<div class="container">
	<h1 class="text-center">연장요청목록</h1>
	<br> <br>
	<form method="POST">
		<table class="table table-hover">
			<thead>
				<tr class="text-center">
					<th>사업자번호</th>
					<th>회사명</th>
					<th>계약시작일</th>
					<th>계약종료일</th>
					<th></th>

				</tr>
			</thead>
			<tbody class="search row">

				<c:choose>

					<c:when test="${empty list }">
						<tr>
							<td colspan="5">연장 요청한 사업자가 없습니다.</td>
						</tr>
					</c:when>

					<c:when test="${not empty list }">
						<c:forEach var="sDTO" items="${list }" varStatus="status">
							<c:if test="${sDTO.extend eq 1}">
								<tr>
									<td>${sDTO.sId }</td>
									<td>${sDTO.hName }</td>
									<td>${sDTO.sRegDate }</td>
									<td>${sDTO.sEndDate }</td>
									<td>
										<%-- <input type="hidden" name="sNo" value="${sDTO.sNo}"> --%>
										<%-- <input type="hidden" name="sNo" value="${sDTO.sNo}"> --%>
										<input class="Btns confirmBtn" type="button" value="승인대기"
										id="Btn" onclick="fn_SellerExtendOk(${sDTO.sNo})">
									</td>
								</tr>
							</c:if>

							<!-- 승인 완료 시 -->
							<c:if test="${sDTO.extend eq 2}">
								<tr>
									<td>${sDTO.sId }</td>
									<td>${sDTO.hName }</td>
									<td>${sDTO.sRegDate }</td>
									<td>${sDTO.sEndDate }</td>
									<td>
										<%-- <input type="hidden" name="extend" value="${sDTO.extend}"> --%>
										<input type="button" value="승인완료">
									</td>
								</tr>
							</c:if>
						</c:forEach>
					</c:when>


				</c:choose>
			</tbody>
		</table>
	</form>
	<br> <br>
	<div class="text-center">
		<c:if test="${page ne null}">
			<span>${pageView }</span>
			<span>${pageVie2 }</span>
			<br>
			<br>
			<form class="text-center">
				<%-- 검색 --%>
				<select name="column">
					<option value="EMPTY">::검색 선택::</option>
					<option value="MNAME">이름</option>
					<option value="MID">아이디</option>
					<option value="MADDR1">주소</option>
				</select> <input class="queryInput" type="text" name="query"
					placeholder="검색어를 입력해주세요" size="25" /> <input class="queryBtn"
					type="button" value="검색" onclick="fn_queryAdminList(this.form)" />
			</form>
		</c:if>
	</div>
</div>

<!-- 관리자가 로그인하면 "관리자메뉴"를 표시한다. -->

<!-- 정적인 페이지 포함 -->
<%@ include file="/WEB-INF/views/template/footer.jsp"%>