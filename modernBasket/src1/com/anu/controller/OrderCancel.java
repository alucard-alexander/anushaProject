package com.anu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anu.DAO.deleteDAO;

public class OrderCancel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("Here");
		//System.out.println(request.getParameter("oid"));
		HttpSession session = request.getSession();
		if (new deleteDAO().delete_order(Integer.parseInt(request.getParameter("oid")))) {
			session.setAttribute("msg", "your order is cancelled successfully");
			response.sendRedirect("UserOrderedList.jsp");
		}else {
			session.setAttribute("msg", "There was an error while cancelling your order, try again later");
			response.sendRedirect("UserOrderedList.jsp");
		}
		
	}

}
