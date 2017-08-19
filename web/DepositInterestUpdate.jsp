
<%@page import="ssucb.pojo.DepositInterestType" %>
<html>
    <head>
        <link rel="stylesheet" href="css/inputcss.css">
        <link rel="stylesheet" href="css/viewtable.css">
        <script>
            function showBankDetail(str) {
                var xhttp;    
                if (str == "") {
                    document.getElementById("txtHint").innerHTML = "";
                    return;
                }
                xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                    if (this.readyState == 4 && this.status == 200) {
                        document.getElementById("txtHint").innerHTML = this.responseText;
                    }
                };
                xhttp.open("GET", "getBankDetail.jsp?searchText="+str, true);
                xhttp.send();
            }
        </script>
        <jsp:useBean id="DepositInteresttype" class="ssucb.dao.DepositInterestDao"></jsp:useBean>
    </head>
    <body>
        <jsp:include page="adminmaster.jsp"/>
        <%!        String username;
        
        int dtid;
         DepositInterestType dt ;
        %>
        <%
            try {
                username = session.getAttribute("username").toString();
                dtid=Integer.parseInt(request.getParameter("id").toString());
                System.out.println("Branchid ==="+dtid);
      
                     dt=DepositInteresttype.getDetailsByID(dtid);
                
                
          System.out.println(""+dt.getType());
                
                %><%
                
            } catch (Exception e) {
System.out.println(e);
           //     response.sendRedirect("adminlogin.jsp");
            }
        %>
        <br>
        <div class='content isOpen'>
            <a class='button'></a>

            <div class="tab">
                <button class="tablinks" onclick="openCity(event, 'addbranch')">Update Deposit Interest Type</button>
         
            </div>
<%
try{
%>
            <div id="addbranch" class="tabcontent">
                <h3></h3>
                <br><br><table id="formtable">
                    <form name="frm" action="UpdateDepositInterestType.jsp" method="POST">
                        <tr><td><input type="hidden" name="dtid" value="<%=dt.getDtid()%>"/></td></tr>
                        <tr><td><input type="text" name="type" value="<%=dt.getType()%>" placeholder="Enter Name"/></td>
                           
                        <tr><td colspan="2" align="center">
                                <input type="submit" name="s"  value="Update" class="buttonsubmit button4"/>

                            </td></tr>

                    </form>  
                </table>


            </div>

            <%
            
}catch(Exception e){

System.out.println(e);
}
%>

     

        </div>
    </div>
</body>
</html>