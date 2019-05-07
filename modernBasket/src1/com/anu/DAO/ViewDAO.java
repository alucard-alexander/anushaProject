package com.anu.DAO;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.anu.GetConnection.GetConnection;
import com.anu.bean.Items;

public class ViewDAO {

	
	public String[] getPass(String uname) {
		String sql = "select password,id from person where User_Name=?";
		GetConnection gc = new GetConnection();
		String[] pass = new String[2];
		
		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.ps.setString(1,uname);
			gc.rs1 = gc.ps.executeQuery();
			while (gc.rs1.next()) {
				pass[0]=gc.rs1.getString(1);
				pass[1]=gc.rs1.getString(2);
				return pass;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;
	}
	
	public List<Items> getUserItems(){
		String sql="select * from items";
		GetConnection gc = new GetConnection();
		List<Items> itemsList= new ArrayList<Items>();
		try {
			gc.ps= gc.getMysqlConnection().prepareStatement(sql);
			gc.rs1=gc.ps.executeQuery();
			while(gc.rs1.next()) {
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
