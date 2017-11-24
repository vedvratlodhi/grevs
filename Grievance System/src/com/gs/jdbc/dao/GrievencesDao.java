package com.gs.jdbc.dao;

import java.sql.*;
import java.text.SimpleDateFormat;

import com.gs.jdbc.entity.Grievences;
import com.gs.jdbc.utilities.MyDatabaseConnection;

import java.util.*;

public class GrievencesDao { 
	public void create(Grievences obj) {
		System.out.println(obj);
		Connection conn = MyDatabaseConnection.getConnection();
		try {
			String sql = "insert into grievances (subject, status, gdate, grievdetails, enroll_no) values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, obj.getSubject());
			ps.setString(2, "p");
			
			java.sql.Date dt = new java.sql.Date(obj.getGdate().getTime());
			System.out.println("dat: "  + dt);
			ps.setDate(3, dt);
			ps.setString(4, obj.getGrievdetails());
			ps.setString(5, obj.getEnroll_no());
			ps.executeUpdate();
		} catch (SQLException sq) {
			System.out.println("Unable to create a new row." + sq);
		}
	}

	public void editByComp(Grievences gev) {
		Connection conn = MyDatabaseConnection.getConnection();
		try {
			String sql = "update grievances set status = ? where complaint_no = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, Character.toString(gev.getStatus()));
    			ps.setInt(2, gev.getComplaint_no());
			ps.executeUpdate();
		} catch(SQLException sq) {
			System.out.println("Unable to create a new row." + sq);
		}
	}

	public ArrayList<Grievences> findAll() {
		Connection conn = MyDatabaseConnection.getConnection();
		ArrayList<Grievences> listGrievences = new ArrayList<Grievences>();
		try {
			String sql = "select * from grievances";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Grievences obj = new Grievences();

				obj.setComplaint_no(rs.getInt("complaint_no"));
				obj.setSubject(rs.getString("subject"));
				obj.setStatus(rs.getString("status").charAt(0));
				java.util.Date dt = rs.getDate("gdate");
				obj.setGdate(new java.sql.Date(dt.getTime()));
				obj.setGrievdetails(rs.getString("grievdetails"));
				obj.setEnroll_no(rs.getString("enroll_no"));
				listGrievences.add(obj);
			}
		} catch (SQLException sq) {
			System.out.println("Unable to fetch Data" + sq);
		}
		return listGrievences;
	}

	public ArrayList<Grievences> findAllByStudent(String id) {
		Connection conn = MyDatabaseConnection.getConnection();

		ArrayList<Grievences> listGrievences = new ArrayList<Grievences>();
		try {
			String sql = "select * from grievances where enroll_no=" + id;
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Grievences obj = new Grievences();

				obj.setComplaint_no(rs.getInt("complaint_no"));
				obj.setSubject(rs.getString("subject"));
				obj.setStatus(rs.getString("status").charAt(0));
				java.util.Date dt = rs.getDate("gdate");
				obj.setGdate(new java.util.Date(dt.getTime()));
				obj.setGrievdetails(rs.getString("grievdetails"));
				obj.setReply(rs.getString("reply"));
				listGrievences.add(obj);
			}
		} catch (SQLException sq) {
			System.out.println("Unable to fetch Data" + sq);
		}
		return listGrievences;
	}

	
	public ArrayList<Grievences> findAllGrevienceByCno(String id,String cno) {
		Connection conn = MyDatabaseConnection.getConnection();

		ArrayList<Grievences> listGrievences = new ArrayList<Grievences>();
		try {
			String sql = "select * from grievances where enroll_no='" + id +"' and complaint_no=" + cno;
			System.out.println(sql);
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Grievences obj = new Grievences();

				obj.setComplaint_no(rs.getInt("complaint_no"));
				obj.setSubject(rs.getString("subject"));
				obj.setStatus(rs.getString("status").charAt(0));
				java.util.Date dt = rs.getDate("gdate");
				obj.setGdate(new java.util.Date(dt.getTime()));
				obj.setGrievdetails(rs.getString("grievdetails"));
				obj.setReply(rs.getString("reply"));
				listGrievences.add(obj);
			}
		} catch (SQLException sq) {
			System.out.println("Unable to fetch Data" + sq);
		}
		return listGrievences;
	}
	
	public Grievences findByComplaintno(String id) {
		Connection conn = MyDatabaseConnection.getConnection();

		Grievences grievencesobj = new Grievences();
		try {
			String sql = "select * from grievances where complaint_no=" + id;
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
			
				grievencesobj.setEnroll_no(""+rs.getInt("enroll_no"));
				grievencesobj.setComplaint_no(rs.getInt("complaint_no"));
				grievencesobj.setSubject(rs.getString("subject"));
				grievencesobj.setStatus(rs.getString("status").charAt(0));
				java.util.Date dt = rs.getDate("gdate");
				grievencesobj.setGdate(new java.util.Date(dt.getTime()));
				grievencesobj.setGrievdetails(rs.getString("grievdetails"));
				grievencesobj.setReply(rs.getString("reply"));
				
			}
		} catch (SQLException sq) {
			System.out.println("Unable to fetch Data" + sq);
		}
		return grievencesobj;
	}
	public static void main(String args[]) {
		
		//String timestamp= new SimpleDateFormat("yyy-MM-dd hh:mm:ss").format(Calendar.getInstance().getTime());
		
		java.util.Date dt = new java.util.Date();
		
		Grievences gev = new Grievences("subject01", 'H', dt, "details01", "12345");
		GrievencesDao obj = new GrievencesDao();
		obj.create(gev);
		// ArrayList<Grievences> al = obj.findAllByStudent("enroll_no");
		// for (Grievences gri : al)
		// System.out.println(gri);
		// Grievences obj5 = new Grievences(2,"hvcakej");
		// obj.editByComp(obj5);
	}
}