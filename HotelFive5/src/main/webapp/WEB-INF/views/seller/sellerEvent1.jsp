<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 동적인 페이지 포함 -->
<jsp:include page="/WEB-INF/views/template/sellerheader.jsp" />
<jsp:include page="/WEB-INF/views/template/sellerSide.jsp" />
<title>사업자 이벤트관리</title>
</head>
<!--CSS -->
<style>
	allcontent{
			margin:5px auto;
			margin-left: 200px;
		}
	h4{
		margin-left:600px;
	}

	.content{
		display:flex;
		width:300px;
		border:0.5px solid gray;
	}
	.imgcontent{
		flex:1;
	}
	.eventcontent{
		flex:2;
		border:0.5px solid gray;
		margin-left: 100px;
	}
	textarea{
		width:300px;
	}
</style>
<!--JS-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function eventrequest(){
	if(confirm("관리자에게 이벤트 요청을 하시겠습니까?")){
		/* 매핑후 서밋 */
			alert("이벤트 요청을 완료했습니다.");
		} else{
		}	
}

</script>
<body>
	<div class="allcontent">   
		<div id="title"><h4>호텔 이벤트 요청 페이지</h4></div>
		<div class="eventTitle">
		
		</div>
		
		<div class="content">
			<div class="imgcontent">
			<span>▶이벤트 배너 <br/> </span><input type="file" name="imgFile">
			</div>
			<div class="eventcontent" >
			<!-- 이벤트 객실명 db에서 가져와서 select-option으로 만들어도 좋을듯 -->
			<span>▶이벤트 객실명 <br/> </span><input type="text" id="eventguestroom"/><br/>
			<span>▶이벤트 가격 <br/> </span><input type="text" id="eventprice"/><br/>
			<span>▶이벤트 시작일 <br/> </span><input type="date" id="startdate"/><br/>
			<span>▶이벤트 종료일 <br/> </span><input type="date" id="enddate"/><br/>
			<span>▶별도 요구사항 <br/> </span><textarea id="eventcontent"></textarea>
			</div>
		</div>
		<div style="width:1500px;">
		<input type="button" value="이벤트요청" onclick="eventrequest()" style="float:right;"/>
		</div>
	</div>
</body>
</html>
<!-- 정적페이지 포함 -->
<%@ include file="/WEB-INF/views/template/footer.jsp" %>