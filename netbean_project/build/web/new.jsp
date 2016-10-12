<%-- 
    Document   : new
    Created on : Mar 12, 2016, 12:54:28 AM
    Author     : sandeep kumar
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <%
String s1,s2,s3,s4;
s1=request.getParameter("san1");
s2=request.getParameter("san2");
s3=request.getParameter("san3");
s4=request.getParameter("san4");    

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=(Connection)DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
String s="insert into first values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')";
PreparedStatement ps=con.prepareStatement(s);
ps.executeQuery();

%>
        <h1>Hello World!</h1>
    </body>
</html>
