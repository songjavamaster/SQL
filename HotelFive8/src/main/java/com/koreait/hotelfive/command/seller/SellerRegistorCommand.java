package com.koreait.hotelfive.command.seller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;
import com.koreait.hotelfive.dto.SellerDTO;

public class SellerRegistorCommand implements Command {

   @Override
   public void execute(SqlSession sqlSession, Model model) {
      // TODO Auto-generated method stub
      Map<String, Object> map = model.asMap();
      HttpServletRequest request = (HttpServletRequest) map.get("request");
   
        SellerDTO sDTO = new SellerDTO();
      System.out.println("sId::"+request.getParameter("sId")); 
      sDTO.setsId(request.getParameter("sId"));
      sDTO.setsPw(request.getParameter("sPw"));
      sDTO.sethName(request.getParameter("hName"));
      sDTO.setsEmail(request.getParameter("sEmail"));
      sDTO.setsPhone(request.getParameter("sPhone"));
      
      HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
    //hotel 더미값 insert 
      hDAO.sellerhotelinsert1();
      //insert한 더미값중 hNma가져오기
       String hName= hDAO.hotelName1();
       //더미 hName 가져왔는지 확인
       System.out.println(hName);
       sDTO.sethName(hName);
       //seller insert(회원가입)
      hDAO.sellerregistor(sDTO);
      
      request.setAttribute("hNmae", request.getParameter("hNmae"));
      
   }

}