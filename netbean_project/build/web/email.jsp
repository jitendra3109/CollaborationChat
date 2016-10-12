<%-- 
    Document   : email
    Created on : Mar 13, 2016, 12:17:15 AM
    Author     : sandeep kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="green">
        
   
                <%
String name="9:30AM";
String name1="7:30AM";
String name2="11:00AM"; 
String name3="6:00PM";       
%>



<form> <table border="0" align="center" width="80%" bgcolor="#005412">
     <tr>
                <td align="center"><h2>View Email</h2></td>
            </tr>
  </table>

   
           
        <table border="0" width="80%" align="center">
                   
                <tr width="100%">
                    <td width="20%" style="color:red">Sender Name</td>
                    <td width="25%">Receiver Name</td>
                    <td width="40%">Subject</td>
                    <td></td>
                </tr>
                </table>

        
        
        <table border="0" width="80%" align="center">
           
                
         
                         <tr width="100%">
                    <td width="20%">Manoj kumar</td>
                    <td width="25%">Director@gmail.com</td>
                    <td width="40%">Permission for Cultural Festival</td>
                    <td><% out.print( "<a href=searchdata.jsp?stime="+name2+" ><font size=4>View</font></a>");       
                    %></td>
                </tr>
                <tr width="100%">
                    <td width="20%">Vivash Singh</td>
                    <td width="25%">messComettee@gmail.com</td>
                    <td width="40%">Mess fee</td>
                    <td><% out.print( "<a href=searchdata.jsp?stime="+name1+" ><font size=4>View</font></a>");       
                    %></td>
                </tr>
                <tr width="100%">
                    <td width="20%">Ashok varma</td>
                    <td width="25%">Ragistrar@gmail.com</td>
                    <td width="40%">Xeric Sport Festival</td>
                    <td>
                        <% out.print( "<a href=searchdata.jsp?stime="+name+" ><font size=4>View</font></a>");       
                    %>
                        </td>
                </tr>
                
                <tr width="100%">
                    <td width="20%">Rahul Sharma</td>
                    <td width="25%">Director@gmail.com</td>
                    <td width="40%">Hachathon Event</td>
                    <td><% out.print( "<a href=searchdata.jsp?stime="+name3+" ><font size=4>View</font></a>");       
                    %></td>
                </tr>
                
                        </table>

        
        
        
        
        
       </form>
       
    </body>
</html>
