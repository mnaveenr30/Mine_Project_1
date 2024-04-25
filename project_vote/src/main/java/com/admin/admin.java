package com.admin;

public class admin {
	private int admin_id;
	private int vote_count;
	private String user_name, user_password;
	private String voter_id, candidate_code, election_code;

	public int getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getCandidate_code() {
		return candidate_code;
	}

	public void setCandidate_code(String candidate_code) {
		this.candidate_code = candidate_code;
	}

	public String getElection_code() {
		return election_code;
	}

	public void setElection_code(String election_code) {
		this.election_code = election_code;
	}

	public int getVote_count() {
		return vote_count;
	}

	public void setVote_count(int vote_count) {
		this.vote_count = vote_count;
	}

	public String getVoter_id() {
		return voter_id;
	}

	public void setVoter_id(String voter_id) {
		this.voter_id = voter_id;
	}
}
