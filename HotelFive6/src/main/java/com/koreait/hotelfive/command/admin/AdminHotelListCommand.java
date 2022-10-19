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
import com.koreait.hotelfive.dto.HotelDTO;
import com.koreait.hotelfive.dto.SellerDTO;

public class AdminHotelListCommand implements Command {

   @Override
   public void execute(SqlSession sqlSession, Model model) {
      // TODO Auto-generated method stub

      // DB에서 호텔list 가져오기
      HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
      ArrayList<HotelDTO> list = hDAO.hotelnoapprovalList();
      // 전체 호텔 수가져오기
      int totalRecord = hDAO.getTotalHotel();

      // request 에 저장해서 전달할 데이터
      model.addAttribute("list", list);

      model.addAttribute("totalRecord", totalRecord);
   }

}