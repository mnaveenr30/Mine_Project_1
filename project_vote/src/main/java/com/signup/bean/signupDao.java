package com.signup.bean;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class signupDao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
			System.out.println("Connection created");
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("Connection not created");
		}
		return con;
	}

	public static int save(signup u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into vote_signup(first_name,last_name,user_name,mobile_number,email_id,password) values(?,?,?,?,?,?)");
			ps.setString(1, u.getFirst_name());
			ps.setString(2, u.getLast_name());
			ps.setString(3, u.getUser_name());
			ps.setString(4, u.getMobile_number());
			ps.setString(5, u.getEmail_id());
			ps.setString(6, u.getPassword());

			status = ps.executeUpdate();
			ps = con.prepareStatement("commit");
			ps.executeUpdate();

			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	// ValidateReturnUserName
	public static String ValidateReturnUserName(signup u) {
		String temp = "";
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select first_name from vote_signup where email_id=?");
			ps.setString(1, u.getEmail_id());
			ResultSet rs = ps.executeQuery();
			temp = rs.getString("first_name");
		} catch (Exception e) {
		}

		return temp;
	}

	public static boolean validate(signup u) {
		boolean status = false;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from vote_signup where user_name=? and password=?");
			ps.setString(1, u.getUser_name());
			ps.setString(2, u.getPassword());
			ResultSet rs = ps.executeQuery();
			status = rs.next();
		} catch (Exception e) {
		}

		return status;
	}

	public static List<signup> getAllRecords() {
		List<signup> list = new ArrayList<signup>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from vote_signup");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				signup u = new signup();
				u.setFirst_name(rs.getString("first_name"));
				u.setLast_name(rs.getString("last_name"));
				u.setMobile_number(rs.getString("mobile_no"));
				u.setEmail_id(rs.getString("email_id"));
				u.setPassword(rs.getString("password"));

				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
}
