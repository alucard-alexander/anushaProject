package com.anu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anu.DAO.deleteDAO;
import com.mysql.cj.Session;

/**
 * Servlet implementation class AdminDeleteOrder
 */
public class AdminDeleteOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("type").toString().equals("a")) {
			if (new deleteDAO().delete_order(Integer.parseInt(request.getParameter("oid")))) {
				session.setAttribute("msg", "Deleted successfully");
				response.sendRedirect("AdminDeliveredList.jsp");
			}else {
				session.setAttribute("msg", "There was an error while eleting, try again later");
				response.sendRedirect("AdminDeliveredList.jsp");
			}
		}

	}

}
