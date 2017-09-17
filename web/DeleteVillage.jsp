<%-- 
    Document   : DeleteVillage
    Created on : Sep 13, 2017, 5:53:48 PM
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
        <jsp:useBean id="VillageDao" class="ssucb.dao.VillageDao"></jsp:useBean>
        <%
        try{
            int villageid=Integer.parseInt(request.getParameter("villageid").toString());
        boolean b=VillageDao.DeleteVillage(villageid);
        if(b){
        %>
        <script>
            alert("Deleted Successfully");
            window.location.href="village.jsp";
            
        </script>
        <%
        
        }
        
        
        
        }catch(Exception e){
        System.out.println(""+e);
        }
        
        
        
        
        %>
    </body>
</html>
