package com.anu.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anu.DAO.Update;
import com.anu.DAO.ViewDAO;

public class PassReset extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session= request.getSession();
		System.out.println();
		System.out.println(request.getParameter("pass"));
		System.out.println();
		int pid = new ViewDAO().getUserPid(request.getParameter("uname"));
		String qans=new ViewDAO().getqans(pid);
		if (qans.equals(request.getParameter("ques"))) {
			try {
				if (new Update().updatePass(pid, request.getParameter("pass"))) {
					session.setAttribute("msg", "Password changed");
					response.sendRedirect("Login.jsp");
				}else {
					session.setAttribute("msg", "There was an error while updating, Try again later");
					response.sendRedirect("Login.jsp");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				session.setAttribute("msg", "There was an error while updating, Try again later");
				response.sendRedirect("Login.jsp");
				e.printStackTrace();
			}

		}else {
			
			session.setAttribute("msg", "Question answer does not match");
		}
	}

}
