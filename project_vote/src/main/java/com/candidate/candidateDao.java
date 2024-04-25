package com.candidate;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class candidateDao {
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

	public static int save(candidate c) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into vote_candidate(candidate_code,candidate_name,party_name,election_code) values(?,?,?,?)");
			ps.setString(1, c.getCandidate_code());
			ps.setString(2, c.getCandidate_name());
			ps.setString(3, c.getParty_name());
			ps.setString(4, c.getElection_code());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static List<candidate> getAllCandidates() {
		List<candidate> list = new ArrayList<candidate>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from vote_candidate");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				candidate c = new candidate();
				c.setCandidate_id(rs.getInt("candidate_id"));
				c.setCandidate_code(rs.getString("candidate_code"));
				c.setCandidate_name(rs.getString("candidate_name"));
				c.setParty_name(rs.getString("party_name"));
				c.setElection_code(rs.getString("election_code"));
				list.add(c);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static int delete_candidate(candidate c) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from vote_candidate where candidate_id=?");
			ps.setInt(1, c.getCandidate_id());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}
}
