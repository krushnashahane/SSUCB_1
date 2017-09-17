<%-- 
    Document   : ServiceChargesUpdate
    Created on : Sep 15, 2017, 3:41:09 PM
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
      
        <jsp:useBean id="ServiceCharges" class="ssucb.dao.ServiceChargesDao"></jsp:useBean>
    
    
    <%
    
    try{
    int sid=Integer.parseInt(request.getParameter("sid").toString());
    boolean b=ServiceCharges.DeleteServiceCharges(sid);
    if(b){
    %>
    <script>
        alert("Deleted Success");
        window.location.href="ServicesCharges.jsp";
        
    </script>
        
        
        <%
    }
    
    
    
    }catch(Exception e){
    
    System.out.println(""+e);}
    
    %>
    
    </body>
</html>
