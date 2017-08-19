<%-- 
    Document   : DeletDITD
    Created on : Aug 16, 2017, 6:23:54 PM
    Author     : Naresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="Dtdao" class="ssucb.dao.DepositInterestDao"></jsp:useBean>
    </head>
    <body>
       <%
       
       try{
       
       int id=Integer.parseInt(request.getParameter("id").toString());
       boolean b=Dtdao.DeleteDepositInterestType(id);
       if(b){
       %>
       <script>
           
           alert("Deleted Successfully");
           window.location.href="DepositInterestTypeDetails.jsp";
       </script>
        
        
        
        <%
       
       
       
       
       
       }
       
       
       
       
       }catch(Exception e){
       
       
       System.out.println(""+e);
       }
       
       
       
       
       %>
    </body>
</html>
