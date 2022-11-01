package com.koreait.hotelfive.command.member;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;
import com.koreait.hotelfive.dto.GuestRoomDTO;

public class MemberPointCommand implements Command {

   @Override
   public void execute(SqlSession sqlSession, Model model) {
      // TODO Auto-generated method stub
      Map<String, Object> map = model.asMap();
      HttpServletRequest request = (HttpServletRequest)map.get("request");
      
      String mId=request.getParameter("mId");
      
      HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
      int point = hDAO.memberPoint(mId);
      System.out.println("point"+point);
      model.addAttribute("point",point);
   }

}