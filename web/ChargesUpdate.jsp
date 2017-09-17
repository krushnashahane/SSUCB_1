<%-- 
    Document   : AddCharges
    Created on : Sep 15, 2017, 5:22:56 PM
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
        <jsp:useBean id="c" class="ssucb.pojo.ChargesPojo"></jsp:useBean>
        <jsp:setProperty property="*" name="c"></jsp:setProperty>
        <jsp:useBean id="Charges" class="ssucb.dao.ChargesDao"></jsp:useBean>
  
    
    <%
    try{
    boolean b=Charges.UpdateCharges(c);
    if(b){
    %>
    <script>
        alert("Charges Updated Successfully");
        window.location.href="Charges.jsp";
    </script>
        
        <%
    
    }
    
    
    }catch(Exception e){
    System.out.println(""+e);
    }
    
    %>
    
    </body>
</html>
