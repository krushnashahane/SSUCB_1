<%-- 
    Document   : AddShareHolderData
    Created on : Jul 31, 2017, 6:01:52 PM
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
        <jsp:useBean id="sh" class="ssucb.pojo.ShareHolderPojo"></jsp:useBean>
        <jsp:setProperty property="*" name="sh"></jsp:setProperty>
    
        <jsp:useBean id="shdao" class="ssucb.dao.ShareHolderDao"></jsp:useBean>
   
    <%
    try{
    
    boolean b=shdao.AddShareHolder(sh);
    if(b){
    %>
    
    <script>
        
        alert("Share Holder Added Successfully...");
        window.location.href="AddShareHolder.jsp";
        
        
    </script>
        <%
    
    }
    
    
    }catch(Exception e){
    
    System.out.println(e);
    }
    
    
    
    
    
    %>
    
    
    
    
    
    </body>
</html>
