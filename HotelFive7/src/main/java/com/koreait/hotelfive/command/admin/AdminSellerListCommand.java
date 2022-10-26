package com.koreait.hotelfive.command.admin;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;
import com.koreait.hotelfive.dto.SellerDTO;

public class AdminSellerListCommand implements Command {

   @Override
   public void execute(SqlSession sqlSession, Model model) {
      // TODO Auto-generated method stub

      // DB에서 사업자list 가져오기
      HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
      ArrayList<SellerDTO> list = hDAO.adminsellerlist();
      // 전체 사업자 수가져오기
      int totalRecord = hDAO.getSellerHotel();

      // request 에 저장해서 전달할 데이터
      model.addAttribute("list", list);
      model.addAttribute("totalRecord", totalRecord);
   }

}