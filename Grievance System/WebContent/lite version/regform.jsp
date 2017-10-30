<%@page import="com.gs.jdbc.entity.StudentDetails"%>
<%@page import="com.gs.jdbc.dao.StudentDetailsDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String name = request.getParameter("name");
String enroll = request.getParameter("enroll");
String branch = request.getParameter("branch");
String sem = request.getParameter("sem");
String mobile = request.getParameter("mobile");
String pass = request.getParameter("pass");
String email = request.getParameter("email");

StudentDetails obj1 = new StudentDetails(enroll,name,email,branch,sem,mobile,pass,'N');
StudentDetailsDao obj = new StudentDetailsDao();
obj.create(obj1);
request.getRequestDispatcher("regsuccess.jsp").forward(request, response);
%>

</body>
</html>