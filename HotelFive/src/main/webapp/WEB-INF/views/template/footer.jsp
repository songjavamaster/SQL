<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		
		<style>
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
</style>
		<div class="footer">
               <ul class="footer_menu">
                   <li>이용약관</li>
                   <li>개인정보보호정책</li>
                   <li>이메일 무단 수집 금지</li>
                   <li>영상정보처리기기 설치 및 운영방침</li>
               </ul>
               <ul class="company_info">
                   <li>우편번호 : 24901</li>
                   <li>주소 : 대전광역시 서구 둔산동 오라클빌딩10층</li>
                   <li>전화번호 : 042-313-7300</li>
                   <li>팩스번호 : 042-313-0516</li>
                   <li>이메일 : admin@Together.com</li>
               </ul>
               <ul class="company_info">
                   <li>사업체명 : 7Factory</li>                
                   <li>대표자 : 송인재, 송지섭, 강현, 김승현</li>
                   <li>사업자등록번호 : 325-88-00678</li>
                   <li>통신판매신고번호 : 2022-대전 서구-03148호</li>   
               </ul>
               <p>Copyright © 2022 RamadaSokcho inc. All rights reserved.</p>
           </div>

</body>
</html>