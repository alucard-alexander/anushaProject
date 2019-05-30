package com.anu.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.anu.GetConnection.GetConnection;
import com.anu.bean.Address;
import com.anu.bean.Items;
import com.anu.bean.Order;
import com.anu.bean.Order_Items;
import com.anu.bean.Person;

public class ViewDAO {

	public int getUserPid(String uname) {
		String sql = "select id from person where User_Name=?";
		GetConnection gc = new GetConnection();
		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.ps.setString(1, uname);;
			gc.rs1 = gc.ps.executeQuery();
			while(gc.rs1.next()) {
				return gc.rs1.getInt(1);
			}
			//return 0;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}

		return 0;
	}
	
	public String getemail(int pid) {
		String sql = "select email from person where id=?";
		GetConnection gc = new GetConnection();
		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.ps.setInt(1, pid);
			gc.rs1 = gc.ps.executeQuery();
			while(gc.rs1.next()) {
				return gc.rs1.getString(1);
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
			return null;
		}
		return null;
	}

	
	
	public String getqans(int pid) {
		String sql = "select question_answer from security_questions where person_id=?";
		GetConnection gc = new GetConnection();
		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.ps.setInt(1, pid);
			gc.rs1 = gc.ps.executeQuery();
			while(gc.rs1.next()) {
				return gc.rs1.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

		return null;
	}

	public Address getAddress(int id) {
		String sql = "select * from address where id=?";
		GetConnection gc = new GetConnection();
		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.ps.setInt(1, id);
			gc.rs1 = gc.ps.executeQuery();
			Address a1 = new Address();
			while (gc.rs1.next()) {
				a1.setDoor_no(gc.rs1.getString(2));
				a1.setArea(gc.rs1.getString(3));
				a1.setState(gc.rs1.getString(4));
				a1.setLandmark(gc.rs1.getString(5));
				a1.setPincode(gc.rs1.getInt(6));
				a1.setStreet(gc.rs1.getString(7));
				a1.setCity(gc.rs1.getString(8));
				return a1;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return null;
	}
	
	public List<Person> getAllEmployee() {
		String sql = "select * from person where type='e'";
		GetConnection gc = new GetConnection();
		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			//gc.ps.setInt(1, id);
			gc.rs1 = gc.ps.executeQuery();
			List<Person> person = new ArrayList<Person>();
			
			while (gc.rs1.next()) {
				Person p1 = new Person();
				p1.setId(gc.rs1.getInt(1));
				p1.setAddressId(gc.rs1.getInt(2));
				p1.setFname(gc.rs1.getString(3));
				p1.setMname(gc.rs1.getString(4));
				p1.setLname(gc.rs1.getString(5));
				p1.setDob(gc.rs1.getString(6));
				p1.setGender(gc.rs1.getString(7));
				p1.setUserName(gc.rs1.getString(8));
				p1.setPh_no(gc.rs1.getString(10));
				p1.setEmail(gc.rs1.getString(11));
				person.add(p1);
			}
			return person;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	

	public Person getPerson(int id) {
		String sql = "select * from person where id=?";
		GetConnection gc = new GetConnection();
		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.ps.setInt(1, id);
			gc.rs1 = gc.ps.executeQuery();
			Person p1 = new Person();
			while (gc.rs1.next()) {
				p1.setAddressId(gc.rs1.getInt(2));
				p1.setFname(gc.rs1.getString(3));
				p1.setMname(gc.rs1.getString(4));
				p1.setLname(gc.rs1.getString(5));
				p1.setDob(gc.rs1.getString(6));
				p1.setGender(gc.rs1.getString(7));
				p1.setPh_no(gc.rs1.getString(10));
				p1.setEmail(gc.rs1.getString(11));
				return p1;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return null;
	}

	public Order getorder1(int oid) {
		String sql = "select * from order1 where id=?";
		GetConnection gc = new GetConnection();
		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.ps.setInt(1, oid);
			gc.rs1 = gc.ps.executeQuery();
			Order o1 = new Order();
			while (gc.rs1.next()) {
				o1.setPid(gc.rs1.getInt(2));
				o1.setItem_id(gc.rs1.getInt(3));
				o1.setQuantity(gc.rs1.getInt(4));
				o1.setTotal_price(gc.rs1.getDouble(5));
				o1.setStatus(gc.rs1.getString(6));
				return o1;
			}
			return null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public Integer[] get_quantity_TotalPrice(int oid) {
		String sql = "select Quantity,Total_Price from order1 where id=?";
		GetConnection gc = new GetConnection();
		Integer[] i = new Integer[2];
		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.ps.setInt(1, oid);
			gc.rs1 = gc.ps.executeQuery();
			while (gc.rs1.next()) {
				i[0] = gc.rs1.getInt(1);
				i[1] = gc.rs1.getInt(2);
				return i;
			}
			return null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public String[] getitemName_Price(int id) throws SQLException {
		String sql = "select items_name,price from items where id=?";
		GetConnection gc = new GetConnection();
		String[] ret = new String[2];
		gc.ps = gc.getMysqlConnection().prepareStatement(sql);
		gc.ps.setInt(1, id);
		gc.rs1 = gc.ps.executeQuery();
		while (gc.rs1.next()) {
			ret[0] = gc.rs1.getString(1);
			ret[1] = gc.rs1.getString(2);
			return ret;
		}
		return null;
	}

	public List<Order_Items> getAllUserorderedListPending(String status) {
		String sql = "select * from order1 where status=?";
		String sql1;
		GetConnection gc = new GetConnection();
		List<Order_Items> orderList = new ArrayList<Order_Items>();
		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.ps.setString(1, status);
			gc.rs1 = gc.ps.executeQuery();

			while (gc.rs1.next()) {
				Order_Items o1 = new Order_Items();
				o1.setOrder_id(gc.rs1.getInt(1));
				o1.setPid(gc.rs1.getInt(2));
				o1.setItem_id(gc.rs1.getInt(3));
				o1.setQuantity(gc.rs1.getInt(4));
				o1.setTotal_price(gc.rs1.getInt(5));
				o1.setStatus(gc.rs1.getString(6));
				sql1 = "select * from items where id=?";
				gc.ps1 = gc.getMysqlConnection().prepareStatement(sql1);
				gc.ps1.setInt(1, gc.rs1.getInt(3));
				gc.rs2 = gc.ps1.executeQuery();
				while (gc.rs2.next()) {
					o1.setItems_name(gc.rs2.getString(2));
					o1.setPrice(gc.rs2.getFloat(3));
				}
				orderList.add(o1);
			}
			return orderList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public List<Order_Items> getDeliveredList(int id) {
		
		String sql = "select * from order1 where pid=? and status = ?";
		String sql1;
		GetConnection gc = new GetConnection();
		List<Order_Items> orderList = new ArrayList<Order_Items>();
		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.ps.setInt(1, id);
			gc.ps.setString(2, "Delivered");
			gc.rs1 = gc.ps.executeQuery();

			while (gc.rs1.next()) {

				Order_Items o1 = new Order_Items();

				o1.setOrder_id(gc.rs1.getInt(1));

				o1.setPid(gc.rs1.getInt(2));

				o1.setItem_id(gc.rs1.getInt(3));
				o1.setQuantity(gc.rs1.getInt(4));
				o1.setTotal_price(gc.rs1.getInt(5));
				o1.setStatus(gc.rs1.getString(6));
				sql1 = "select * from items where id=?";
				gc.ps1 = gc.getMysqlConnection().prepareStatement(sql1);
				gc.ps1.setInt(1, gc.rs1.getInt(3));
				gc.rs2 = gc.ps1.executeQuery();
				while (gc.rs2.next()) {
					o1.setItems_name(gc.rs2.getString(2));
					o1.setPrice(gc.rs2.getFloat(3));
				}
				orderList.add(o1);
			}
			return orderList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public List<Order_Items> getorderedList(int id) {
		String sql = "select * from order1 where pid=? and status <> ?";
		String sql1;
		GetConnection gc = new GetConnection();
		List<Order_Items> orderList = new ArrayList<Order_Items>();
		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.ps.setInt(1, id);
			gc.ps.setString(2, "Delivered");
			gc.rs1 = gc.ps.executeQuery();

			while (gc.rs1.next()) {

				Order_Items o1 = new Order_Items();

				o1.setOrder_id(gc.rs1.getInt(1));

				o1.setPid(gc.rs1.getInt(2));

				o1.setItem_id(gc.rs1.getInt(3));
				o1.setQuantity(gc.rs1.getInt(4));
				o1.setTotal_price(gc.rs1.getInt(5));
				o1.setStatus(gc.rs1.getString(6));
				sql1 = "select * from items where id=?";
				gc.ps1 = gc.getMysqlConnection().prepareStatement(sql1);
				gc.ps1.setInt(1, gc.rs1.getInt(3));
				gc.rs2 = gc.ps1.executeQuery();
				while (gc.rs2.next()) {
					o1.setItem_id(gc.rs2.getInt(1));
					o1.setItems_name(gc.rs2.getString(2));
					o1.setPrice(gc.rs2.getFloat(3));
				}
				orderList.add(o1);
			}
			return orderList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public String[] getEmployeePass(String uname, String type) {
		String sql = "select password,id from person where User_Name=? and type=?";
		GetConnection gc = new GetConnection();
		String[] pass = new String[2];
		System.out.println(uname + " " + type);
		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.ps.setString(1, uname);
			gc.ps.setString(2, type);
			gc.rs1 = gc.ps.executeQuery();
			while (gc.rs1.next()) {
				pass[0] = gc.rs1.getString(1);
				pass[1] = gc.rs1.getString(2);
				return pass;
			}
			pass[1] = "0";
			return pass;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pass;
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
			pass[1] = "0";
			return pass;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public Double getPriceItem(Integer id) {
		String sql = "select price from items where id=?";
		GetConnection gc = new GetConnection();
		try {
			gc.ps = gc.getMysqlConnection().prepareStatement(sql);
			gc.ps.setString(1, id.toString());
			gc.rs1 = gc.ps.executeQuery();
			while (gc.rs1.next()) {
				return Double.parseDouble(gc.rs1.getString(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return (Double) null;
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
				itemsList.add(i);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return itemsList;
	}

}
