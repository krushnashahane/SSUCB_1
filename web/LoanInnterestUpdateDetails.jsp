

<%@page  import="ssucb.pojo.LoanInterest" %>
<%@page import="ssucb.pojo.LoanInterestType" %>
<%@page import="java.util.*" %>

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
        <jsp:useBean id="LIDao" class="ssucb.dao.LoanInterestDao"></jsp:useBean>
        <jsp:useBean id="lt" class="ssucb.pojo.LoanInterestType"></jsp:useBean>
        </head> 
        <body>
        <jsp:include page="adminmaster.jsp"/>
        <%!        String username;

            int dtid;
            LoanInterest l;
                    %>
        <%
            try {
                username = session.getAttribute("username").toString();
                dtid = Integer.parseInt(request.getParameter("id").toString());
                System.out.println("Branchid ===" + dtid);
                l = LIDao.GetLoanInterestDetailsByid(dtid);
                //   dt=DepositInteresttype.getDetailsByID(dtid);


        %><%                    } catch (Exception e) {
                        System.out.println(e);
                        //     response.sendRedirect("adminlogin.jsp");
                    }
        %>
        <br>
        <div class='content isOpen'>
            <a class='button'></a>

            <div class="tab">
                <button class="tablinks" onclick="openCity(event, 'addbranch')">Update Loan Interest</button>

            </div>
            <%
                try {
            %>
            <div id="addbranch" class="tabcontent">
                <h3></h3>
                <br><br><table id="formtable">
                    <form name="frm" action="UpdateLoanInterest.jsp" method="POST">
                        <tr><td><input type="hidden" name="lid" value="<%=l.getLid()%>"/></td></tr>
                        <tr><td><input type="text" name="perticulars" value="<%=l.getPerticulars()%>" placeholder="Enter Perticulars"/></td></tr>
                        <tr><td><input type="text" name="roi" value="<%=l.getRoi()%>" placeholder="Enter ROi"/></td></tr> 
                        <tr><td>
                                <select  name="ltid">
                                    <%

                                        ArrayList<LoanInterestType> al = LIDao.GetAllLoanInterestType();
                                        Iterator ir = al.iterator();
                                        while (ir.hasNext()) {

                                            lt = (LoanInterestType) ir.next();
                                    %>

                                    <option selected="<%=l.getLtid()%>" value="<%=lt.getLitid()%>"><%=lt.getType()%></option>

                                    <%

                                        }

                                    %>


                                </select>




                            </td></tr>



                        <tr><td colspan="2" align="center">
                                <input type="submit" name="s"  value="Update" class="buttonsubmit button4"/>

                            </td></tr>

                    </form>  
                </table>


            </div>

            <%                } catch (Exception e) {

                    System.out.println(e);
                }
            %>



        </div>
    </div>
</body>
</html>