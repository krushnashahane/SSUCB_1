<%-- 
    Document   : CityUpdate
    Created on : Sep 13, 2017, 11:57:30 AM
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
        <jsp:useBean id="c" class="ssucb.pojo.CityPojo"></jsp:useBean>
        <jsp:setProperty  property="*" name="c"></jsp:setProperty>
        <jsp:useBean id="CityDao" class="ssucb.dao.CityDao"></jsp:useBean>
        
        <%
        try{
        
        boolean b=CityDao.UpdateCity(c);
        if(b){
        %>
        <script>
            alert("City has been Updated Successfully..");
            window.location.href="City.jsp";
            
        </script>
        
        
        <%
        
        }
        
        
        }catch(Exception e){
        System.out.println(""+e);
        }
        
        
        
        
        %>
        
    </body>
</html>
