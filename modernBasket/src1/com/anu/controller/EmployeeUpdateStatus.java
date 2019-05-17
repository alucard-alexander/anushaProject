package com.anu.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anu.DAO.Update;
import com.mysql.cj.Session;

/**
 * Servlet implementation class EmployeeUpdateStatus
 */
public class EmployeeUpdateStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session= request.getSession();
		try {
			if (new Update().updateOrderStatus(request.getParameter("status"), Integer.parseInt(request.getParameter("oid")))) {
				if (session.getAttribute("type").toString().equals("a")) {
					session.setAttribute("msg", "Updated successfully");
					response.sendRedirect("Admin.jsp");
				}else{
					session.setAttribute("msg", "updated successfully");
					response.sendRedirect("EmployeeHomePage.jsp");
				}
			}else {
				session.setAttribute("msg", "There is something wrong, updated later");
				response.sendRedirect("EmployeeHomePage.jsp");
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
