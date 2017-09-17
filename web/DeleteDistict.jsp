<%-- 
    Document   : DeleteDistict
    Created on : Sep 13, 2017, 3:52:16 PM
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
        <jsp:useBean id="DistictDao" class="ssucb.dao.DistictDao"></jsp:useBean>
    
    <%
    
    try{
    
    int did=Integer.parseInt(request.getParameter("did").toString());
    boolean b=DistictDao.DeleteDistict(did);
    if(b){
    %>
    <script>
       
    alert("Deleted Successfully..");
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
