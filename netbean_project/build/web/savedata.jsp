<%-- 
    Document   : savedata
    Created on : Mar 12, 2016, 11:05:57 AM
    Author     : sandeep kumar
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
String value,audience,hostel,stime,etime,vehicle1,textarea,clubname,clubhead,event,email;
value=request.getParameter("value");
audience=request.getParameter("audience");
hostel=request.getParameter("hostel");
stime=request.getParameter("stime");    
etime=request.getParameter("etime");
vehicle1=request.getParameter("vehicle1");
textarea=request.getParameter("textarea");
clubname=request.getParameter("clubname");    
clubhead=request.getParameter("clubhead");
event=request.getParameter("event");
email=request.getParameter("email"); 

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=(Connection)DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
String s="insert into first values('"+value+"','"+audience+"','"+hostel+"','"+stime+"','"+etime+"','"+vehicle1+"','"+textarea+"','"+clubname+"','"+clubhead+"','"+event+"','"+email+"')";
PreparedStatement ps=con.prepareStatement(s);
ps.executeQuery();
response.sendRedirect("success.jsp");
%>
        
        <h1>Hello World!</h1>
    </body>
</html>
