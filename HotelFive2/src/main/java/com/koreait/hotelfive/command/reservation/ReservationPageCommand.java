package com.koreait.hotelfive.command.reservation;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;
import com.koreait.hotelfive.dto.GuestRoomDTO;

public class ReservationPageCommand implements Command {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		int hNo = Integer.parseInt(request.getParameter("hNo"));
		int gNo = Integer.parseInt(request.getParameter("gNo"));
		String rCheckIn = request.getParameter("rCheckIn");
		String rCheckOut = request.getParameter("rCheckOut");
		HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
		GuestRoomDTO gDTO = hDAO.selectGuestRoom(gNo);

		model.addAttribute("gDTO", gDTO);
		model.addAttribute("rCheckIn",rCheckIn);
		model.addAttribute("rCheckOut",rCheckOut);
		model.addAttribute("hNo", hNo);
		
	}

}
