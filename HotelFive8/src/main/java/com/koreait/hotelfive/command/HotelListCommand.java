package com.koreait.hotelfive.command;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.dao.HotelFiveDAO;
import com.koreait.hotelfive.dto.HotelDTO;

public class HotelListCommand implements Command {

   @Override
   public void execute(SqlSession sqlSession, Model model) {
      // TODO Auto-generated method stub

      HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
      ArrayList<HotelDTO> list = hDAO.hotelList();
      model.addAttribute("list", list);
      System.out.println("hotellistcommand:"+model);
   }

}