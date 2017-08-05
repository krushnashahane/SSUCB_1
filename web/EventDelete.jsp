<%-- 
    Document   : EventDelete
    Created on : Jul 8, 2017, 4:03:22 PM
    Author     : Naresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="Event" class="ssucb.dao.EventMasterDAO"></jsp:useBean>
    </head>
    <body>
        <%
        try{
        int Eventid=Integer.parseInt(request.getParameter("eid"));
        boolean b=Event.DeletEvent(Eventid);
        if(b){
        
        %>
        <script>
            alert("Event has been Deleted Successfully..");
            window.location.href="EventMaster.jsp";
            
        </script>
        
        
        <%
        }
        }catch(Exception e){
        
        
        System.out.println(e);
        }
        
        
        
        
        %>
    </body>
</html>
