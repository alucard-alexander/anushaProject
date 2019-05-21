package com.anu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anu.DAO.ViewDAO;

public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ViewDAO v1 = new ViewDAO();

		String type = request.getParameter("type");
		String[] strPass1 = null;

		strPass1 = v1.getEmployeePass(request.getParameter("uname"), type);
		if (strPass1[1] == "0") {
			response.sendRedirect("AdministratorLogin.jsp");
		} else {
			if (type.equals("a")) {
				if (request.getParameter("pass").equals(strPass1[0])) {
					HttpSession session = request.getSession();
					session.setAttribute("id", Integer.parseInt(strPass1[1]));
					session.setAttribute("type", "a");
					session.setAttribute("msg", "Logged in successfully");
					response.sendRedirect("EmployeeHomePage.jsp");
				} else {
					response.sendRedirect("Error.jsp");
				}
			} else {
				if (request.getParameter("pass").equals(strPass1[0])) {
					HttpSession session = request.getSession();
					session.setAttribute("id", Integer.parseInt(strPass1[1]));
					session.setAttribute("type", "e");
					session.setAttribute("msg", "Logged in successfully");
					response.sendRedirect("EmployeeHomePage.jsp");
				} else {
					response.sendRedirect("Error.jsp");
				}
			}
		}

	}

}
