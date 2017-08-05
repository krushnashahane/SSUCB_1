<%-- 
    Document   : Logout
    Created on : Jul 13, 2017, 6:46:28 PM
    Author     : Naresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
         request.getSession().invalidate();
         response.sendRedirect("adminlogin.jsp");
        
        
        %>
    </body>
</html>
