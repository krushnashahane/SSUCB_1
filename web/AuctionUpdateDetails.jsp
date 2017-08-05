<%@page import="ssucb.pojo.AuctionPojo"%>

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
    </head>
    <body>
        <jsp:include page="adminmaster.jsp"/>
        <%!        String username;
            int Aucid;
            AuctionPojo  a;
        %>
        <%
            try {
                username = session.getAttribute("username").toString();

                System.out.println(username);
                Aucid = Integer.parseInt(request.getParameter("Aucid").toString());
                System.out.println("Aucid ===" + Aucid);
                ssucb.dao.AuctionMasterDao Auctiondao = new ssucb.dao.AuctionMasterDao();
                a = Auctiondao.GetAuctionDetailsByid(Aucid);




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
                <button class="tablinks" onclick="openCity(event, 'addbranch')">Update Auction</button>

            </div>
            <%
                try {
            %>
            <div id="addbranch" class="tabcontent">
                <h3>Update Auction Form</h3>
                <br><br><table id="formtable">
                    <form name="frm" action="UpdateAuctionDetails.jsp" method="POST">
                        <tr><td><input type="hidden" name="Aucid" value="<%=Aucid%>"</td></tr>
                        <tr><td><input type="text" name="AuctionDesc" value="<%=a.getAuctionDesc()%>" placeholder="Tender Description"/></td></tr>
                        <td><input type="text" name="odate" value="<%=a.getOdate()%>" placeholder="Opening date"/></td></tr>

                        <tr><td><input type="text" name="cdate" value="<%=a.getCdate()%>" placeholder="closing date"/></td></tr>
                        <td><input type="text" name="status" value="<%=a.getStatus()%>" placeholder="Status"/></td></tr>


                      

                        <tr><td colspan="2" align="center">
                                <input type="submit" name="s"  value="Update Auction" class="buttonsubmit button4"/>

                            </td></tr>


                    </form>  
                </table>


            </div>

            <%


                } catch (Exception e) {

                    System.out.println(e);
                }
            %>



        </div>
    </div>
</body>
</html>