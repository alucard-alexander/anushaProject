package com.anu.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.anu.GetConnection.GetConnection;
import com.anu.bean.Items;
import com.anu.bean.Order;
import com.anu.bean.Order_Items;

public class ViewDAO {
	
	public String[] getitemName_Price(int id) throws SQLException {
		String sql="select items_name,price from items where id=?";
		GetConnection gc = new GetConnection();
		String[] ret=new String[2];
		gc.ps = gc.getMysqlConnection().prepareStatement(sql);
		gc.ps.setInt(1, id);
		gc.rs1 = gc.ps.executeQuery();
		while (gc.rs1.next()) {
			ret[0]=gc.rs1.getString(1);
			ret[1]=gc.rs1.getString(2);
			return ret;
		}
		return null;
	}
	

	public List<Order_Items> getorderedList(int id) {
		String sql = "select * from order1 where pid=?";
		String sql1;
		GetConnection gc = new GetConnection();

		List<Order_Items> orderList = new ArrayList<Order_Items>();

		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.ps.setInt(1, id);
			gc.rs1 = gc.ps.executeQuery();

			while (gc.rs1.next()) {

				Order_Items o1 = new Order_Items();
				
				
				
				o1.setPid(gc.rs1.getInt(2));

				o1.setItem_id(gc.rs1.getInt(3));
				o1.setQuantity(gc.rs1.getInt(4));
				o1.setTotal_price(gc.rs1.getInt(5));
				sql1="select * from items where id=?";
				gc.ps1 = gc.getMysqlConnection().prepareStatement(sql1);
				gc.ps1.setInt(1, gc.rs1.getInt(3));
				gc.rs2 = gc.ps1.executeQuery();
				while (gc.rs2.next()) {
					o1.setItems_name(gc.rs2.getString(2));
					o1.setPrice(gc.rs2.getFloat(3));
				}
				
				orderList.add(o1);

				/*
				 * System.out.println(gc.rs1.getInt(1)); System.out.println(gc.rs1.getInt(2));
				 * System.out.println(gc.rs1.getInt(3)); System.out.println(gc.rs1.getInt(4));
				 * System.out.println(gc.rs1.getInt(5));
				 */

			}
			return orderList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public String[] getPass(String uname) {
		String sql = "select password,id from person where User_Name=?";
		GetConnection gc = new GetConnection();
		String[] pass = new String[2];

		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.ps.setString(1, uname);
			gc.rs1 = gc.ps.executeQuery();
			while (gc.rs1.next()) {
				pass[0] = gc.rs1.getString(1);
				pass[1] = gc.rs1.getString(2);
				return pass;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public float getPriceItem(Integer id) {
		String sql = "select price from items where id=?";
		GetConnection gc = new GetConnection();
		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.ps.setString(1, id.toString());
			gc.rs1 = gc.ps.executeQuery();
			while (gc.rs1.next()) {
				return Float.parseFloat(gc.rs1.getString(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return (Float) null;
	}

	public List<Items> getUserItems() {
		String sql = "select * from items";
		GetConnection gc = new GetConnection();
		List<Items> itemsList = new ArrayList<Items>();
		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.rs1 = gc.ps.executeQuery();
			while (gc.rs1.next()) {
				Items i = new Items();
				i.setId(gc.rs1.getInt(1));
				i.setItemName(gc.rs1.getString(2));
				i.setPrice(gc.rs1.getFloat(3));
				i.setType(gc.rs1.getString(4));

				itemsList.add(i);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return itemsList;
	}

}
