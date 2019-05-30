package com.anu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.anu.DAO.deleteDAO;

/**
 * Servlet implementation class EmployeeDelete
 */
public class EmployeeDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		int aid = Integer.parseInt(request.getParameter("aid"));
		System.out.println(id + " " + aid);
		deleteDAO d1 = new deleteDAO();
		if (d1.delete_security_questions(id)) {
			if (d1.delete_Person(id)) {
				if (d1.delete_address(aid)) {
					response.sendRedirect("EmployeeDetails.jsp");
				}
			}
		}

	}

}
