package com.gs.jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.gs.jdbc.entity.AdminDetails;
import com.gs.jdbc.entity.StudentDetails;
import com.gs.jdbc.utilities.MyDatabaseConnection;

public class AdminDetailsDao {
	
	
	public ArrayList<AdminDetails> findAll() {
		Connection conn = MyDatabaseConnection.getConnection();
		ArrayList<AdminDetails> listAdmin = new ArrayList<AdminDetails>();
		try {
			String sql = "select * from admin";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				AdminDetails obj = new AdminDetails();
                   obj.setAd_email(rs.getString("ad_email"));
                   obj.setAd_mobileno(rs.getString("ad_mobileno"));
                   obj.setAd_name(rs.getString("ad_name"));
                   obj.setDesign(rs.getString("design"));
				listAdmin.add(obj);
			}
		} catch (SQLException sq) {
			System.out.println("Unable to fetch Data" + sq);
		}
		return listAdmin;
	}
 
}
