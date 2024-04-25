package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.candidate.candidate;
import com.registration.voter;

public class adminDao {
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

	public static boolean validate_admin(admin a) {
		boolean status = false;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("select * from vote_admin where user_name=? and user_password=?");
			ps.setString(1, a.getUser_name());
			ps.setString(2, a.getUser_password());
			ResultSet rs = ps.executeQuery();
			status = rs.next();
		} catch (Exception e) {
		}

		return status;
	}

	public static int save_vote(admin v) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into save_vote(voter_id,candidate_code,election_code) values(?,?,?)");
			ps.setString(1, v.getVoter_id());
			ps.setString(2, v.getCandidate_code());
			ps.setString(3, v.getElection_code());
			status = ps.executeUpdate();
		} catch (Exception e1) {
			System.out.println(e1);
		}
		return status;
	}

	public static List<admin> getAllCandidates1() {
		List<admin> list = new ArrayList<admin>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from save_vote");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				admin c = new admin();
				c.setVote_count(rs.getInt("vote_count"));
				c.setVoter_id(rs.getString("voter_id"));
				c.setCandidate_code(rs.getString("candidate_code"));
				c.setElection_code(rs.getString("election_code"));
				list.add(c);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
}
