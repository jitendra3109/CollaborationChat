<%-- 
    Document   : searchdata
    Created on : Mar 12, 2016, 11:46:36 AM
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
String value,audience,hostel,etime,vehicle1,textarea,clubname,clubhead,event,email;
        String stime=request.getParameter("stime");
               Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=(Connection)DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
      String s="select *from first where stime='"+stime+"'";
      PreparedStatement ps=con.prepareStatement(s);
ResultSet rs=ps.executeQuery();
if(rs.next())
{               
    value=rs.getString("value");
    audience=rs.getString("audience");
    hostel=rs.getString("hostel");
    etime=rs.getString("etime");
}
out.println("value");
out.println("audience");
out.println("hostel");
out.println("etime");
%>
   
        
        <h1>Hello World!</h1>
    </body>
</html>
