package com.anu.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anu.DAO.Insert;
import com.anu.bean.Address;
import com.anu.bean.Person;

/**
 * Servlet implementation class userRegistration
 */
public class userRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Address a = new Address();
		a.setDoor_no(request.getParameter("dno"));
		a.setArea(request.getParameter("area"));
		a.setState(request.getParameter("state"));
		a.setLandmark(request.getParameter("landmark"));
		a.setPincode(Integer.parseInt(request.getParameter("pincode")));
		a.setStreet(request.getParameter("street"));
		a.setCity(request.getParameter("city"));
		Insert i = new Insert();
		int j = i.insertAddress(a);
		System.out.println(j);
		if (j != 0) {
			Person p = new Person();
			p.setFname(request.getParameter("fname"));
			p.setMname(request.getParameter("mname"));
			p.setLname(request.getParameter("lname"));
			p.setDob(request.getParameter("dob"));
			p.setUserName(request.getParameter("uname"));
			p.setPassword(request.getParameter("pass"));
			p.setGender(request.getParameter("gender"));
			p.setEmail(request.getParameter("email"));
			// p.setPh_no(Integer.parseInt(request.getParameter("phno")));
			// System.out.println(Integer.parseInt(request.getParameter("phno")));
			p.setPh_no(request.getParameter("phno").toString());
			
			int k = i.insertPerson(p, j);
			if (k > 0) {
				HttpSession session = request.getSession();
				session.setAttribute("id", k);
				response.sendRedirect("UserQuestion.jsp");
			}
		}

	}
}
