package com.koreait.hotelfive.command.member;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;

public class AdminSellerExtendOKCommand implements Command {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		int extend = Integer.parseInt(request.getParameter("extend"));
		System.out.println("extend : " + extend); 
		int sNo = Integer.parseInt(request.getParameter("sNo"));
		System.out.println("sno : " + sNo); 
		
		

		HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
		
		model.addAttribute("extend", extend);
		model.addAttribute("sNo", sNo);
		
		hDAO.adminSellerExtendOK(extend, sNo); // 예약승인하기

	}

}
