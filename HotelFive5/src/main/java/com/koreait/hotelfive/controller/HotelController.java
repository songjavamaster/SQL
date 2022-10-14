package com.koreait.hotelfive.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.command.HotelListCommand;
import com.koreait.hotelfive.command.RoomListCommand;
import com.koreait.hotelfive.command.reviewboard.MainReviewCommand;
import com.koreait.hotelfive.command.seller.SellerMainCommand;
import com.koreait.hotelfive.dao.HotelFiveDAO;
import com.koreait.hotelfive.dto.MemberDTO;
import com.koreait.hotelfive.dto.SellerDTO;

@Controller
public class HotelController {
	@Autowired 
	private SqlSession sqlSession;
	private Command command;
	

	@RequestMapping("/")
	public String goMainPage(HttpServletRequest request,Model model) {
		command = new MainReviewCommand();
		command.execute(sqlSession, model);
		command = new HotelListCommand();
		command.execute(sqlSession, model);
		return "index";
	}
	@RequestMapping("main") 
	public String goMainPage2(HttpServletRequest request,Model model) {
		command = new MainReviewCommand();
		command.execute(sqlSession, model);
		command = new HotelListCommand();
		command.execute(sqlSession, model);
		return "index";
	}
	@RequestMapping("main2") 
	public String goMainPage3(HttpServletRequest request,Model model) {

		return "noticeBoard/noticeBoardInsertPage";
	}
	

	

}
