<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="javax.websocket.Session"%>
<%@page import="com.gs.jdbc.utilities.*"%>
<%@ page language="java"
	import="java.util.Date,java.util.*,com.gs.jdbc.entity.*,com.gs.jdbc.dao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
	<%
	String enroll = request.getParameter("compi");


	StudentDetails gev = new StudentDetails(enroll);
	StudentDetailsDao obj = new StudentDetailsDao();
	obj.editByRStatus(gev);
	request.getRequestDispatcher("verstu.jsp").forward(request, response);
%>