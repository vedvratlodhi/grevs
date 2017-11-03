<%@page import="com.gs.jdbc.entity.Grievences"%>
<%@page import="com.gs.jdbc.dao.GrievencesDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
GrievencesDao gd = new GrievencesDao();
Grievences gri = new Grievences();
int i=Integer.parseInt(request.getParameter("no"));
gri.setComplaint_no(i);
gri.setStatus('c');;
gd.editByComp(gri);
System.out.println("kjxcbnvjkbjk ");
RequestDispatcher rs = request.getRequestDispatcher("postreply.jsp?compi="+i);
System.out.println("kjxcb  6 788876876876nvjkbjk ");

rs.forward(request,response);
System.out.println("last ");
%>

</body>
</html>