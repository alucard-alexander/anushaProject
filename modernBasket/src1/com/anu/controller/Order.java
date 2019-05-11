package com.anu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anu.DAO.Insert;
import com.anu.DAO.ViewDAO;


public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("checking");	
		//String id= ;
		com.anu.bean.Order o1= new com.anu.bean.Order();
		float price= new ViewDAO().getPriceItem(Integer.parseInt(request.getParameter("id")));
		o1.setId(Integer.parseInt(request.getParameter("id")));
		HttpSession session = request.getSession();
		o1.setPid(Integer.parseInt(session.getAttribute("id").toString()));
		o1.setItem_id(Integer.parseInt(request.getParameter("id")));
		o1.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		o1.setTotal_price(price*(Integer.parseInt(request.getParameter("quantity"))));
		if (new Insert().insertUserOrder(o1)) {
			response.sendRedirect("UserOrderList.jsp");
		}else {
			response.sendRedirect("Error.jsp");
		}

	}

}
