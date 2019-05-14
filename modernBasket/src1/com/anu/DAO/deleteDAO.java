package com.anu.DAO;

import java.sql.SQLException;

import com.anu.GetConnection.GetConnection;

public class deleteDAO {
	
	public boolean delete_order(int oid){
		String sql="delete from order1 where id=?";
		GetConnection gc = new GetConnection();
		try {
			gc.ps = GetConnection.getMysqlConnection().prepareStatement(sql);
			gc.ps.setInt(1, oid);
			return gc.ps.executeUpdate() > 0;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
