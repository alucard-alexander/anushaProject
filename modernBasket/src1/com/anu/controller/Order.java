package com.anu.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anu.DAO.Email;
import com.anu.DAO.Insert;
import com.anu.DAO.ViewDAO;
import com.mysql.cj.Session;

public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// TODO Auto-generated method stub
			HttpSession session = request.getSession();
			com.anu.bean.Order o1 = new com.anu.bean.Order();
			Double price = new ViewDAO().getPriceItem(Integer.parseInt(session.getAttribute("item_id").toString())); //
			o1.setId(Integer.parseInt(session.getAttribute("item_id").toString()));
			o1.setPid(Integer.parseInt(session.getAttribute("id").toString()));
			o1.setItem_id(Integer.parseInt(session.getAttribute("item_id").toString()));
			o1.setQuantity(Integer.parseInt(request.getParameter("quantity")));
			price = price * (Integer.parseInt(request.getParameter("quantity")));
			Double per = 0.02 * price;
			price += per;
			o1.setTotal_price(price);
			session.removeAttribute("item_id");
			if (new Insert().insertUserOrder(o1)) {
				session.setAttribute("msg", "Your Order is successfully placed");
				String email = new ViewDAO().getemail(Integer.parseInt(session.getAttribute("id").toString()));
				

				String name[] = new ViewDAO()
						.getitemName_Price(Integer.parseInt(session.getAttribute("id").toString()));
				
				System.out.println(email+name[0]+o1.getQuantity()+o1.getTotal_price());
				Email.sendEmail(email,name[0],o1.getQuantity(),o1.getTotal_price());
				
				response.sendRedirect("UserOrderedList.jsp");
			} else {
				session.setAttribute("msg", "There was an error placing an order");
				response.sendRedirect("UserHomePage.jsp");
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
