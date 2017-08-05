<%-- 
    Document   : UpdateEventDetails
    Created on : Jul 7, 2017, 5:58:06 PM
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
        
        String button=request.getParameter("s");
        if(button!=null){
        System.out.println("Button has been pressed.");
        
        %>
        <jsp:useBean id="e" class="ssucb.pojo.EvenMasterPojo"></jsp:useBean>
        
        <jsp:useBean id="EventDao" class="ssucb.dao.EventMasterDAO"></jsp:useBean>
        <%
            
            e.setEventID(Integer.parseInt(request.getParameter("EventID")));
            e.setEventName(request.getParameter("EventName"));
            e.setEventDesc(request.getParameter("EventDesc"));
            e.setEdate(request.getParameter("Edate"));
            e.setEtime(request.getParameter("Etime"));
        boolean b=EventDao.UpdateEventDetails(e);
        
        
        if(b){
        %>
        <script>
            alert("Event Has been Updated Successfully..")
            window.location.href="EventMaster.jsp";
        </script>
        
        
        
        <%
        
        
        }
        
        
        
        
        }
        
        
        %>
    </body>
</html>
