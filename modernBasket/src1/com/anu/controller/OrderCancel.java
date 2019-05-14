package com.anu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.anu.DAO.deleteDAO;

public class OrderCancel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("Here");
		//System.out.println(request.getParameter("oid"));
		if (new deleteDAO().delete_order(Integer.parseInt(request.getParameter("oid")))) {
			response.sendRedirect("UserOrderedList.jsp");
		}else {
			response.sendRedirect("Error.jsp");
		}
		
	}

}
