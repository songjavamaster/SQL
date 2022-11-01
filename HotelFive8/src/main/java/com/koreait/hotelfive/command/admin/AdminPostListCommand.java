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
import com.koreait.hotelfive.dto.NoticeDTO;
import com.koreait.hotelfive.dto.QNADTO;
import com.koreait.hotelfive.dto.ReviewDTO;

public class AdminPostListCommand implements Command {

   @Override
   public void execute(SqlSession sqlSession, Model model) {

      Map<String, Object> map1 = model.asMap();
      HttpServletRequest request = (HttpServletRequest) map1.get("request");
      int page = 1;
      if (request.getParameter("page") != null) {
         page = Integer.parseInt(request.getParameter("page"));
      }

      // page 를 알아야 가져올 list 의 begin 과 end 를 알 수 있다.(ex. 1 ~ 10, 11 ~ 20)
      int recordPerPage = 5; // 한페이지의 게시물 갯수
      int beginRecord = (page - 1) * recordPerPage;

      //NOTICE
      Map<String, Integer> map3 = new HashMap<String, Integer>();
      map3.put("beginRecord", beginRecord);
      System.out.println(map3.get("beginRecord"));

      //QNA
      Map<String, Integer> map4 = new HashMap<String, Integer>();
      map4.put("beginRecord", beginRecord);

      //REVIEW
      Map<String, Integer> map5 = new HashMap<String, Integer>();
      map5.put("beginRecord", beginRecord);

      // DB에서 list 가져오기
      HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
      ArrayList<NoticeDTO> list = hDAO.adminNoticeList(map3);
      ArrayList<QNADTO> list2 = hDAO.adminQnaList(map4);
      ArrayList<ReviewDTO> list3 = hDAO.adminReviewList(map5);

      // 전체 게시글 갯수 구하기
      int totalPostRecord = hDAO.getTotalPost();
      int totalQnaRecord = hDAO.getTotalQna();
      int totalNoticeRecord = hDAO.getTotalNotice();
      int totalReviewRecord = hDAO.getTotalReview();

      // 페이지 ( << 1 2 3 >> )
      String pageView = PageMaker.getPageView("adminPostList", page, recordPerPage, totalPostRecord);
//      page = page - 1;
//      System.out.println("page 123 : " + page);
      // request 에 저장해서 전달할 데이터
      model.addAttribute("page", page);
      model.addAttribute("list", list);
      model.addAttribute("list2", list2);
      model.addAttribute("list3", list3);
      model.addAttribute("pageView", pageView);
      model.addAttribute("totalQnaRecord", totalQnaRecord);
      model.addAttribute("totalNoticeRecord", totalNoticeRecord);
      model.addAttribute("totalReviewRecord", totalReviewRecord);
   }
}