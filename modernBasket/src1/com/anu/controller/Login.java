package com.anu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
 
		String strName = request.getParameter("uname");
		String strPass = request.getParameter("pass");

		ViewDAO v1 = new ViewDAO();
		String strPass1 = v1.getPass(strName);

		
		 if (!(strPass1 == strPass)) 
		 { 
			 response.sendRedirect("Success.jsp"); 
		 }
		

	}

}
