
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="javax.websocket.Session"%>
<%@page import="com.gs.jdbc.utilities.*"%>
<%@ page language="java"
	import="java.util.Date,java.util.*,com.gs.jdbc.entity.*,com.gs.jdbc.dao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String subject = request.getParameter("Subject");
String details = request.getParameter("PostedDetails");
String obj1 = (String) session.getAttribute("id");

Date d = new Date(System.currentTimeMillis());
Grievences gev = new Grievences(subject ,'H',d,details,obj1);
GrievencesDao obj = new GrievencesDao();
obj.create(gev);
request.getRequestDispatcher("viewGrievences.jsp").forward(request, response);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

</body>
</html>r