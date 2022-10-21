package com.koreait.hotelfive.command.noticeboard;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.common.PageMaker;
import com.koreait.hotelfive.dao.HotelFiveDAO;
import com.koreait.hotelfive.dto.NoticeDTO;

public class NoticeBoardListCommand implements Command {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> mMap = model.asMap();
		HttpServletRequest request = (HttpServletRequest) mMap.get("request");
		int page = 1;
		if (request.getParameter("page") != null) { 
			//만약에 request안에 page가 있다면 page에 request에서 받은 page로 바꿔라
			page = Integer.parseInt(request.getParameter("page"));
		 }
			
		int recordPerPage = 5;
		//한페이지당 5개까지 받을 수 있음 -> 
//		int beginRecord = ( page-1 ) * recordPerPage + 1;
//		int endRecord = beginRecord + recordPerPage - 1;
		int beginRecord2 = ( page-1 ) * recordPerPage ;
		// 0,5,10
		Map<String, Integer> map = new HashMap<String, Integer>();
	    map.put("beginRecord2", beginRecord2);


	    // session 에 저장된 open 속성 삭제
 		HttpSession session = request.getSession();
 		session.removeAttribute("open");
	    
		HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
		ArrayList<NoticeDTO> list = hDAO.selectNoticeBoardList(map);
		
		int totalRecord = hDAO.getTotalRecordNotice();
		String pageView = PageMaker.getPageView("noticeBoardListPage", page, recordPerPage, totalRecord); 
		model.addAttribute("list", list);
		model.addAttribute("page", page);
	    model.addAttribute("pageView", pageView);
	    model.addAttribute("totalRecord", totalRecord);

	}

}
