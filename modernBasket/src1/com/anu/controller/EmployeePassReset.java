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

/**
 * Servlet implementation class EmployeePassReset
 */
public class EmployeePassReset extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session= request.getSession();
		System.out.println(request.getParameter("uname"));
		int pid = new ViewDAO().getUserPid(request.getParameter("uname"));
		System.out.println(pid);
		System.out.println(request.getParameter("pass"));
		try {
			if (new Update().updatePass(pid, request.getParameter("pass"))) {
				session.setAttribute("msg", "Password changed");
				response.sendRedirect("EmployeeDetails.jsp");
			}else {
				session.setAttribute("msg", "There was an error while updating, Try again later");
				response.sendRedirect("EmployeeDetails.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
