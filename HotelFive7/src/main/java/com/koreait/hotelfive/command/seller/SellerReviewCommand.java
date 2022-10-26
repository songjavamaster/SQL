package com.koreait.hotelfive.command.seller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;
import com.koreait.hotelfive.dto.ReviewDTO;

public class SellerReviewCommand implements Command {

   @Override
   public void execute(SqlSession sqlSession, Model model) {

      Map<String, Object> map = model.asMap();

      HttpServletRequest request = (HttpServletRequest) map.get("request");

      //String gName = request.getParameter("gName");
      String sId = request.getParameter("sId");

      System.out.println("sid : " +sId);

      HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
      ArrayList<ReviewDTO> list = hDAO.selectSellerReviewRequest(sId);
      System.out.println("list : " + list);

      model.addAttribute("list", list);
      //model.addAttribute("gName", gName);
   }

}