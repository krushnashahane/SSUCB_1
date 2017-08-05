<%-- 
    Document   : TuctionDelete
    Created on : Jul 8, 2017, 3:38:04 PM
    Author     : Naresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="Auction" class="ssucb.dao.AuctionMasterDao"></jsp:useBean>
    </head>
    <body>
       <%
           try{
       int Auctionid=Integer.parseInt(request.getParameter("Aucid").toString());
       
       boolean b=Auction.DeleteAuction(Auctionid);
       if(b){
       %>
       
        
       <script>
            
            
            alert("Auction has been Deleted Successfully");
            window.location.href="Auctions.jsp";
            
            
       </script>
       
       <%
       
       
       
       
       }
           }catch(Exception e){
           System.out.println(e);
           }       
       %>
    </body>
</html>
