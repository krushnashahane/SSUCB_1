<%-- 
    Document   : AddSmSAlert
    Created on : Sep 9, 2017, 2:29:12 PM
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
        <jsp:useBean id="s" class="ssucb.pojo.SmsAlert"></jsp:useBean>
        <jsp:setProperty property="*" name="s"></jsp:setProperty>
        <jsp:useBean id="sMS" class="ssucb.dao.SmsAlertDao"></jsp:useBean>
    
    <%
    try{
    
    boolean b=sMS.AddSmsAlert(s);
    if(b){
    
    %>
    <script>
        alert("Saved Successfully");
        window.location.href="ApplyforsmsALert.jsp";
    </script>
        
        <%
    }
    
    }catch(Exception e){
    
    System.out.println(""+e);
    }
    
    
    %>
    
    </body>
</html>
