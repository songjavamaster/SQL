package com.koreait.hotelfive.command.admin;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;

public class AdminReviewDeleteOKCommand implements Command {

   @Override
   public void execute(SqlSession sqlSession, Model model) {
      
      Map<String, Object> map = model.asMap();
      HttpServletRequest request = (HttpServletRequest) map.get("request");
      
      String mId = request.getParameter("mId");
      System.out.println("mId : " + mId);    

      HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
      
      model.addAttribute("mId", mId);
      
      hDAO.adminSellerReviewDeleteOK(mId); // 예약승인하기

   }

}