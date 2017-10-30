package com.gs.jdbc.entity;

public class StudentDetails {
	private String enroll_no;
	private String stu_name;
	private String stu_email;
	private String branch;
	private String sem;
	private String stu_mobileno;
	private String stu_pass;
	private char status;

	
	
	public StudentDetails(String enroll_no) {
		super();
		this.enroll_no = enroll_no;
	}
	public StudentDetails(String enroll_no, String stu_name, String stu_email, String branch, String sem,
			String stu_mobileno, String stu_pass, char status) {
		super();
		this.enroll_no = enroll_no;
		this.stu_name = stu_name;
		this.stu_email = stu_email;
		this.branch = branch;
		this.sem = sem;
		this.stu_mobileno = stu_mobileno;
		this.stu_pass = stu_pass;
		this.status = status;
	}
	public char getStatus() {
		return status;
	}
	public void setStatus(char status) {
		this.status = status;
	}
	public StudentDetails(String stu_name, String stu_email, String branch, String sem, String stu_mobileno,
			String stu_pass) {
		super();
		this.stu_name = stu_name;
		this.stu_email = stu_email;
		this.branch = branch;
		this.sem = sem;
		this.stu_mobileno = stu_mobileno;
		this.stu_pass = stu_pass;
	}
	public StudentDetails(String enroll_no, String stu_name, String stu_email, String branch, String sem,
			String stu_mobileno, String stu_pass) {
		super();
		this.enroll_no = enroll_no;
		this.stu_name = stu_name;
		this.stu_email = stu_email;
		this.branch = branch;
		this.sem = sem;
		this.stu_mobileno = stu_mobileno;
		this.stu_pass = stu_pass;
	}
	public StudentDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getEnroll_no() {
		return enroll_no;
	}
	public void setEnroll_no(String enroll_no) {
		this.enroll_no = enroll_no;
	}
	public String getStu_name() {
		return stu_name;
	}
	public void setStu_name(String stu_name) {
		this.stu_name = stu_name;
	}
	public String getStu_email() {
		return stu_email;
	}
	public void setStu_email(String stu_email) {
		this.stu_email = stu_email;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getSem() {
		return sem;
	}
	public void setSem(String sem) {
		this.sem = sem;
	}
	public String getStu_mobileno() {
		return stu_mobileno;
	}
	public void setStu_mobileno(String stu_mobileno) {
		this.stu_mobileno = stu_mobileno;
	}
	public String getStu_pass() {
		return stu_pass;
	}
	public void setStu_pass(String stu_pass) {
		this.stu_pass = stu_pass;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((branch == null) ? 0 : branch.hashCode());
		result = prime * result + ((enroll_no == null) ? 0 : enroll_no.hashCode());
		result = prime * result + ((sem == null) ? 0 : sem.hashCode());
		result = prime * result + ((stu_email == null) ? 0 : stu_email.hashCode());
		result = prime * result + ((stu_mobileno == null) ? 0 : stu_mobileno.hashCode());
		result = prime * result + ((stu_name == null) ? 0 : stu_name.hashCode());
		result = prime * result + ((stu_pass == null) ? 0 : stu_pass.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		StudentDetails other = (StudentDetails) obj;
		if (branch == null) {
			if (other.branch != null)
				return false;
		} else if (!branch.equals(other.branch))
			return false;
		if (enroll_no == null) {
			if (other.enroll_no != null)
				return false;
		} else if (!enroll_no.equals(other.enroll_no))
			return false;
		if (sem == null) {
			if (other.sem != null)
				return false;
		} else if (!sem.equals(other.sem))
			return false;
		if (stu_email == null) {
			if (other.stu_email != null)
				return false;
		} else if (!stu_email.equals(other.stu_email))
			return false;
		if (stu_mobileno == null) {
			if (other.stu_mobileno != null)
				return false;
		} else if (!stu_mobileno.equals(other.stu_mobileno))
			return false;
		if (stu_name == null) {
			if (other.stu_name != null)
				return false;
		} else if (!stu_name.equals(other.stu_name))
			return false;
		if (stu_pass == null) {
			if (other.stu_pass != null)
				return false;
		} else if (!stu_pass.equals(other.stu_pass))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "StudentDetails [enroll_no=" + enroll_no + ", stu_name=" + stu_name + ", stu_email=" + stu_email
				+ ", branch=" + branch + ", sem=" + sem + ", stu_mobileno=" + stu_mobileno + ", stu_pass=" + stu_pass
				+ "]";
	}
	
	
}
