package com.gs.jdbc.entity;

public class AdminDetails {
	private String uname;
	private String design;
	private String ad_name;
	private String ad_mobileno;
	private String ad_pass;
	private String ad_email;
	public AdminDetails(String design, String ad_name, String ad_mobileno, String ad_pass, String ad_email) {
		super();
		this.design = design;
		this.ad_name = ad_name;
		this.ad_mobileno = ad_mobileno;
		this.ad_pass = ad_pass;
		this.ad_email = ad_email;
	}
	public AdminDetails(String uname, String design, String ad_name, String ad_mobileno, String ad_pass,
			String ad_email) {
		super();
		this.uname = uname;
		this.design = design;
		this.ad_name = ad_name;
		this.ad_mobileno = ad_mobileno;
		this.ad_pass = ad_pass;
		this.ad_email = ad_email;
	}
	public AdminDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getDesign() {
		return design;
	}
	public void setDesign(String design) {
		this.design = design;
	}
	public String getAd_name() {
		return ad_name;
	}
	public void setAd_name(String ad_name) {
		this.ad_name = ad_name;
	}
	public String getAd_mobileno() {
		return ad_mobileno;
	}
	public void setAd_mobileno(String ad_mobileno) {
		this.ad_mobileno = ad_mobileno;
	}
	public String getAd_pass() {
		return ad_pass;
	}
	public void setAd_pass(String ad_pass) {
		this.ad_pass = ad_pass;
	}
	public String getAd_email() {
		return ad_email;
	}
	public void setAd_email(String ad_email) {
		this.ad_email = ad_email;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((ad_email == null) ? 0 : ad_email.hashCode());
		result = prime * result + ((ad_mobileno == null) ? 0 : ad_mobileno.hashCode());
		result = prime * result + ((ad_name == null) ? 0 : ad_name.hashCode());
		result = prime * result + ((ad_pass == null) ? 0 : ad_pass.hashCode());
		result = prime * result + ((design == null) ? 0 : design.hashCode());
		result = prime * result + ((uname == null) ? 0 : uname.hashCode());
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
		AdminDetails other = (AdminDetails) obj;
		if (ad_email == null) {
			if (other.ad_email != null)
				return false;
		} else if (!ad_email.equals(other.ad_email))
			return false;
		if (ad_mobileno == null) {
			if (other.ad_mobileno != null)
				return false;
		} else if (!ad_mobileno.equals(other.ad_mobileno))
			return false;
		if (ad_name == null) {
			if (other.ad_name != null)
				return false;
		} else if (!ad_name.equals(other.ad_name))
			return false;
		if (ad_pass == null) {
			if (other.ad_pass != null)
				return false;
		} else if (!ad_pass.equals(other.ad_pass))
			return false;
		if (design == null) {
			if (other.design != null)
				return false;
		} else if (!design.equals(other.design))
			return false;
		if (uname == null) {
			if (other.uname != null)
				return false;
		} else if (!uname.equals(other.uname))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "AdminDetails [uname=" + uname + ", design=" + design + ", ad_name=" + ad_name + ", ad_mobileno="
				+ ad_mobileno + ", ad_pass=" + ad_pass + ", ad_email=" + ad_email + "]";
	}
	
	
	
}
