<%-- 
    Document   : TenderDelete
    Created on : Jul 8, 2017, 3:27:44 PM
    Author     : Naresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="tender" class="ssucb.dao.TenderMasterDao"></jsp:useBean>
    </head>
    <body>
        <%
        
        try{
            int tenderid=Integer.parseInt(request.getParameter("tid"));
        boolean b=tender.DeletTenderByTenderid(tenderid);
        if(b){
        %>
    <script>
        alert("Tender has been Deleted Successfully");
        window.location.href="tendormaster.jsp";
    </script>
        
        
        <%
        
        
        }
        
        
        
        }catch(Exception e){
        
        System.out.println(e);
        }
        
        
        
        %>
    </body>
</html>
