<%-- 
    Document   : searchdata
    Created on : Mar 12, 2016, 11:54:49 AM
    Author     : sandeep kumar
--%>

<%@page import="java.sql.ResultSet"%>
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
String value="",audience,hostel="",etime,vehicle1,textarea="",clubname="",clubhead="",event,email="";
        String stime=request.getParameter("stime");
               Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=(Connection)DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
      String s="select *from first where stime='"+stime+"'";
      PreparedStatement ps=con.prepareStatement(s);
ResultSet rs=ps.executeQuery();
if(rs.next())
{        
clubhead=rs.getString("clubhead");
value=rs.getString("value");         
    textarea=rs.getString("textarea");
    email=rs.getString("email");
    clubname=rs.getString("clubname");
    hostel=rs.getString("hostel");
    //etime=rs.getString("etime");
 }
   
out.println("<h5>Sender Name:&nbsp&nbsp&nbsp&nbsp"+clubhead+"</h5>");
out.println("<h5>Receiver Name:&nbsp&nbsp&nbsp&nbsp"+email+" </h5>");
out.println("<h5>Club Name:&nbsp&nbsp&nbsp&nbsp"+clubname+"</h5>");
out.println("<h5>Venus:&nbsp&nbsp&nbsp&nbsp"+value+"</h5>");
out.println("<h5>Subject:&nbsp&nbsp"+textarea+"</h5>");
out.println("<h5>Stating time:&nbsp&nbsp&nbsp&nbsp"+stime+"</h5>");
out.println("<h5>Hostel:&nbsp&nbsp&nbsp&nbsp"+hostel+"</h5>");

%>
        
    </body>
</html>
