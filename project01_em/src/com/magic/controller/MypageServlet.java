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

/**
 * Servlet implementation class MypageServlet
 */
@WebServlet("/mypage.do")
public class MypageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//세션에 저장된 정보를 얻어와 연결
		HttpSession session = request.getSession();
		
		EmployeesVO emp=(EmployeesVO) session.getAttribute("loginUser");
		//값이 있으면
		if(emp != null) {
			
			String url="mypage.jsp";
																	//"mypage.jsp" 적을시 url 지워야함
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
			
		}else {	//sendRedirect는 url 주소가 변경  ReqeustDispatcher는 url주소 변경 x 
			response.sendRedirect("login.do");
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		//회원정보 저장할 객체생성
		EmployeesVO member=new EmployeesVO();
		
		//폼에서 입력한 회원정보 얻어와 member 객체변수 저장하기
		member.setId(request.getParameter("id"));
		member.setPass(request.getParameter("pwd"));
		member.setName(request.getParameter("name"));
		member.setLev(request.getParameter("lev"));
		
		if(request.getParameter("gender") != null)
			member.setGender(Integer.parseInt(request.getParameter("gender").trim()));
		member.setPhone(request.getParameter("phone"));
		
		EmployeesDAO eDao = EmployeesDAO.getInstance();	
		eDao.updateMember(member);
		
		//회원정보수정 폼 만들기 위한 VO객체에서 아이디에 해당하는 자료 가져오기
		EmployeesVO emp=eDao.getMember(member.getId());
		
		request.setAttribute("member", emp);
		request.setAttribute("message", "회원정보가 수정되었습니다.");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("joinsuccess.jsp");
		dispatcher.forward(request, response);
		
	}

}
















