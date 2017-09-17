<%-- 
    Document   : DeletePhoto
    Created on : Sep 12, 2017, 9:51:59 PM
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
        <jsp:useBean id="GallaryDao" class="ssucb.dao.GallaryDao"></jsp:useBean>
        <%
        
        try{
        
        int gid=Integer.parseInt(request.getParameter("gid").toString());
        boolean b=GallaryDao.DeleteGallary(gid);
        if(b){
       %>
       <script>
           
           alert("Deleted Successfully");
           window.location.href="GallaryAdd.jsp";
       </script>
        
        <% 
       
        }
        
        
        
        }catch(Exception e){
        
        System.out.println(""+e);
        }
        
        
        
        
        %>
    </body>
</html>
