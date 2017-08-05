<%-- 
    Document   : managerdelete
    Created on : Jul 8, 2017, 4:32:24 PM
    Author     : Naresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="Manager" class="ssucb.dao.ManagerDAO"></jsp:useBean>
    </head>
    <body>
       <%
       
       
       
       try{
       
       
       int mid=Integer.parseInt(request.getParameter("mid").toString());
       boolean b=Manager.DeletManager(mid);
       if(b){
       
       %>
       
       <script>
           
           
           alert("Manager has been Deletedd Successfully");
           window.location.href="managermaster.jsp";
           
       </script>
       <%
       
       }
       
       
       }catch(Exception e){
       
       System.out.println(e);
       }
       
       
       %>
    </body>
</html>
