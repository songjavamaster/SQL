package com.koreait.hotelfive.command.seller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;
import com.koreait.hotelfive.dto.EventDTO;

public class EventExtendCommand implements Command {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
		System.out.println("하하");
		String sId = request.getParameter("sId");
		System.out.println("확인1 : " + sId);
		ArrayList<EventDTO> gName = hDAO.gnameBysId(sId); //뷰로 보낼 방이름들
		System.out.println("gName123 : " + gName); 
		model.addAttribute("list", gName);
		model.addAttribute("sId",sId);

	}

}
