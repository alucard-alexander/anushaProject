package com.anu.DAO;

import java.sql.SQLException;
import java.sql.Statement;

import com.anu.GetConnection.GetConnection;
import com.anu.bean.Order;

public class Update {
	
	public boolean updateOrder(Order o1) throws SQLException {
		String sql="update order1 set Quantity=?,Total_Price=? where id=?";
		GetConnection gc = new GetConnection();
		
		gc.ps = GetConnection.getMysqlConnection().prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
		gc.ps.setInt(1,o1.getQuantity());
		gc.ps.setDouble(2,o1.getTotal_price());
		gc.ps.setInt(3, o1.getId());
		return gc.ps.executeUpdate()>0;
	}
	
	public boolean updateOrderStatus(String status, int id ) throws SQLException {
		String sql="update order1 set status=? where id=?";
		GetConnection gc = new GetConnection();
		
		gc.ps = GetConnection.getMysqlConnection().prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
		gc.ps.setString(1,status);
		gc.ps.setInt(2,id);
		//gc.ps.setInt(3, o1.getId());
		return gc.ps.executeUpdate()>0;
		
		
	}

}
