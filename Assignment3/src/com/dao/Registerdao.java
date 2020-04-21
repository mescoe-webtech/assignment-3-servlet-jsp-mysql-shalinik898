package com.dao;

import java.sql.*;
import java.util.List;

import com.model.RegisterModel;

public class Registerdao {
	private static Connection con;
	private PreparedStatement ps;
	private String driver="oracle.jdbc.OracleDriver";
	private String url="jdbc:oracle:thin:@localhost:1521:XE";
	private String userName="System";
	private String password="123456789";
	public Connection getConnection() {
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url,userName,password);
			System.out.println("Connection: "+con);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	public int saveData(List<RegisterModel>lst) {
		
		System.out.println("Dao entered");
		int i=0;
		System.out.println();
		con=getConnection();
		RegisterModel r=(RegisterModel)lst.get(0);
		try {
			ps=con.prepareStatement("insert into Student values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, r.getPrn());
			ps.setString(2, r.getFname());
			ps.setString(3,r.getLname());
			ps.setInt(4,r.getMob());
			ps.setString(5,r.getEmail());
			ps.setString(6, r.getDob());
			ps.setString(7, r.getBranch());
			ps.setString(8, r.getUname());
			ps.setString(9,r.getPass());
			
			i=ps.executeUpdate();
			con.close();
		}
		catch (Exception e)
		{
			System.out.println(e);
			
		}
		return i;
	}
	
		
	}


