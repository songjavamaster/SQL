package member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import member.VO.MemberVO;



public interface MemberController {
		   public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception;
		   
		   public ModelAndView addMember(@ModelAttribute("info") 
		   MemberVO memberVO,HttpServletRequest request, HttpServletResponse response) throws Exception;
		   
		   public ModelAndView removeMember(@ModelAttribute("id")
		   String id,HttpServletRequest request, HttpServletResponse response) throws Exception;
		}


