package com.anu.DAO;

import java.sql.SQLException;
import java.sql.Statement;

import com.anu.GetConnection.GetConnection;
import com.anu.bean.Address;
import com.anu.bean.Person;
import com.anu.bean.security_questions;

public class Insert {
	
	public boolean insertUserOrder(int id) {
		String sql = "insert into order1(pid,item_id,Quantity,Total_price) values(?,?,?,?)";
		GetConnection gc = new GetConnection();
		
		try {
			gc.ps = GetConnection.getMysqlConnection().prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return false;
	}

	public int insertAddress(Address a) {
		String sql = "insert into address(Door_No,Area,State,Landmark,Pincode,Street,City) values(?,?,?,?,?,?,?)";
		GetConnection gc = new GetConnection();

		try {

			gc.ps = GetConnection.getMysqlConnection().prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

			gc.ps.setString(1, a.getDoor_no());
			gc.ps.setString(2, a.getArea());
			gc.ps.setString(3, a.getState());
			gc.ps.setString(4, a.getLandmark());
			gc.ps.setInt(5, a.getPincode());
			gc.ps.setString(6, a.getStreet());
			gc.ps.setString(7, a.getCity());
			gc.ps.executeUpdate();
			gc.rs1 = gc.ps.getGeneratedKeys();
			if (gc.rs1 != null && gc.rs1.next()) {
				System.out.println("Generated Emp Id: " + gc.rs1.getInt(1));
				return (gc.rs1.getInt(1));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return 0;
	}

	public int insertPerson(Person p, int i) {

		String sql = "insert into person(address_id,First_name,Middle_name,Last_name,DOB,Gender,User_Name,password,Phone_number,email) values(?,?,?,?,?,?,?,?,?,?)";
		GetConnection gc = new GetConnection();
		
		try {

			gc.ps = GetConnection.getMysqlConnection().prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

			gc.ps.setInt(1, i);
			gc.ps.setString(2, p.getFname());
			gc.ps.setString(3, p.getMname());
			gc.ps.setString(4, p.getLname());
			gc.ps.setString(5, p.getDob());
			gc.ps.setString(6, p.getGender());
			gc.ps.setString(7, p.getUserName());
			gc.ps.setString(8, p.getPassword());
			
			gc.ps.setString(9, p.getPh_no());
			
			gc.ps.setString(10, p.getEmail());
			gc.ps.executeUpdate();
			
			gc.rs1 = gc.ps.getGeneratedKeys();
			
			if (gc.rs1 != null && gc.rs1.next()) {
				
				System.out.println("Generated Emp Id: " + gc.rs1.getInt(1));
				return (gc.rs1.getInt(1));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	public boolean insertQuestion(security_questions s) {
		String sql="insert into security_questions(question,question_answer,person_id) values(?,?,?)";
		GetConnection gc = new GetConnection();
		
		try {
			
			gc.ps = GetConnection.getMysqlConnection().prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			
			gc.ps.setString(1, s.getQuestion());
			gc.ps.setString(2,s.getQuestion_answer());
			gc.ps.setInt(3,s.getPid());
			System.out.println(s.getQuestion());
			if (gc.ps.executeUpdate() > 0) {
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
