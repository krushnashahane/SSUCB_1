<%-- 
    Document   : testmsg
    Created on : Jun 25, 2017, 2:24:20 PM
    Author     : KRISHNA
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
 response.sendRedirect("http://smssigma.com/API/WebSMS/Http/v1.0a/index.php?username=educom&password=adinathgirisir&sender=GIRIED&to=9850562436&message=Hello+Test+Message&reqid=1&format={json|text}&route_id=OPT-IN ROUTE{AUTO}[1]+GIRIED");
       %>
    </body>
</html>
