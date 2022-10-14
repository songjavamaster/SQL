package com.koreait.hotelfive.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.command.seller.EmailSellerAuthCommand;
import com.koreait.hotelfive.command.seller.SellerMainCommand;
import com.koreait.hotelfive.dao.HotelFiveDAO;
import com.koreait.hotelfive.dto.SellerDTO;

@Controller
public class SellerController {
	@Autowired
	private SqlSession sqlSession;
	@Autowired
	private JavaMailSender mailSender; // root-context.xml 의 빈 자동 생성
	private Command command;

	// @사업자
	@RequestMapping("sellerside")
	public String sellerside() {

		return "template/sellerSide";
	}

	@RequestMapping("sellerMain")
	public String goSellerMainPage(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		command = new SellerMainCommand();
		command.execute(sqlSession, model);
		return "seller/sellerCalendar";
	}

	@RequestMapping("blacklist") 
	public String blackList() {

		return "seller/blackList";
	}

	

	@RequestMapping("sellerhotel")
	public String sellerHotel() {

		return "seller/sellerHotel";
	}

	@RequestMapping("sellerresrevation")
	public String sellerReservation() {

		return "seller/sellerReservation";
	}

	@RequestMapping("sellerreview")
	public String sellerReivew() {

		return "seller/sellerReview";
	}

	@RequestMapping("sellerevent1")
	public String sellerEvent1() {

		return "seller/sellerEvent1";
	}

	@RequestMapping("sellerevent2")
	public String sellerEvent2() {

		return "seller/sellerEvent2";
	}

	// AJAX 통신
	@RequestMapping(value = "sellerlogin", method = RequestMethod.POST)
	@ResponseBody
	public String doLogin(HttpServletRequest request) {

		String sId = request.getParameter("sId");
		String sPw = request.getParameter("sPw");
		System.out.println(sPw);
		HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
		SellerDTO sDTO = hDAO.sellerlogin(sId, sPw);
		JSONObject obj = new JSONObject();

		// mDTo = null이 아니라면 회원 정보가 있음
		if (sDTO != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginDTO", sDTO);
			obj.put("result", "YES");
		}
		// 회원 정보 불러오지 못 함
		else {
			obj.put("result", "NO");
		}

		// 객체 json 문자열로 만들어줌 -> 뷰에서 사용가능
		return obj.toJSONString();
	}

	// 사업자 비밀번호 찾기
	@RequestMapping("findSellerPwPage")
	public String goFindSellerPwPage() {
		return "seller/findSellerPwPage";
	}

	@RequestMapping(value = "findSellerPw", produces = "application/json")
	@ResponseBody
	public String findPw(HttpServletRequest request) {

		String sId = request.getParameter("sId");
		System.out.println("sId::" + sId);
		String sEmail = request.getParameter("sEmail");

		HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
		JSONObject obj = new JSONObject();
		SellerDTO sDTO = hDAO.findSellerPw(sId, sEmail);
		if (sDTO != null) {
			obj.put("result", "YES");
		} else {
			obj.put("result", "NO");
		}
		return obj.toJSONString();
	}

	// 사업자 이메일인증
	@RequestMapping(value = "emailSellerAuth", produces = "application/json")
	@ResponseBody
	public String emailSellerAuth(HttpServletRequest request, Model model) {

		model.addAttribute("request", request);
		model.addAttribute("mailSender", mailSender);
		JSONObject obj = new JSONObject();
		command = new EmailSellerAuthCommand();
		command.execute(sqlSession, model);

		Map<String, Object> map = model.asMap();
		String authKey = (String) map.get("authKey");
		System.out.println(authKey);
		obj.put("authKey", authKey);

		return obj.toJSONString();
	}

	// 사업자 비밀번호변경
	@RequestMapping(value = "changeSellerPw", produces = "application/json")
	@ResponseBody
	public String changPw(HttpServletRequest request) {

		String sId = request.getParameter("sId");
		String sPw = request.getParameter("sPw");

		HotelFiveDAO hDAO = sqlSession.getMapper(HotelFiveDAO.class);
		JSONObject obj = new JSONObject();
		int result = hDAO.changeSellerPw(sPw, sId);
		if (result > 0) {
			obj.put("result", "SUCCESS");
		} else {
			obj.put("result", "FAIL");
		}
		return obj.toJSONString();
	}

	@RequestMapping("changeSellerPwPage")
	public String goChangePwPage() {
		return "seller/changeSellerPwPage";
	}
}
