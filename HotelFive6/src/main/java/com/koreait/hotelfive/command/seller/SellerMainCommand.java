package com.koreait.hotelfive.command.seller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.koreait.hotelfive.command.Command;
import com.koreait.hotelfive.dao.HotelFiveDAO;
import com.koreait.hotelfive.dto.MemberDTO;
import com.koreait.hotelfive.dto.SellerDTO;

public class SellerMainCommand implements Command {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		
		
	}

}
