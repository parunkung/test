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


@WebServlet("/custom.do")
public class CustomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//사원등록 서블릿 => 조건 : 로그인상태이면서, 운영자이어야 사원등록을 할 수 있다.
		
		//세션에 저장된 정보를 얻어와 연결
		HttpSession session = request.getSession();		
		EmployeesVO emp = (EmployeesVO) session.getAttribute("loginUser");
		
		Integer result = (Integer) session.getAttribute("result");
		
		//(아래 조건식이 로그인상태이면서, 운영자)
		if(emp != null && result == 2) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("customjoin.jsp");
			dispatcher.forward(request, response);
			
		} else {
			response.sendRedirect("login.do");
		}
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		//회원정보 저장할 객체생성
		EmployeesVO member=new EmployeesVO();
		
		//사원등록폼에서 입력한 회원정보 얻어와 EmployeesVO클래스의 member 객체변수에 저장하기
		member.setId(request.getParameter("id"));
		member.setPass(request.getParameter("pwd"));
		member.setName(request.getParameter("name"));
		member.setLev(request.getParameter("lev"));
				
		member.setGender(Integer.parseInt(request.getParameter("gender")));
		member.setPhone(request.getParameter("phone"));
				
		
		EmployeesDAO memberDAO = EmployeesDAO.getInstance();
		memberDAO.insertMember(member);	//사원등록 실행
		
		request.setAttribute("member", member);
		request.setAttribute("message", "사원등록이 완료 되었습니다.");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("joinsuccess.jsp");
		dispatcher.forward(request, response);
	}

}















