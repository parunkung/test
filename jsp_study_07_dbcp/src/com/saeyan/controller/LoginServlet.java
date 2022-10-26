package com.saeyan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.saeyan.dao.MemberDAO;
import com.saeyan.dto.MemberVO;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
 
   
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      //RequestDispatcher dispatcher = request.getRequestDispatcher("member/login.jsp");
      //dispatcher.forward(request, response);
	   
	   //로그인이 완료된 회원이 인증처리없이 메인페이지로 이동하고 싶을 때~
	   String url = "member/login.jsp";
	   
	   HttpSession session = request.getSession();
	   
	   if(session.getAttribute("loginUser") != null) {	//이미 로그인상태인지 물어보는것...
		   url = "main.jsp";	//메인페이지로 가라...
		   		   
	   }
	   
	   RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	   dispatcher.forward(request, response);
      
   }

   
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
	   //회원인증을 위한 서블릿 클래스 만들기
	   String url = "member/login.jsp";
	   
	   String userid = request.getParameter("userid");
	   String pwd = request.getParameter("pwd");
	   
	   MemberDAO mDao = MemberDAO.getInstance();
	   int result = mDao.userCheck(userid, pwd);
	   
	   if(result == 1) {
		   
		   MemberVO mVo = mDao.getMember(userid);
		   HttpSession session = request.getSession();
		   session.setAttribute("loginUser", mVo);
		   request.setAttribute("message", "회원가입에 성공했습니다.");
		   url = "main.jsp";
		   
	   } else if(result == 0) {
		   request.setAttribute("message", "비밀번호가 맞지 않습니다.");
	   } else {
		   request.setAttribute("message", "존재하지 않는 회원입니다.");
	   }
	   
	   RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	   dispatcher.forward(request, response);
   }

}




