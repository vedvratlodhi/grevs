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

PreparedStatement ps = cn.prepareStatement("select * from studetails where enroll_no=? and stu_pass=? and rstatus=? ");
ps.setString(1, a);
ps.setString(2, b);
ps.setString(3, 'y'+"");

ResultSet rs= ps.executeQuery();
if(rs.next())
{
	session.setAttribute("id",rs.getString(1));
	request.getRequestDispatcher("viewGrievences.jsp").forward(request, response);
%>


<%	
}
else
{
	String ab=null;
	request.setAttribute("ab","Wrong Username Or Password");
	request.getRequestDispatcher("stulogin.jsp").forward(request, response);
}%>
<a href="NewFile.jsp"><button>Logout</button></a>
</body>
</html>