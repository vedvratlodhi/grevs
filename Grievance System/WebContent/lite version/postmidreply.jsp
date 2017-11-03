<%@page import="java.sql.Date"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="javax.websocket.Session"%>
<%@page import="com.gs.jdbc.utilities.*"%>
<%@ page language="java"
	import="java.util.*,com.gs.jdbc.entity.*,com.gs.jdbc.dao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- PARAKH  <%
	String reply = request.getParameter("postreply");
int comp = Integer.parseInt(request.getParameter("comp"));
	System.out.println(reply);
	//java.util.Date dt = DateUtils.convertDate("23-10-2017");
	Date d = new Date(System.currentTimeMillis());
	Date d1= new Date();
	System.out.println(d1);
	Grievences gev = new Grievences(comp,reply);
	GrievencesDao obj = new GrievencesDao();
	obj.editByComp(gev);
	request.getRequestDispatcher("adminpannel.jsp").forward(request, response);
%>
 --%>
 
 <%
	String reply = request.getParameter("postreply");
	String status = request.getParameter("status");
 int comp = Integer.parseInt(request.getParameter("comp"));
 String cmpno=""+comp;
	System.out.println(reply);
java.sql.Date d= new java.sql.Date(new java.util.Date().getTime());
	GChatDAO gchatdao = new GChatDAO();
     gchatdao.create(status,cmpno, reply, d);
     Grievences gev = new Grievences();
 	GrievencesDao obj = new GrievencesDao();
     gev.setComplaint_no(comp);
     gev.setStatus('r');
     obj.editByComp(gev);
     
     if(status.equals("a"))
	request.getRequestDispatcher("postreply.jsp?compi="+cmpno).forward(request, response);
     else
    		request.getRequestDispatcher("viewreply.jsp?gid="+cmpno).forward(request, response);

%>
</body>
</html>