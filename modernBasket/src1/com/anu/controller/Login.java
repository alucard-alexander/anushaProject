package com.anu.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
		HttpSession session = request.getSession();
		ViewDAO v1 = new ViewDAO();
		String[] strPass1 = v1.getPass(request.getParameter("uname"));
		if (strPass1[1] == "0") {
			session.setAttribute("msg", "User Name Does not exists");
			response.sendRedirect("Login.jsp");
		} else {
			if (request.getParameter("pass").equals(strPass1[0])) {
				session.setAttribute("id", Integer.parseInt(strPass1[1]));
				session.setAttribute("type", "u");
				session.setAttribute("msg", "Logged in successfully");
				//System.out.println(request.getParameter("iid"));
				String iid1=request.getParameter("iid");
				
				if (iid1.contentEquals("null")) {
					response.sendRedirect("UserHomePage.jsp");
				}else {
					//System.out.println(request.getParameter("iid"));
					/*int iid = Integer.parseInt(request.getParameter("iid"));
					System.out.println(iid);*/
					request.setAttribute("id", iid1);
					RequestDispatcher rd = request.getRequestDispatcher("Calculation.jsp?id="+iid1);
					rd.forward(request, response);
				}
				
			} else {
				session.setAttribute("msg", "Invalid Password");
				RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
				rd.forward(request, response);
			}

		}
	}
}
