package com.anu.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.anu.DAO.Update;

/**
 * Servlet implementation class EmployeeUpdateStatus
 */
public class EmployeeUpdateStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			if (new Update().updateOrderStatus(request.getParameter("status"), Integer.parseInt(request.getParameter("oid")))) {
				response.sendRedirect("EmployeeHomePage.jsp");
			}else {
				response.sendRedirect("Error.jsp");
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
