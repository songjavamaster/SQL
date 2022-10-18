package com.koreait.hotelfive.command.admin;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;

public class AdminblacklistCommand implements Command {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		
	
		HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);		
		hDAO.mright();
	}

}
