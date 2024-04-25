package com.election;

public class election {
	private int election_id;
	private String election_code;
	private String election_name;
	private String election_date;

	public int getElection_id() {
		return election_id;
	}

	public void setElection_id(int election_id) {
		this.election_id = election_id;
	}

	public String getElection_name() {
		return election_name;
	}

	public void setElection_name(String election_name) {
		this.election_name = election_name;
	}

	public String getElection_date() {
		return election_date;
	}

	public void setElection_date(String election_date) {
		this.election_date = election_date;
	}

	public String getElection_code() {
		return election_code;
	}

	public void setElection_code(String election_code) {
		this.election_code = election_code;
	}
}
