package com.koreait.hotelfive.command.seller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;

public class SellerAllReservationCommand implements Command {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
	       HttpServletRequest request = (HttpServletRequest) map.get("request");
	       String sId = request.getParameter("sId");   
		HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
		
		//체크인날짜,체크아웃날짜
		
	}

}
