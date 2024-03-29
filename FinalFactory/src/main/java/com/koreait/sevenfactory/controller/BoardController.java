package com.koreait.sevenfactory.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.koreait.sevenfactory.command.Command;
import com.koreait.sevenfactory.command.noticeboard.NoticeBoardDownloadCommand;
import com.koreait.sevenfactory.command.noticeboard.NoticeBoardInsertCommand;
import com.koreait.sevenfactory.command.noticeboard.NoticeBoardListCommand;
import com.koreait.sevenfactory.command.noticeboard.NoticeBoardViewCommand;
import com.koreait.sevenfactory.command.qnaboard.QNABoardDeleteCommand;
import com.koreait.sevenfactory.command.qnaboard.QNABoardInsertCommand1;
import com.koreait.sevenfactory.command.qnaboard.QNABoardInsertCommand2;
import com.koreait.sevenfactory.command.qnaboard.QNABoardListCommand;
import com.koreait.sevenfactory.command.qnaboard.QNABoardReplyDeleteCommand;
import com.koreait.sevenfactory.command.qnaboard.QNABoardReplyInsertCommand;
import com.koreait.sevenfactory.command.qnaboard.QNABoardReplyUpdateCommand;
import com.koreait.sevenfactory.command.qnaboard.QNABoardUpdateCommand;
import com.koreait.sevenfactory.command.qnaboard.QNABoardViewCommand;
import com.koreait.sevenfactory.command.reviewboard.ReviewBoardDeleteCommand;
import com.koreait.sevenfactory.command.reviewboard.ReviewBoardInsertCommand;
import com.koreait.sevenfactory.command.reviewboard.ReviewBoardListCommand;
import com.koreait.sevenfactory.command.reviewboard.ReviewBoardReplyDeleteCommand;
import com.koreait.sevenfactory.command.reviewboard.ReviewBoardReplyInsertCommand;
import com.koreait.sevenfactory.command.reviewboard.ReviewBoardReplyUpdateCommand;
import com.koreait.sevenfactory.command.reviewboard.ReviewBoardUpdateCommand;
import com.koreait.sevenfactory.command.reviewboard.ReviewBoardViewCommand;
import com.koreait.sevenfactory.dao.SevenFactoryDAO;

@Controller
public class BoardController {

   @Autowired
   private SqlSession sqlSession;
   private Command command;

   //QNA

   @RequestMapping(value="qnaBoardList", method=RequestMethod.GET)
   public String qnaBoardList(HttpServletRequest request, Model model) {
      model.addAttribute("request", request);
      command = new QNABoardListCommand();
      command.execute(sqlSession, model);
      return "qnaBoard/qnaBoardListPage";
   }
   
   @RequestMapping("qnaBoardView")
   public String qnaBoardView(HttpServletRequest request, Model model) {
      model.addAttribute("request", request);
      command = new QNABoardViewCommand();
      command.execute(sqlSession, model);
      return "qnaBoard/qnaBoardViewPage";
   }
   
   @RequestMapping("qnaBoardUpdatePage")
   public String qnaBoardUpdatePage(HttpServletRequest request, Model model) {
      model.addAttribute("request", request);
      command = new QNABoardViewCommand();
      command.execute(sqlSession, model);
      return "qnaBoard/qnaBoardUpdatePage";
   }
   
   @RequestMapping(value="qnaBoardUpdate", method=RequestMethod.POST)
   public String qnaBoardUpdate(HttpServletRequest request, Model model) {
      model.addAttribute("request", request);
      command = new QNABoardUpdateCommand();
      command.execute(sqlSession, model);
      return "redirect:qnaBoardView";
   }
   
   @RequestMapping(value="qnaBoardDelete", method=RequestMethod.POST)
   public String qnaBoardDelete(HttpServletRequest request, Model model) {
      model.addAttribute("request", request);
      command = new QNABoardDeleteCommand();
      command.execute(sqlSession, model);
      return "redirect:qnaBoardList";
   }
   
   @RequestMapping("qnaBoardInsertPage")
   public String qnaBoardInsertPage() {
      return "qnaBoard/qnaBoardInsertPage";
   }
   
   @RequestMapping(value="qnaBoardInsert1", method=RequestMethod.POST)
   public String qnaBoardInsert1(HttpServletRequest request, Model model) {
      model.addAttribute("request", request);
      command = new QNABoardInsertCommand1();
      command.execute(sqlSession, model);
      return "redirect:qnaBoardList";
   }
   
   @RequestMapping(value="qnaBoardInsert2", method=RequestMethod.POST)
   public String qnaBoardInsert2(HttpServletRequest request, Model model) {
      model.addAttribute("request", request);
      command = new QNABoardInsertCommand2();
      command.execute(sqlSession, model);
      return "redirect:qnaBoardList";
   }
   
   @RequestMapping(value="qnaBoardReplyInsert", method=RequestMethod.POST)
   public String qnaBoardReplyInsert(HttpServletRequest request, Model model) {
      model.addAttribute("request", request);
      int qNo = Integer.parseInt(request.getParameter("qNo"));
      command = new QNABoardReplyInsertCommand();
      command.execute(sqlSession, model);
      return "redirect:qnaBoardView?qNo="+qNo;
   }
   
   @RequestMapping(value="qnaBoardReplyDelete", method=RequestMethod.POST)
   public String qnaBoardReplyDelete(HttpServletRequest request, Model model) {
      model.addAttribute("request", request);
      int qNo = Integer.parseInt(request.getParameter("qNo"));
      command = new QNABoardReplyDeleteCommand();
      command.execute(sqlSession, model);
      return "redirect:qnaBoardView?qNo="+qNo;
   }
   
   @RequestMapping(value="qnaBoardReplyUpdate", method=RequestMethod.POST)
   public String qnaBoardReplyUpdate(HttpServletRequest request, Model model) {
      model.addAttribute("request", request);
      int qNo = Integer.parseInt(request.getParameter("qNo"));
      command = new QNABoardReplyUpdateCommand();
      command.execute(sqlSession, model);
      return "redirect:qnaBoardView?qNo="+qNo;
   }

   //************************************************************************************//
   //review
         @RequestMapping(value="ReviewBoardListPage", method=RequestMethod.GET)
         public String goBoardList(HttpServletRequest request, Model model) {
            model.addAttribute("request", request);
            command = new ReviewBoardListCommand();
            command.execute(sqlSession, model);
            return "review/ReviewBoardListPage";
         }
         
         //리뷰작성페이지
       @RequestMapping("ReviewBoardInsertPage")
       public String boardInsertPage(HttpServletRequest request, Model model) {
    	   String gName = request.getParameter("gName");
    	   System.out.println("gName : "+ gName);
    	   model.addAttribute("gName",gName);
          return "review/ReviewBoardInsertPage";
       }
       //리뷰추가
         @RequestMapping(value="ReviewBoardInsert", method=RequestMethod.POST)
         public String boardInsert(MultipartHttpServletRequest mr, Model model) {
            model.addAttribute("mr", mr);
            command = new ReviewBoardInsertCommand();
            command.execute(sqlSession, model);
            return "redirect:ReviewBoardListPage";
         }
         
         @RequestMapping("ReviewBoardViewPage")
         public String boardViewPage(HttpServletRequest request, Model model) {
            model.addAttribute("request", request);
            command = new ReviewBoardViewCommand();
            command.execute(sqlSession, model);
            return "review/ReviewBoardViewPage";
         }
         
         @RequestMapping(value="ReviewBoardDelete", method=RequestMethod.POST)
         public String boardDelete(HttpServletRequest request, Model model) {
            model.addAttribute("req", request);
            command = new ReviewBoardDeleteCommand();
            command.execute(sqlSession, model);
            return "redirect:ReviewBoardListPage";
         }
         
         @RequestMapping("ReviewBoardUpdatePage")
         public String boardUpdatePage(HttpServletRequest request, Model model) {
            model.addAttribute("request", request);
            command = new ReviewBoardViewCommand();
            command.execute(sqlSession, model);
            return "review/ReviewBoardUpdatePage";
         }
         
         @RequestMapping(value="ReviewBoardUpdate", method=RequestMethod.POST)
         public String boardUpdate(MultipartHttpServletRequest mr, Model model) {
        	 System.out.println("들림");
            model.addAttribute("mr", mr);
            command = new ReviewBoardUpdateCommand();
            command.execute(sqlSession, model);
            return "review/ReviewBoardListPage";
         }
         
         @RequestMapping(value="ReviewBoardReplyInsert", method=RequestMethod.POST)
         public String ReviewBoardReplyInsert(HttpServletRequest request, Model model) {
            model.addAttribute("request", request);
            int rNo = Integer.parseInt(request.getParameter("rNo"));
            command = new ReviewBoardReplyInsertCommand();
            command.execute(sqlSession, model);
            return "redirect:ReviewBoardViewPage?rNo="+rNo;
         }
         
         @RequestMapping(value="ReviewBoardReplyDelete", method=RequestMethod.POST)
         public String boardReplyDelete(HttpServletRequest request, Model model) {
            model.addAttribute("request", request);
            int rNo = Integer.parseInt(request.getParameter("rNo"));
            command = new ReviewBoardReplyDeleteCommand();
            command.execute(sqlSession, model);
            return "redirect:ReviewBoardViewPage?rNo="+rNo;
         }
         
         @RequestMapping(value="ReviewBoardReplyUpdate", method=RequestMethod.POST)
         public String boardReplyUpdate(HttpServletRequest request, Model model) {
            model.addAttribute("request", request);
            int rNo = Integer.parseInt(request.getParameter("rNo"));
            command = new ReviewBoardReplyUpdateCommand();
            command.execute(sqlSession, model);
            return "redirect:ReviewBoardViewPage?rNo="+rNo;
         }     

      //***********************************************************************************//
      
      
      // notice
      @RequestMapping("noticeBoardListPage")
      public String noticeBoardListPage(HttpServletRequest request, Model model) {
         model.addAttribute("request", request);
         command = new NoticeBoardListCommand();
         command.execute(sqlSession, model);
         return "noticeBoard/noticeBoardListPage";
      }
      @RequestMapping("noticeBoardInsertPage")
      public String noticeBoardInsertPage() {
         return "noticeBoard/noticeBoardInsertPage";
      }
      @RequestMapping(value="noticeBoardInsert", method=RequestMethod.POST)
      public String noticeBoardInsert(RedirectAttributes rttr, MultipartHttpServletRequest mr, Model model) {
         model.addAttribute("mr", mr);
         model.addAttribute("rttr", rttr);
         command = new NoticeBoardInsertCommand();
         command.execute(sqlSession, model);
         return "redirect:noticeBoardListPage";
      }
      @RequestMapping("noticeBoardViewPage")
      public String noticeBoardViewPage(HttpServletRequest request, Model model) {
         model.addAttribute("request", request);
         command = new NoticeBoardViewCommand();
         command.execute(sqlSession, model);
         return "noticeBoard/noticeBoardViewPage";
      }
      @RequestMapping("noticeViewFileDownload")
      public void noticeViewFileDownload(HttpServletRequest request, HttpServletResponse response, Model model) {
         model.addAttribute("request", request);
         model.addAttribute("response", response);
         command = new NoticeBoardDownloadCommand();
         command.execute(sqlSession, model);
      }
      @RequestMapping(value="noticeBoardDelete", produces="application/json")
      @ResponseBody
      public String noticeBoardDelete(HttpServletRequest request) {
         
         int nNo = Integer.parseInt(request.getParameter("nNo"));
         SevenFactoryDAO sDAO = sqlSession.getMapper(SevenFactoryDAO.class);
         JSONObject obj = new JSONObject();
         int result = sDAO.deleteNoticeBoard(nNo);
         if (result != 0) {
            obj.put("result", "YES");
         } else {
            obj.put("result", "NO");
         }
         return obj.toJSONString();
      }
      
      
      
   
}