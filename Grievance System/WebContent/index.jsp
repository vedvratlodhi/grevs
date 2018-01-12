<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*" %>

<html>
   <head>
      <title>Birts</title>
   </head>
   
   <body>
     
      <%
         // New location to be redirected
         String site = new String("lite%20version/");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
      %>
   </body>
</html>