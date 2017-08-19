
<%@page import="ssucb.pojo.DepositInterestType" %>
<%@page import="ssucb.pojo.DepositInterest" %>
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
         DepositInterest di;
        %>
        <%
            try {
                username = session.getAttribute("username").toString();
                dtid=Integer.parseInt(request.getParameter("id").toString());
                System.out.println("Branchid ==="+dtid);
      
                  //   dt=DepositInteresttype.getDetailsByID(dtid);
                
              di=DepositInteresttype.GetDetailsofDepositInterestByid(dtid);
        System.out.println("Did"+di.getDid());
                
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
                <button class="tablinks" onclick="openCity(event, 'addbranch')">Update Deposit Interest</button>
         
            </div>
<%
try{
%>
            <div id="addbranch" class="tabcontent">
                <h3></h3>
                <br><br><table id="formtable">
                    <form name="frm" action="UpdateDepositInterestDetailsifo.jsp" method="POST">
                        <tr><td><input type="hidden" name="did" value="<%=di.getDid()%>"/></td></tr>
                        <tr><td><input type="text" name="perticulars" value="<%=di.getPerticulars()%>" placeholder="Enter Perticulars"/></td></tr>
                          <tr><td><input type="text" name="credit" value="<%=di.getCredit()%>" placeholder="Enter Credit"/></td></tr> 
                      <tr><td><input type="text" name="general" value="<%=di.getGeneral()%>" placeholder="Enter Genaral"/></td></tr>
                          <tr><td><input type="text" name="seniorcitizen" value="<%=di.getSeniorcitizen()%>" placeholder="Enter SeniorCitizen"/></td></tr>
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