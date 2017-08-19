<%-- 
    Document   : addDistict
    Created on : Aug 11, 2017, 12:52:52 PM
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
        <jsp:useBean id="d" class="ssucb.pojo.DistictPojo">
        </jsp:useBean>
        <jsp:setProperty property="*" name="d"></jsp:setProperty>
        <jsp:useBean id="Distictdao" class="ssucb.dao.DistictDao"></jsp:useBean>
        
        <%
        
        try{
        
        boolean b=Distictdao.AddDistict(d);
        if(b){
        
        %>
        <script>
            
            alert("Distict Added");
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
