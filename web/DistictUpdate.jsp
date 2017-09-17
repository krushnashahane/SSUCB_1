<%-- 
    Document   : DistictUpdate
    Created on : Sep 13, 2017, 4:13:24 PM
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
        <jsp:useBean id="d" class="ssucb.pojo.DistictPojo"></jsp:useBean>
        <jsp:setProperty property="*" name="d"></jsp:setProperty>
        <jsp:useBean id="DistictDao" class="ssucb.dao.DistictDao"></jsp:useBean>
        <%
        try{
        boolean b=DistictDao.UpdateDistict(d);
        if(b){
        
        %>
        <script>
            alert("Updated Success..");
            window.location.href="Distict.jsp";
        </script>
        
        
        <%
        }
        
        }catch(Exception e){
        System.out.println(""+e);
        }
        
        %>
    </body>
</html>
