<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<head>
<meta charset="UTF-8">
<title>글보기</title>
<Style>
#tr_btn_modify {
	display: none;
}
</Style>
<script src="http//code.jquery.com/jqury-latest.min.js"></script>
<script type="text/javascript">
	function backToList(obj) {
		obj.action = "${contextPath}/board/listArticles.do";
		obj.submit();
	}
	function fn_enable(obj) {
		document.getElementById("i_title").disabled = false;
		document.getElementById("i_content").disabled = false;
		document.getElementById("i_imageFileName").disabled = false;
		document.getElementById("tr_btn_modify").style.display = "block";
		document.getElementById("tr_btn").style.display = "none";
	}
	function fn_modify_article(obj) {
		obj.action = "${contextPath}/board/modArticle.do";
		obj.submit();
	}
	function fn_remove_article(url, articleNO) {
		var form = document.createElement("form");
		form.setAttribute("method", "post");
		form.setAttribute("action", url);
		var articleNOInput = document.createElement("input");
		articleNOInput.setAttribute("type", "hidden");
		articleNOInput.setAttribute("name", "articleNO");
		articleNOInput.setAttribute("value", articleNO);
		form.appendChild(articleNOInput);
		document.body.appendChild(form);
		form.submit();

	}

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#preview').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
</head>
<body>
	<form name="frmArticel" method="post" action="${contextPath }"
		enctype="multipart/form-data">
		<table border=0 align="center">
			<tr>
				<td width=150 align="center" bgcolor=lightblue>글번호</td>
				<td><input type="text" value="${article.articleNO }" disabled />
					<input type="hidden" name="articleNO" value="${article.articleNO}" />
				</td>
			</tr>
			<tr>
				<td width="150" align="center" bgcolor="lightblue">작성자 아이디</td>
				<td><input type=text value="${article.id }" name="writer"
					disabled /></td>
			</tr>
			<tr>
				<td width="150" align="center" bgcolor="lightblue">제목</td>
				<td><input type=text value="${article.title }" name="title"
					id="i_title" disabled /></td>
			</tr>
			<tr>
				<td width="150" align="center" bgcolor="lightblue">내용</td>
				<td><textarea row="20" cols="60" name="content" id="i_content"
						disabled> ${article.content }</textarea>
				</td>
			</tr>
			<c:if
				test="${not empty article.imageFileName && article.imageFileName!='null'}">
				<tr>
					<td width="150" align="center" bgcolor="ADD8E6" rowspan="2">이미지</td>
					<td><input type="hidden" name="originalFileName"
						value="${article.imageFileName }" /> <img
						src="${contextPath}/download.do?articleNO=${article.articleNO}&imageFileName=${arti
cle.imageFileName}"
						id="preview" /><br></td>
				</tr>
				<tr>
					<td><input type="file" name="imageFileName"
						id="i_imageFileName" disabled onchange="readURL(this);" /></td>
				</tr>
			</c:if>
			<tr>
				<td width="150" align="center" bgcolor="lightblue">등록일자</td>
			<tr id="tr_btn_modify">
				<td colspan="2" align="center"><input type=button
					value="수정반영하기" onClick="fn_modify_article(frmArticle)"> <input
					type=button value="취소" onClick="backToList(frmArticle)"></td>
			</tr>
			<tr id="tr_btn">
				<td colspan="2" align="center"><input type=button value="수정하기"
					onClick="fn_enable(this.form)"> <input type=button
					value="삭제하기"
					onClick="fn_remov e_article('${contextP ath}/board/removeArticl e.do',
${article.articleNO})">
					<input type=button value="리스트로 돌아가기"
					onClick="backToList(this.form)"> <input type=button
					value="답글쓰기"
					onClick="fn_reply_form('${contextPath}/board/replyForm.do',
${article.articleNO })">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>