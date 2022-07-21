package sec04.exam02;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/first5")
public class FirstServlet5 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	public void init(ServletConfig config) throws ServletException {
		
	}

	
	public void destroy() {
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setAttribute("address", "서울시 성북구 팍씨!!!!!");
		RequestDispatcher dispatch = request.getRequestDispatcher("second5");
		dispatch.forward(request,response);
	
	}
}
