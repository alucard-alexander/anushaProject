package com.anu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anu.DAO.Insert;
import com.anu.bean.security_questions;

public class userQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		security_questions s =new security_questions();
		HttpSession session = request.getSession();
		s.setPid(Integer.parseInt(session.getAttribute("id").toString()));
		//s.setPid(1);
		s.setQuestion("Enter the Name of your Best teacher?");
		s.setQuestion_answer(request.getParameter("question"));
		Insert i = new Insert();
		if (i.insertQuestion(s)) {
			session.removeAttribute("id");
			session.invalidate();
			response.sendRedirect("Login.jsp");
		}
	}

}
