package com.spring.member.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.member.service.MemberService;
import com.spring.member.VO.MemberVO;

@Controller("memberController")
public class MemberControllerImpl implements MemberController {
   @Autowired
   private MemberService memberService;
   @Autowired
   MemberVO memberVO;
   @Override
   @RequestMapping(value = "/member/listMembers.do", method = RequestMethod.GET)
   public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception {
      String viewName = getViewName(request);
      List memberList = memberService.listMembers();
      ModelAndView mav = new ModelAndView(viewName);
      mav.addObject("memberList",memberList);
      return mav;
   }
   @Override
   @RequestMapping(value = "/member/addMember.do", method = RequestMethod.POST)
   public ModelAndView addMember(@ModelAttribute("member") MemberVO member, HttpServletRequest request, HttpServletResponse response)
   throws Exception {
      request.setCharacterEncoding("utf-8");
      int result = 0;
      result = memberService.addMember(member);
      ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
      return mav;
   }
   @Override
   @RequestMapping(value = "/member/removeMember.do", method = RequestMethod.GET)
   public ModelAndView removeMember(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response)
   throws Exception {
      request.setCharacterEncoding("utf-8");
      memberService.removeMember(id);
      ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
      return mav;

   }
   

   @RequestMapping(value = "/member/*Form.do", method = RequestMethod.GET)
   public ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
      String viewName = getViewName(request);
      ModelAndView mav = new ModelAndView();
      mav.setViewName(viewName);
      return mav;
      
   }
   
   
   private String getViewName(HttpServletRequest request) throws Exception{
      String contextPath = request.getContextPath();
      String uri = (String)request.getAttribute("javax.servlet.forward.request_uri");
      if(uri == null || uri.trim().equals("")) {
         uri = request.getRequestURI();
      }
      int begin = 0;
      if(!((contextPath == null) || ("".equals(contextPath)))) {
         begin = contextPath.length();
      }
      int end;
      if(uri.indexOf(";") != -1) {
         end = uri.indexOf(";");
      }else if(uri.indexOf("?")!= -1) {
         end = uri.indexOf("?");
      }else {
         end=uri.length();
      }
      String fileName = uri.substring(begin,end);
      if(fileName.indexOf(".")!= -1) {
         fileName = fileName.substring(0,fileName.lastIndexOf("."));
      }
      if(fileName.lastIndexOf("/")!= -1) {
         fileName = fileName.substring(fileName.lastIndexOf("/"),fileName.length());
      }
      return fileName;
   }
   
   

}