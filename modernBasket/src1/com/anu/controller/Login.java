package com.anu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anu.DAO.ViewDAO;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub



		ViewDAO v1 = new ViewDAO();
		String[] strPass1 = v1.getPass(request.getParameter("uname"));

		if (request.getParameter("pass").equals(strPass1[0])) {
			//System.out.println(strPass+ " " + strPass1);
			HttpSession session = request.getSession();
			session.setAttribute("id", Integer.parseInt(strPass1[1]));
			response.sendRedirect("UserHomePage.jsp");
		}else {
			response.sendRedirect("Error.jsp");
		}

	}

}
