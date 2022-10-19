package com.koreait.hotelfive.command.admin;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;
import com.koreait.hotelfive.dto.BlackListDTO;

public class AdminblacklistCommand implements Command {

   @Override
   public void execute(SqlSession sqlSession, Model model) {
      
   
      HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);   
      ArrayList<BlackListDTO> list = hDAO.mright();
      model.addAttribute("list",list);
   }

}