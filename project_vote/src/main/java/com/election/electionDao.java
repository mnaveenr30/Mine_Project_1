package com.election;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.candidate.candidate;

public class electionDao {
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

	public static int save(election e) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into vote_election(election_code,election_name,election_date) values(?,?,?)");
			ps.setString(1, e.getElection_code());
			ps.setString(2, e.getElection_name());
			ps.setString(3, e.getElection_date());
			status = ps.executeUpdate();
		} catch (Exception e1) {
			System.out.println(e1);
		}
		return status;
	}

	public static List<election> getAllElections() {
		List<election> list = new ArrayList<election>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from vote_election");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				election c = new election();
				c.setElection_id(rs.getInt("election_id"));
				c.setElection_code(rs.getString("election_code"));
				c.setElection_name(rs.getString("election_name"));
				c.setElection_date(rs.getString("election_date"));
				list.add(c);
			}
		} catch (Exception e1) {
			System.out.println(e1);
		}
		return list;
	}

	public static List<election> getAllElections1() {
		List<election> list1 = new ArrayList<election>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from vote_election");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				election e = new election();
				e.setElection_id(rs.getInt("election_id"));
				e.setElection_code(rs.getString("election_code"));
				e.setElection_name(rs.getString("election_name"));
				e.setElection_date(rs.getString("election_date"));
				list1.add(e);
			}
		} catch (Exception e1) {
			System.out.println(e1);
		}
		return list1;
	}

	public static int delete_election(election e) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from vote_election where election_id=?");
			ps.setInt(1, e.getElection_id());
			status = ps.executeUpdate();
		} catch (Exception e1) {
			System.out.println(e1);
		}

		return status;
	}
}
