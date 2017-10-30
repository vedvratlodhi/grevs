package com.gs.jdbc.entity;

import java.util.Date;

import java.io.Serializable;

public class Grievences implements Serializable {
	private int complaint_no;
	private String subject;
	private char status;
	private Date gdate;
	private String grievdetails;
	private String enroll_no;
	private String reply;

	public Grievences(int complaint_no, String reply) {
		super();
		this.complaint_no = complaint_no;
		this.reply = reply;
	}

	public Grievences(String reply) {
		super();
		this.reply = reply;
	}

	public String getReply() {
		return reply;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}

	public Grievences(String subject, char status, Date gdate, String grievdetails, String enroll_no, String reply) {
		super();
		this.subject = subject;
		this.status = status;
		this.gdate = gdate;
		this.grievdetails = grievdetails;
		this.enroll_no = enroll_no;
		this.reply = reply;
	}

	public String getEnroll_no() {
		return enroll_no;
	}

	public void setEnroll_no(String enroll_no) {
		this.enroll_no = enroll_no;
	}

	public Grievences(String subject, char status, Date gdate, String grievdetails, String enroll_no) {
		super();
		this.subject = subject;
		this.status = status;
		this.gdate = gdate;
		this.grievdetails = grievdetails;
		this.enroll_no = enroll_no;
	}

	public Grievences(String subject, char status, Date gdate, String grievdetails) {
		super();
		this.subject = subject;
		this.status = status;
		this.gdate = gdate;
		this.grievdetails = grievdetails;
	}

	public Grievences() {
		super();
	}

	public int getComplaint_no() {
		return complaint_no;
	}

	public void setComplaint_no(int complaint_no) {
		this.complaint_no = complaint_no;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public char getStatus() {
		return status;
	}

	public void setStatus(char status) {
		this.status = status;
	}

	public Date getGdate() {
		return gdate;
	}

	public void setGdate(Date gdate) {
		this.gdate = gdate;
	}

	public String getGrievdetails() {
		return grievdetails;
	}

	public void setGrievdetails(String grievdetails) {
		this.grievdetails = grievdetails;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + complaint_no;
		result = prime * result + ((enroll_no == null) ? 0 : enroll_no.hashCode());
		result = prime * result + ((gdate == null) ? 0 : gdate.hashCode());
		result = prime * result + ((grievdetails == null) ? 0 : grievdetails.hashCode());
		result = prime * result + ((reply == null) ? 0 : reply.hashCode());
		result = prime * result + status;
		result = prime * result + ((subject == null) ? 0 : subject.hashCode());
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
		Grievences other = (Grievences) obj;
		if (complaint_no != other.complaint_no)
			return false;
		if (enroll_no == null) {
			if (other.enroll_no != null)
				return false;
		} else if (!enroll_no.equals(other.enroll_no))
			return false;
		if (gdate == null) {
			if (other.gdate != null)
				return false;
		} else if (!gdate.equals(other.gdate))
			return false;
		if (grievdetails == null) {
			if (other.grievdetails != null)
				return false;
		} else if (!grievdetails.equals(other.grievdetails))
			return false;
		if (reply == null) {
			if (other.reply != null)
				return false;
		} else if (!reply.equals(other.reply))
			return false;
		if (status != other.status)
			return false;
		if (subject == null) {
			if (other.subject != null)
				return false;
		} else if (!subject.equals(other.subject))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Grievences [complaint_no=" + complaint_no + ", subject=" + subject + ", status=" + status + ", gdate="
				+ gdate + ", grievdetails=" + grievdetails + "]";
	}

}
