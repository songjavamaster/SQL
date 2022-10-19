<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 동적인 페이지 포함 -->
<jsp:include page="/WEB-INF/views/template/sellerheader.jsp" />
<jsp:include page="/WEB-INF/views/template/sellerSide.jsp" />
<title>Insert title here</title>
<style type="text/css">
   .allcontent table{border-collapse: collapse;width: 900px; text-align:center;}
   .allcontent thead td {background: #FEE3EC;}
   .allcontent td { padding:10px;border-bottom: 1px solid lightgray;}

	h4{
		margin-left:600px;
	}
   a {
      text-decoration: none;
   }
</style>
</head>
<!--완전 REVIEWBOARDLIST따와서 비슷한형식으로 컨트롤러구성하고 XML에만 WHERE조건절 추가해주기  -->
<body>
	<div class="allcontent">   
	<div id="title"><h4>호텔 리뷰관리 페이지</h4></div>
	   <table>
	      <thead>
	         <tr>
	            <td>ID</td>
	            <td>제목</td>
	            <td>작성일</td>
	            <td>호실</td>
	            <td>평점</td>
	         </tr>
	      </thead>
	      <tbody>
	         <c:if test="${empty list}">
	            <tr>
	               <td style="text-align:center;" colspan="5">작성된 게시글이 없습니다.</td>
	            </tr>
	         </c:if>
	         <c:if test="${not empty list}">
	            <c:forEach var="hDTO" items="${list}">
	               <tr>
	                  <td>${hDTO.mId}</td>
	                  <td><a href="ReviewBoardViewPage?rNo=${hDTO.rNo}&mId=${hDTO.mId}">${hDTO.rTitle }</a></td>
	                  <td>${hDTO.rRegDate}</td>
	                  <td>${hDTO.gName }</td>
	                  <td>${hDTO.rRating } / 5.0</td>
	               </tr>
	            </c:forEach>
	         </c:if>
	      </tbody>
	      <tfoot>
	      <tr>
	               <td colspan="5">${pageView}</td> 
	      </tr>
	      </tfoot>
	   </table>
	</div>

</body>
</html>
<!-- 정적페이지 포함 -->
<%@ include file="/WEB-INF/views/template/footer.jsp" %>