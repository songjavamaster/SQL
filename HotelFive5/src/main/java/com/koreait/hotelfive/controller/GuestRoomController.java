package com.koreait.hotelfive.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.command.HotelListCommand;
import com.koreait.hotelfive.command.RoomDetailCommand;
import com.koreait.hotelfive.command.RoomListCommand;
import com.koreait.hotelfive.command.RoomViewCommand;
import com.koreait.hotelfive.dao.HotelFiveDAO;
import com.koreait.hotelfive.dto.HotelDTO;
import com.koreait.hotelfive.dto.MemberDTO;

@Controller
public class GuestRoomController {
	
	@Autowired
	private SqlSession sqlSession;
	private Command command;

		@RequestMapping("hotelroomListPage")
		public String hotelroomListPage(HttpServletRequest request,Model model) {
			/*
			 * model.addAttribute("request", request); command = new RoomListCommand();
			 * command.execute(sqlSession, model);
			 */
			return "guestroom/roomDetailPage";
		}
		
		// 객실 상세정보 리스트
		@RequestMapping("roomViewPage")
		public String roomViewPage(HttpServletRequest request, Model model) {
			// 객실 번호 넘기기 	
			model.addAttribute("request", request);	
			command = new RoomViewCommand();
			command.execute(sqlSession, model);
			return "guestroom/roomViewPage";
		}
		
		//객실 상세페이지 
		@RequestMapping("romdetail")
		public String gotodetail(HttpServletRequest request,Model model) {
			model.addAttribute("request",request);
			int hNo=Integer.parseInt(request.getParameter("hNo"));
			HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
			ArrayList<HotelDTO> list = hDAO.hotelinfo(hNo);
			model.addAttribute("list",list);
			command = new RoomDetailCommand();
			command.execute(sqlSession, model);
			return "guestroom/roomDetailPage";
		}
}
