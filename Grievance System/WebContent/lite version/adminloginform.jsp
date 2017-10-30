<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String a=request.getParameter("user");
String b= request.getParameter("pass");

Connection cn=com.gs.jdbc.utilities.MyDatabaseConnection.getConnection();

PreparedStatement ps = cn.prepareStatement("select * from admin where uname=? and ad_pass=?");
ps.setString(1, a);
ps.setString(2, b);

ResultSet rs= ps.executeQuery();
if(rs.next())
{
	session.setAttribute("id",rs.getString(1));
	request.getRequestDispatcher("adminpannel.jsp").forward(request, response);
%>


<%	
}
else
{
	request.getRequestDispatcher("index.jsp").forward(request, response);
	%>
		<%
	}
%>

</body>
</html>