<%-- 
    Document   : insertdata
    Created on : Jul 31, 2017, 7:01:39 PM
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
     
     String file=request.getRealPath("")+"\\pdf\\List.xlsx";
     out.println(""+file);
     ssucb.dao.ReadExcelDemo r= new ssucb.dao.ReadExcelDemo();
     r.AddExceelDataIntoDatabase(file);
     out.println("inserted data");
     
     %>
    </body>
</html>
