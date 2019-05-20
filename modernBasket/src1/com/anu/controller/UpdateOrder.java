package com.anu.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anu.DAO.Insert;
import com.anu.DAO.Update;
import com.anu.DAO.ViewDAO;


public class UpdateOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sesssion = request.getSession();
		com.anu.bean.Order o1 = new com.anu.bean.Order();
		Double price = new ViewDAO().getPriceItem(Integer.parseInt(sesssion.getAttribute("item_id").toString())); //
		o1.setId(Integer.parseInt(sesssion.getAttribute("item_id").toString()));
		HttpSession session = request.getSession();
		o1.setPid(Integer.parseInt(session.getAttribute("id").toString()));
		o1.setItem_id(Integer.parseInt(sesssion.getAttribute("item_id").toString()));
		o1.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		price = price * (Integer.parseInt(request.getParameter("quantity")));
		Double per = 0.02 * price;
		price += per;
		o1.setTotal_price(price);
		o1.setId(Integer.parseInt(session.getAttribute("oid").toString()));
		try {
			if (new Update().updateOrder(o1)) {
				session.removeAttribute("item_id");
				session.removeAttribute("oid");
				session.setAttribute("msg", "Your order is updated");
				response.sendRedirect("UserOrderedList.jsp");
			} else {
				session.setAttribute("msg", "There was an error while updating your order, try some other time");
				response.sendRedirect("UserOrderedList.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			response.sendRedirect("Error.jsp");
		}
	}

}
