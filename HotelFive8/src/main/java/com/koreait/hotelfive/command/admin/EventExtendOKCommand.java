package com.koreait.hotelfive.command.admin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;

public class EventExtendOKCommand implements Command {
	@Override
	public void execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		System.out.println("123123123123");
		int eNo = Integer.parseInt(request.getParameter("eNo"));
		System.out.println("eNo : " + eNo);
		HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
		String eUpdate = hDAO.selectUpdateByeNo(eNo);
		System.out.println("안녕 인재형요 : " + eUpdate);
		
		model.addAttribute("eNo", eNo);

		hDAO.adminEventExtendOK(eNo,eUpdate); // 예약승인하기

	}

	
}
