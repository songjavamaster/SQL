<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<jsp:include page="/WEB-INF/views/template/header.jsp">
	<jsp:param value="이용후기작성" name="title" />
</jsp:include>
<style type="text/css">
@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
	.board-insert-box {text-align: center; padding-top: 50px;}
	.board-insert-box table {margin: auto;}
	.board-insert-box {width: 1000px; margin: 0 auto 90px; text-align: center;}
	.board-insert-box table {width:1000px; border: 2px solid lightgray; border-collapse: collapse; margin: 20px auto;}
	.board-insert-box table td {border: 1px solid lightgray; padding: 10px 20px;}
	.board-insert-box table td:nth-of-type(1) {width: 200px;background: #EAF2FF; font-weight: bold;}
	.board-insert-box table td:nth-of-type(2) {text-align: left;}
	.board-insert-box input[type=text], .board-insert-box select, .board-insert-box textarea {padding:6px 10px; width: 700px; border: 1px solid lightgray;}
	.board-insert-box input[type=text]:hover, .board-insert-box input[type=text]:focus, .board-insert-box textarea:focus, .board-insert-box textarea:hover, .board-insert-box select:hover, .board-insert-box select:focus {outline: none; border-color: #353535}
	.board-insert-box span {display:inline-block;width: 200px;}
	.board-insert-box input[type=button], .board-insert-box input[type=submit], .board-insert-box input[type=reset] {width: 80px;  float: right;background: white; cursor: pointer; padding: 10px;border: 1px solid lightgray;}
	.notice_backimg {
		width: 100%; 
		height: 750px; 
		background-size: cover;
		background-image: url("resources/assets/background_img/backimg.jpg"); 
		text-align: center; 
		color: white; 
		padding-top: 300px;
	}
	.notice_backimg #pagetitle {font-size: 85px;}
	.notice_backimg #sevenfactory, #explain {font-weight: bold;}
	.notice_backimg #explain {font-size: 15px;}
	/* star */


	/* fieldset, label { margin: 0; padding: 0; }
	body{ margin: 20px; }
	h1 { font-size: 1.5em; margin: 10px; } */
	
	/****** Style Star Rating Widget *****/
	
	.rating { 
	  border: none;
	  float: left;
	}
	
	.rating > input { display: none; } 
	.rating > label:before { 
	  margin: 5px;
	  font-size: 1.25em;
	  font-family: FontAwesome;
	  display: inline-block;
	  content: "\f005";
	}
	
	.rating > .half:before { 
	  content: "\f089";
	  position: absolute;
	}
	
	.rating > label { 
	  color: #ddd; 
	 float: right; 
	}
	
	/***** CSS Magic to Highlight Stars on Hover *****/
	
	.rating > input:checked ~ label, /* show gold star when clicked */
	.rating:not(:checked) > label:hover, /* hover current star */
	.rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */
	
	.rating > input:checked + label:hover, /* hover current star when changing rating */
	.rating > input:checked ~ label:hover,
	.rating > label:hover ~ input:checked ~ label, /* lighten current selection */
	.rating > input:checked ~ label:hover ~ label { color: #FFED85;  } 
	#writing_name {width: 200px;}
</style>

<script type="text/javascript">
	function fn_insertBoard(f) {
		if (f.rTitle.value == '') {
			alert('제목을 입력하세요.');
			f.rTitle.focus();
			return;
		}
		if (f.gName.value == '') {
			alert('방 번호를 입력하세요');
			f.gNo.focus();
			return;
		}
		if (f.rating.value == '') {
			alert('평점을 입력하세요');
			f.rating.focus();
			return;
		}
		f.action = 'ReviewBoardInsert';
		f.submit();
	}
	function fn_boardListPage() {
		history.back();
	}
</script>

<div class="notice_backimg">
	<h3 id="sevenfactory">Together</h3>
	<h1 id="pagetitle">Community</h1>
	<p id="explain">투개더의 각종 이벤트 및 소식</p>
</div>

<div class="board-insert-box">
	<img id="writing_name" alt="writing_name" src="resources/assets/name_img/writing_name2.png"/><br/> 
	<form method="POST" enctype="multipart/form-data">
		<table class="name-title">
				<tr>
					<td>ID</td>
						<c:if test="${loginDTO.mId ne null }">
							<td><input type="text" name="mId" value="${loginDTO.mId }" readonly/></td>
						</c:if>
						<c:if test="${loginDTO.mId eq null }">
							<td><input type="text" name="mId" value="비회원" readonly/></td>
						</c:if>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="rTitle" autofocus /></td>
				</tr>
				<tr>
					<td>이용하신 객실명</td>
					<td>

					<input type="text" name="gName" value="${gName }" readonly/>
					 </td>
				</tr>
			</table>
			<table class="file">
				<tr>
					<td>별점 주기</td>
					<td>
						<fieldset class="rating">
						    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="5점"></label>
						    <input type="radio" id="star4half" name="rating" value="4.5" /><label class="half" for="star4half" title="4.5점"></label>
						    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="4점"></label>
						    <input type="radio" id="star3half" name="rating" value="3.5" /><label class="half" for="star3half" title="3.5점"></label>
						    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="3.5점"></label>
						    <input type="radio" id="star2half" name="rating" value="2.5" /><label class="half" for="star2half" title="2.5점"></label>
						    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="2점"></label>
						    <input type="radio" id="star1half" name="rating" value="1.5" /><label class="half" for="star1half" title="1.5점"></label>
						    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="1점"></label>
						    <input type="radio" id="starhalf" name="rating" value="0.5" /><label class="half" for="starhalf" title="0.5점"></label>
						</fieldset>
					</td>
				</tr>
				<tr>
					<td>첨부파일</td>
					<td><input type="file" name="files"/></td>
				</tr>
			</table>
			<table class="content">
				<tr>
					<td>CONTENT</td>
					<td>
						<textarea name="rContent" rows="15" cols="90"></textarea>
					</td>
				</tr>
			</table>
			<input type="button" value="SAVE" onclick="fn_insertBoard(this.form)" />
			<input type="reset" value="RESET" />
			<input type="button" value="GO BACK" onclick="fn_boardListPage()" />
	</form>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>