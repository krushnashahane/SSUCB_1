<%-- 
    Document   : UpdateTenderDetails
    Created on : Jul 7, 2017, 2:11:38 PM
    Author     : KRISHNA
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
String button=request.getParameter("s");
if(button!=null){
    System.out.println("Button Checked...");
    
    
    
    
    
    
    
%>
     
<jsp:useBean id="a" class="ssucb.pojo.AuctionPojo"></jsp:useBean>

<jsp:useBean id="Auctdao" class="ssucb.dao.AuctionMasterDao"></jsp:useBean>
        
        <%
        
        a.setAucid(Integer.parseInt(request.getParameter("Aucid")));
        a.setAuctionDesc(request.getParameter("AuctionDesc").toString());
        a.setCdate(request.getParameter("cdate").toString());
        a.setOdate(request.getParameter("odate").toString());
        a.setCdate(request.getParameter("cdate").toString());
        a.setStatus(request.getParameter("status").toString());
        System.out.println("AuctionDesc==="+a.getAuctionDesc());
        
        
        
boolean b=Auctdao.UpdateAuctionDetailsByAuctid(a);
if(b){
%>
<script>
    
    alert("Auction Updated Successfully...");
    window.location.href="Auctions.jsp";
</script>
        
        
        
        <%


}




}
     }catch(Exception e){
     
     System.out.println("Error is"+e);
     
     }


%>
    </body>
</html>
