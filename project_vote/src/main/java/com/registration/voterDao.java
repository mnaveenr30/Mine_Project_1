package com.registration;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class voterDao {

	public static Connection getConnection() {
		Connection con = null;
		try {

			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
			System.out.print("connection created");
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("not connected");
		}
		return con;
	}

	public static int save(voter v) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into voter_registration(reg_frist_name,reg_last_name,reg_date_of_birth,reg_gender,reg_voter_id,reg_aadhar_no,reg_mobile_number,reg_email_id,reg_door_no,reg_village,reg_panchayat,reg_mandal,reg_constituency,reg_district,reg_state,reg_pin_code) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, v.getReg_frist_name());
			ps.setString(2, v.getReg_last_name());
			ps.setString(3, v.getReg_date_of_birth());
			ps.setString(4, v.getReg_gender());
			ps.setString(5, v.getReg_voter_id());
			ps.setString(6, v.getReg_aadhar_no());
			ps.setString(7, v.getReg_mobile_number());
			ps.setString(8, v.getReg_email_id());
			ps.setString(9, v.getReg_door_no());
			ps.setString(10, v.getReg_village());
			ps.setString(11, v.getReg_panchayat());
			ps.setString(12, v.getReg_mandal());
			ps.setString(13, v.getReg_constituency());
			ps.setString(14, v.getReg_district());
			ps.setString(15, v.getReg_state());
			ps.setString(16, v.getReg_pin_code());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static voter getRecordByVoterId(String reg_voter_id) {
		voter v = null;
		try {
			System.out.println(reg_voter_id);
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from voter_registration where reg_voter_id=?");
			ps.setString(1, reg_voter_id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				v = new voter();
				v.setReg_id(rs.getInt("reg_id"));
				v.setReg_frist_name(rs.getString("reg_frist_name"));
				v.setReg_last_name(rs.getString("reg_last_name"));
				v.setReg_date_of_birth(rs.getString("reg_date_of_birth"));
				v.setReg_gender(rs.getString("reg_gender"));
				v.setReg_voter_id(rs.getString("reg_voter_id"));
				v.setReg_aadhar_no(rs.getString("reg_aadhar_no"));
				v.setReg_mobile_number(rs.getString("reg_mobile_number"));
				v.setReg_email_id(rs.getString("reg_email_id"));
				v.setReg_door_no(rs.getString("reg_door_no"));
				v.setReg_village(rs.getString("reg_village"));
				v.setReg_panchayat(rs.getString("reg_panchayat"));
				v.setReg_mandal(rs.getString("reg_mandal"));
				v.setReg_constituency(rs.getString("reg_constituency"));
				v.setReg_district(rs.getString("reg_district"));
				v.setReg_state(rs.getString("reg_state"));
				v.setReg_pin_code(rs.getString("reg_pin_code"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return v;
	}

	public static List<voter> getAllVoters() {
		List<voter> list = new ArrayList<voter>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from voter_registration");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				voter v = new voter();
				v.setReg_id(rs.getInt("reg_id"));
				v.setReg_frist_name(rs.getString("reg_frist_name"));
				v.setReg_last_name(rs.getString("reg_last_name"));
				v.setReg_date_of_birth(rs.getString("reg_date_of_birth"));
				v.setReg_gender(rs.getString("reg_gender"));
				v.setReg_voter_id(rs.getString("reg_voter_id"));
				v.setReg_aadhar_no(rs.getString("reg_aadhar_no"));
				v.setReg_mobile_number(rs.getString("reg_mobile_number"));
				v.setReg_email_id(rs.getString("reg_email_id"));
				v.setReg_door_no(rs.getString("reg_door_no"));
				v.setReg_village(rs.getString("reg_village"));
				v.setReg_panchayat(rs.getString("reg_panchayat"));
				v.setReg_mandal(rs.getString("reg_mandal"));
				v.setReg_constituency(rs.getString("reg_constituency"));
				v.setReg_district(rs.getString("reg_district"));
				v.setReg_state(rs.getString("reg_state"));
				v.setReg_pin_code(rs.getString("reg_pin_code"));
				list.add(v);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static int delete_voter(voter v) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from voter_registration where reg_voter_id=?");
			ps.setString(1, v.getReg_voter_id());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}
}