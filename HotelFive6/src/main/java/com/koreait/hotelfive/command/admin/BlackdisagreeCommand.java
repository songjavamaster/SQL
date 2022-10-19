package com.koreait.hotelfive.command.admin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;

public class BlackdisagreeCommand implements Command {

      @Override
      public void execute(SqlSession sqlSession, Model model) {

               Map<String, Object> map = model.asMap();//맵을 인덱스 순으로 정렬 map1 map2 이런식으로 따지자면
               HttpServletRequest request = (HttpServletRequest) map.get("request");
               
               
               int bNo = Integer.parseInt(request.getParameter("bNo"));
               HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
               hDAO.blackdisagree(bNo);
            
      }

   }

