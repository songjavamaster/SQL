package com.koreait.hotelfive.command.seller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;
import com.koreait.hotelfive.dto.ReviewDTO;

public class SellerReviewRequestCommand implements Command {

   @Override
   public void execute(SqlSession sqlSession, Model model) {

      Map<String, Object> map = model.asMap();

      HttpServletRequest request = (HttpServletRequest) map.get("request");
      int rNo = Integer.parseInt(request.getParameter("rNo"));
      System.out.println("rNo : " + rNo);
      String sId = request.getParameter("sId");
      System.out.println("sId : " + sId);

      HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
      hDAO.updateSellerReviewRequest(rNo);
      ArrayList<ReviewDTO> list = hDAO.selectSellerReviewRequest(sId);
      model.addAttribute("list", list);
      model.addAttribute("sId", sId);
      model.addAttribute("rNo", rNo);

   }

}