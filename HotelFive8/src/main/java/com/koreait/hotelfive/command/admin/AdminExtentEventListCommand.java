package com.koreait.hotelfive.command.admin;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;
import com.koreait.hotelfive.dto.EventDTO;

public class AdminExtentEventListCommand implements Command {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		Map<String, Object> map = model.asMap();
	      HttpServletRequest request = (HttpServletRequest) map.get("request");
	      
	      HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
	      

	      ArrayList<EventDTO> list = hDAO.selectExtendEvent(); // 예약승인하기
	      System.out.println("list check" + list);
	      model.addAttribute("list",list);

	}
}
