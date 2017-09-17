<%-- 
    Document   : DeleteCity
    Created on : Sep 13, 2017, 12:03:22 PM
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
        <jsp:useBean id="CityDao" class="ssucb.dao.CityDao">
        </jsp:useBean>
   
    <%
        try{
    int cityid=Integer.parseInt(request.getParameter("cityid").toString());
     
        boolean b=CityDao.DeleteCity(cityid);
        if(b){
        %>
        <script>
            
            alert("city has been Deleted Successfully");
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
