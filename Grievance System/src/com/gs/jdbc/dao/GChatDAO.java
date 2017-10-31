package com.gs.jdbc.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.gs.jdbc.entity.GChat;
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
	
	public List<GChat> getAllChatByComplaintId(String compId)
	{
		Connection conn = MyDatabaseConnection.getConnection();
		ResultSet rs =null;
		List<GChat> glist = new ArrayList<GChat>();
		try {
			PreparedStatement ps = conn.prepareStatement("select * from g_chat where complaint_no=?");
			ps.setString(1,compId);
			 rs= ps.executeQuery();
			 while(rs.next()){
				GChat g = new GChat(); 
			
			g.setChatBY(rs.getString("chat_by"));
			g.setCReply(rs.getString("c_reply"));
			
			g.setRDate(rs.getString("rdate"));
			glist.add(g);
			System.out.println(g);
			 }
			
		} catch (SQLException sq) {
			sq.printStackTrace();
			System.out.println("Unable to create a new row." + sq);
		}
		
	
		
		return glist;
		
		
	}
	public static void main(String args[])
	{
		 GChatDAO g =new GChatDAO();
		System.out.println(g.getAllChatByComplaintId("100000"));
		 
	}
}
