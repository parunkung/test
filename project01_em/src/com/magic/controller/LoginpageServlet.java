package com.magic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.magic.dao.EmployeesDAO;
import com.magic.dto.EmployeesVO;

@WebServlet("/login.do")
public class LoginpageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");//맵핑작업
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//회원 인증을 위한 서블릿 클래스 만들기
		request.setCharacterEncoding("utf-8");
		
		//로그인화면에서 적은 것들을 가져오는거
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		String lev=request.getParameter("lev");
		String url=null;
		
		//DAO에있는 instance를 가져옴 그래야 result값을 불러올수잇음
		EmployeesDAO empDAO= EmployeesDAO.getInstance();
		int result=empDAO.userCheck(id,pwd,lev);
		
		if(result==2 || result == 3) {
			//vo객체 생성
			EmployeesVO emp = new EmployeesVO();
			//DAO에 getmember을 호출
			emp=empDAO.getMember(id);
			
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", emp);
			session.setAttribute("result", result);
			url="main.jsp"; //회원전용페이지
			
		}else {
			url="login.jsp";
			if(result==1) {
				request.setAttribute("message", "로그인에 성공했습니다.");
			}else if(result==0){
				request.setAttribute("message", "비밀번호가 맞지 않습니다.");
			}else {
				request.setAttribute("message", "존재하지 않은 회원입니다.");
			}
			
		}
		
		RequestDispatcher dispatcher= request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}







