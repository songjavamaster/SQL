package com.koreait.hotelfive.command.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.common.PageMaker;
import com.koreait.hotelfive.dao.HotelFiveDAO;
import com.koreait.hotelfive.dto.ReviewDTO;

public class AdminReviewListCommand implements Command {

   @Override
   public void execute(SqlSession sqlSession, Model model) {

      Map<String, Object> map = model.asMap();
         HttpServletRequest request = (HttpServletRequest) map.get("request");
         
      
         
      // DB에서 사업자list 가져오기
      HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
      ArrayList<ReviewDTO> list = hDAO.adminReviewList();
      System.out.println("list : " + list);
      
      model.addAttribute("list", list);
   }
}