package com.koreait.hotelfive.common;

public class PageMaker {
	// qna 관련
	public static String getPageView(String path, int page, int recordPerPage, int totalRecord) {

		StringBuffer sb = new StringBuffer();

		int totalPage = 0;
		int pagePerBlock = 5; // 얘는 페이징 블록 범위
		int beginPageOfBlock = 0; // 페이징 블록당 첫 번호
		int endPageOfBlock = 0; // 페이징 블록당 마지막 번호

		// totalPage -> 몫을 찾는 과정
		// tatalRecore -> 전체 공지 갯수 / recordPerPage -> 한페이지당 들어갈 수 있는 공지 갯수
		totalPage = (int) (totalRecord / recordPerPage);// -->0
		// 나머지가 0이 아니라면 totalPage를 1증가시켜라
		if (totalRecord % recordPerPage != 0) { // 2/5 -> 0 ,2
			totalPage++; // totalPage -> 1
		}
		// ex) 내가 쓴 글이 페이지의 한도를 넘으면 페이지 갯수를 늘려버림 하지만 페이지는 1부터 시작이니 0일때는 1을 추가

		// page는 default가 1 하지만, 만약에 request에 page가 있다면, 그 값을 덮어쒸움
		// tatalPage -> 페이지의 갯수
		// 페에지의 갯수가 page보다 적다면 totalPage에 page의 갯수를 대입
		if (page > totalPage) {
			totalPage = page;
		}
		// (등록된글이 없어도 1페이지 생성을 위해서) //22 -> 1page당 5개로하면 5개의 totalPage가 생김

		// 승현이 상담 목록 1
		beginPageOfBlock = (int) (((page - 1) / pagePerBlock) * pagePerBlock) + 1;
		// 1,2,3,4
		// 1 beginRecord
		endPageOfBlock = beginPageOfBlock + pagePerBlock - 1;
		// 5,6,7,8

		// 넘으면 마지막 totalpage넣어라
		if (endPageOfBlock > totalPage) {
			endPageOfBlock = totalPage;
			// 위에서 계산한 totalPage를 endPageOfBlock에 넣어주기 위함
		}
		// endPageofBlock=3 beginPageOfBlock = 1 endRecord=5 pagePerBlock=5 page=1설정완료

		// 이전 버튼 표시
		// to 언젠가 이 글을 보게 될 인재형한테
		// beginPageOfBlock 은 페이지의 첫번째수를 의미합니다.
		// pageFerBlock = 5인 상수입니다.
		// 즉, 5보다 작다면, 회색으로 아무 기능이 없는 왼쪽 화살표를 넣고
		// 그 이후 5부터 화살표에 a 태그를 걸어서 이동이 가능하도록 만들었는데 -> 이동하는것은 현재 beginPageofBlock-1을
		// 한수입니다.
		// from 지섭
		if (beginPageOfBlock < pagePerBlock) {
			sb.append("<span style='color: lightgray;'>◀</span>&nbsp;&nbsp;");
			// 버튼표시
		} else {
			sb.append("<a href='" + path + "?page=" + (beginPageOfBlock - 1) + "'>◀</a>&nbsp;&nbsp;");
		}

		// 페이지 번호 표시
		// 단순하게 pageBlock의 초기수부터 endpage까지 1씩 증가시켜서 반복합니다.
		for (int p = beginPageOfBlock; p <= endPageOfBlock; p++) {
			// 만약에 page와 p가 같다면
			// 번호를 회색으로 나타내고
			if (p == page) {
				sb.append("<span style='color: lightgray;'>" + p + "</span>&nbsp;&nbsp;");
				// html에 번호 추가 1~3
				// 아니라면 p태그에 이동을 할 수 있도록 만듭니다.
			} else {
				sb.append("<a href='" + path + "?page=" + p + "'>" + p + "</a>&nbsp;&nbsp;");

			}
		}

		// 다음 버튼 표시
		// 만약에 블록의 마지막퓨ㅔ이지가 5보다 작다면 회갯이고
		if (endPageOfBlock < 5) {
			sb.append("<span style='color: lightgray;'>▶</span>");
		} else {
			if (totalPage % 5 == 1 && endPageOfBlock % 5 == 1) {
				sb.append("<span style='color: lightgray;'>▶</span>");
			} else {
				if (totalPage <= endPageOfBlock) {
					sb.append("<span style='color: lightgray;'>▶</span>");
				} else {
					if (totalPage % 5 == 1 && endPageOfBlock % 5 == 0) {
						sb.append("<a href='" + path + "?page=" + (endPageOfBlock + 1) + "'>▶</a>&nbsp;&nbsp;");
					} else {
						sb.append("<a href='" + path + "?page=" + (endPageOfBlock + 1) + "'>▶</a>&nbsp;&nbsp;");
					}
				}
			}
		}

		/*
		 * end 5 미만일땐 무조건 다음으로 가는 버튼 비활성화 토탈페이지가 6,11,16,21 && end 5,10,15,20 버튼활성화
		 * 
		 * 토탈페이지가 6,11,16,21 && end 6,11,16,21 일때는 버튼 비활성화
		 * 
		 * 토탈페이지가 < 엔드페이지 일때는 비활성화
		 */

		return sb.toString();

	}

}
