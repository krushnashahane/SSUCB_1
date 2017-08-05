<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ssucb.pojo.Beneficiary"%>
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
                xhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        document.getElementById("txtHint").innerHTML = this.responseText;
                    }
                };
                xhttp.open("GET", "getBankDetail.jsp?searchText=" + str, true);
                xhttp.send();
            }
        </script>
    </head>
    <body>
        <jsp:include page="managerheader.jsp"/>
        <jsp:useBean id="b" class="ssucb.pojo.Beneficiary"></jsp:useBean>
        <jsp:useBean id="BeneficiaryDao" class="ssucb.dao.BeneficiaryDao"></jsp:useBean>
            <br>
        <%!
            int managerid;

                                            %>
        <div class='content isOpen'>
            <a class='button'></a>

            <div class="tab">
                <button class="tablinks" onclick="openCity(event, 'newaccount')">View New Account Request</button>
                <button class="tablinks" onclick="openCity(event, 'viewrtgs')">View RTGS Request</button>
                <button class="tablinks" onclick="openCity(event, 'viewneft')">View NEFT Request</button>
            </div>

            <div id="newaccount" class="tabcontent">
                <%
                    try {
                        managerid = Integer.parseInt(session.getAttribute("managerid").toString());
                        ssucb.dao.ManagerDAO m = new ssucb.dao.ManagerDAO();
                        int branchid = m.getBranchIdByManager(managerid);
                        ssucb.dao.CustomerDAO cd = new ssucb.dao.CustomerDAO();

                        java.sql.ResultSet rs = cd.getCustomerBranchWise(branchid);
                %>
                <table class="tftable" border="1">
                    <tr>
                        <th>NAME</th>
                        <th>EMAIL</th>  
                        <th>CONTACt</th>

                        <th>ADDRESS</th>
                        <th>Type</th>
                        <th>Follow</th>
                        <th>Confirm Account</th>


                    </tr>    
                    <%
                        while (rs.next()) {

                    %>
                    <tr>
                        <td align="center"><%=rs.getString(2)%></td>
                        <td align="center"><%=rs.getString(3)%></td>  
                        <td align="center"><%=rs.getString(4)%></td>
                        <td align="center"><%=rs.getString(5)%></td>
                        <td align="center"><%=rs.getString(6)%></td>
                        <td align="center"><a href='followcustomer.jsp'>Follow</a></td>
                        <td align="center"><a href='confirmaccount.jsp'>Confirm</a></td>

                    </tr>          
                    <%
                        }
                    %>

                </table>
                <%
                    } catch (Exception e) {
                        out.println("Error is" + e);
                    }

                %>

            </div>

            <div id="viewrtgs" class="tabcontent">


                <%                    try {

                        ArrayList<Beneficiary> al = BeneficiaryDao.getBeneficiaryByManeger(managerid);

                        Iterator ir = al.iterator();

                %>



                <table class="tftable" border="1">
                    <tr>
                        <th>BF ID</th>
                        <th>Name of BF</th>  
                        <th>Address</th>
                        <th>Bank Name</th>
                        <th>Branch</th>
                        <th>Bank IFSC</th>
                        <th> Account Number</th>
                        <th> Type of Account</th>
                        <th> Amount to be remitted</th>
                        <th> Applicable Charges</th>
                        <th> Cheque No</th>
                        <th> Request</th>
                        <th>date</th>
                        <th>Status</th>

                    </tr>    
                    <%    while (ir.hasNext()) {
                            b = (Beneficiary) ir.next();

                    %>
                    <tr>
                        <td align="center"><%=b.getBfid()%></td>
                        <td align="center"><%=b.getNameofbeneficiary()%></td>  
                        <td align="center"><%=b.getAddress()%></td>
                        <td align="center"><%=b.getBankname()%></td>
                        <td align="center"><%=b.getBranchname()%></td>
                        <td align="center"><%=b.getBankifsc()%></td>
                        <td align="center"><%=b.getAccountnumber()%></td>
                        <td align="center"><%=b.getTypeofaccount()%></td>
                        <td align="center"><%=b.getAmmountinfigure()%></td>
                        <td align="center"><%=b.getApplicablecharges()%></td>
                        <td align="center"><%=b.getChequenno()%></td>
                        <td align="center"><%=b.getRequest()%></td>
                        <td align="center"><%=b.getDate()%></td>
                        <td align="center"><%=b.getStatus()%></td>
                    </tr>          
                    <%}
                    %>

                </table>
                <%
                    } catch (Exception e) {

                        System.out.println("View Rtgs/Neft Exception is===" + e);

                    }
                %>
            </div>

            <div id="viewneft" class="tabcontent">
                <h3>Search Branch By Name/Contact/Email/Taluka/District/Address</h3>
                <br>
                <p>
                    <input type="text" id="searchbox" onkeyup="showBankDetail(this.value)" name="search" placeholder="Search..">
                </p>
                <br><br>
                <div id="txtHint"></div>

            </div>

        </div>
    </div>
</body>
</html>
