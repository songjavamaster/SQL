package com.koreait.hotelfive.command.admin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;

public class EventCancleOKCommand implements Command {

	@Override
	public void execute(SqlSession sqlSession, Model model) {


		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		
		int eNo = Integer.parseInt(request.getParameter("eNo"));
		System.out.println("eno : " + eNo);
		HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);

		hDAO.adminEventCancleOK(eNo); // 예약승인하기
		

	}
}
