<%-- 
    Document   : AddServiceCharges
    Created on : Sep 15, 2017, 3:07:03 PM
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
        <jsp:useBean id="s" class="ssucb.pojo.ServiceCharges"></jsp:useBean>
        <jsp:setProperty  property="*" name="s"></jsp:setProperty>
    
        <jsp:useBean id="ServiceCharge" class="ssucb.dao.ServiceChargesDao"></jsp:useBean> 
    
    <%
    
    try{
    
    boolean b=ServiceCharge.AddServiceCharges(s);
    if(b){
    %>
    <script>
        
        alert("Service Charges Added Successfully");
        window.location.href="ServicesCharges.jsp";
    </script>
        
        <%
    }
    }catch(Exception e){
    System.out.println(""+e);
    }
    
    %>
    
    
    </body>
</html>
