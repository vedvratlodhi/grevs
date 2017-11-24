package com.gs.jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.gs.jdbc.entity.Grievences;
import com.gs.jdbc.entity.StudentDetails;
import com.gs.jdbc.utilities.MyDatabaseConnection;

public class StudentDetailsDao {
 
	public void create(StudentDetails student) {
		Connection conn = MyDatabaseConnection.getConnection();
		try {
			String sql = "insert into studetails (enroll_no,stu_name ,stu_email, branch,sem,stu_mobileno, stu_pass, rstatus ) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, student.getEnroll_no());
			ps.setString(2, student.getStu_name());
			ps.setString(3, student.getStu_email());
			ps.setString(4, student.getBranch());
			ps.setString(5, student.getSem());
			ps.setString(6, student.getStu_mobileno());
			ps.setString(7, student.getStu_pass());
			ps.setString(8,"" +student.getStatus());
			ps.executeUpdate();
		} catch (SQLException sq) {
			System.out.println("Unable to create a new row." + sq);
		}
	}

	// public void edit(StudentDetails student) {
	// Connection conn = MyDatabaseConnection.getConnection();
	// try {
	// String sql = "update students set studentName = ? , courseid = ? , regDate =
	// ? where studentId = ?";
	// PreparedStatement ps = conn.prepareStatement(sql);
	// ps.setString(1, student.getStudentName());
	// ps.setInt(2, student.getCourseId());
	// java.sql.Date dt = new java.sql.Date(student.getRegDate().getTime());
	// ps.setDate(3, dt);
	// ps.setInt(4, student.getStudentId());
	// ps.executeUpdate();
	// } catch (SQLException sq) {
	// System.out.println("Unable to create a new row." + sq);
	// }
	// }
	public void editByRStatus(StudentDetails gev) {
		Connection conn = MyDatabaseConnection.getConnection();
		try {
			String sql = "update studetails set rstatus = 'Y' where enroll_no = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, gev.getEnroll_no());
		
			
			ps.executeUpdate();
		} catch (SQLException sq) {
			System.out.println("Unable to create a new row." + sq);
		}
	}
	public ArrayList<StudentDetails> findAllByY() {
		Connection conn = MyDatabaseConnection.getConnection();
		ArrayList<StudentDetails> liststu = new ArrayList<StudentDetails>();
		try {
			String sql = "select * from studetails where rstatus='Y'";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				StudentDetails obj = new StudentDetails();

				obj.setEnroll_no(rs.getString("enroll_no"));
				obj.setStu_name(rs.getString("stu_name"));
				obj.setBranch(rs.getString("branch"));
				obj.setStu_email(rs.getString("stu_email"));
				obj.setStu_mobileno(rs.getString("stu_mobileno"));
				obj.setStu_pass(rs.getString("stu_pass"));
				obj.setSem(rs.getString("sem"));
				obj.setStatus(rs.getString("rstatus").charAt(0));
				liststu.add(obj);
			}
		} catch (SQLException sq) {
			System.out.println("Unable to fetch Data" + sq);
		}
		return liststu;
	}
	
	public ArrayList<StudentDetails> findAllByN() {
		Connection conn = MyDatabaseConnection.getConnection();
		ArrayList<StudentDetails> liststu = new ArrayList<StudentDetails>();
		try {
			String sql = "select * from studetails where rstatus='N'";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				StudentDetails obj = new StudentDetails();

				obj.setEnroll_no(rs.getString("enroll_no"));
				obj.setStu_name(rs.getString("stu_name"));
				obj.setBranch(rs.getString("branch"));
				obj.setStu_email(rs.getString("stu_email"));
				obj.setStu_mobileno(rs.getString("stu_mobileno"));
				obj.setSem(rs.getString("sem"));
				obj.setStatus(rs.getString("rstatus").charAt(0));
				obj.setStu_pass(rs.getString("stu_pass"));
				liststu.add(obj);
			}
		} catch (SQLException sq) {
			System.out.println("Unable to fetch Data" + sq);
		}
		return liststu;
	}
	
	public ArrayList<StudentDetails> findAllByEnroll(String enroll) {
		Connection conn = MyDatabaseConnection.getConnection();
		ArrayList<StudentDetails> liststu = new ArrayList<StudentDetails>();
		try {
			String sql = "select * from studetails where enroll_no=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			
			ps.setString(1,enroll );
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				StudentDetails obj = new StudentDetails();

				obj.setEnroll_no(rs.getString("enroll_no"));
				obj.setStu_name(rs.getString("stu_name"));
				obj.setBranch(rs.getString("branch"));
				obj.setStu_email(rs.getString("stu_email"));
				obj.setStu_mobileno(rs.getString("stu_mobileno"));
				obj.setSem(rs.getString("sem"));
				obj.setStatus(rs.getString("rstatus").charAt(0));
				obj.setStu_pass(rs.getString("stu_pass"));
				liststu.add(obj);
			}
		} catch (SQLException sq) {
			System.out.println("Unable to fetch Data" + sq);
		}
		return liststu;
	}
	public ArrayList<StudentDetails> findAll() {
		Connection conn = MyDatabaseConnection.getConnection();
		ArrayList<StudentDetails> liststu = new ArrayList<StudentDetails>();
		try {
			String sql = "select * from studetails";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				StudentDetails obj = new StudentDetails();

				obj.setEnroll_no(rs.getString("enroll_no"));
				obj.setStu_name(rs.getString("stu_name"));
				obj.setBranch(rs.getString("branch"));
				obj.setStu_email(rs.getString("stu_email"));
				obj.setStu_mobileno(rs.getString("stu_mobileno"));
				obj.setSem(rs.getString("sem"));
				obj.setStatus(rs.getString("rstatus").charAt(0));
				obj.setStu_pass(rs.getString("stu_pass"));
				liststu.add(obj);
			}
		} catch (SQLException sq) {
			System.out.println("Unable to fetch Data" + sq);
		}
		return liststu;
	}


	public static void main(String args[]) {

		/*StudentDetails obj1 = new StudentDetails("0173cs141015","Parakh","Cvjgjfj","nhbrlj","5946","ndcbk","hbjbvda");
		StudentDetailsDao obj = new StudentDetailsDao();
		obj.create(obj1);*/
		StudentDetailsDao obj2 = new StudentDetailsDao();
				ArrayList<StudentDetails> al = obj2.findAllByEnroll("123");
				 for (StudentDetails obj3 : al)
				 System.out.println(obj3);
	}
}
