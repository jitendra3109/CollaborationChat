<%-- 
    Document   : newsearch
    Created on : Mar 12, 2016, 1:12:56 AM
    Author     : sandeep kumar
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
String roll="";
String s1=request.getParameter("s1");
Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=(Connection)DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
      String s="select *from first where s1='"+s1+"'";
      PreparedStatement ps=con.prepareStatement(s);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
    roll=rs.getString("s1");
    s1=rs.getString("s2");
}               
out.println("+roll+");

%>
        <h1>Hello World!</h1>
    </body>
</html>
