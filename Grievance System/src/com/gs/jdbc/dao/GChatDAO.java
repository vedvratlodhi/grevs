package com.gs.jdbc.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.gs.jdbc.entity.Grievences;
import com.gs.jdbc.utilities.MyDatabaseConnection;

public class GChatDAO {

	public void create(String cmpno ,String reply,java.sql.Date d) {
		System.out.println(cmpno);
		System.out.println(reply);

		Connection conn = MyDatabaseConnection.getConnection();
		try {
			String sql = "insert into g_chat(chat_by,complaint_no,c_reply,rdate) values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,"a");
			ps.setString(2, cmpno);
			ps.setString(3,reply);
			ps.setDate(4, d);
			int x=ps.executeUpdate();
			System.out.println(x);
		} catch (SQLException sq) {
			sq.printStackTrace();
			System.out.println("Unable to create a new row." + sq);
		}
	}
	
	public ResultSet getAllChatByComplaintId(String compId)
	{
		Connection conn = MyDatabaseConnection.getConnection();
		ResultSet rs =null;
		try {
			PreparedStatement ps = conn.prepareStatement("select * from g_chat where gchat_id='?'");
			ps.setString(1,compId);
			
			 rs= ps.executeQuery();
			System.out.println("");
		} catch (SQLException sq) {
			sq.printStackTrace();
			System.out.println("Unable to create a new row." + sq);
		}
		return rs;
	}
	
}
