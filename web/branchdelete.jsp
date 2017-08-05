<%-- 
    Document   : branchdelete
    Created on : Jul 8, 2017, 2:20:04 PM
    Author     : Naresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%
        
        
        try{
        int branchid=Integer.parseInt(request.getParameter("branchid"));
        
        
        boolean b=ssucb.dao.DBDAO.getInstance().DeleteBranch(branchid);
        if(b){
        %>
        <script>
            
            alert("Branch has been deleted Successfully..");
            window.location.href="addnewbranch.jsp";
        </script>
        
        
        <%
        
        
        
        }
        
        
        }catch(Exception e){
        
        
        System.out.println(e);
        }
        
        
        
        %>
    </body>
</html>
