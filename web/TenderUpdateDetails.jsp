<%@page import="ssucb.pojo.TenderMasterPojo"%>
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
            int Tenderid;
            TenderMasterPojo t;
        %>
        <%
            try {
                username = session.getAttribute("username").toString();

                System.out.println(username);
                Tenderid = Integer.parseInt(request.getParameter("tid").toString());
                System.out.println("Tenderid ===" + Tenderid);
                ssucb.dao.TenderMasterDao tenderdao = new ssucb.dao.TenderMasterDao();
                t = tenderdao.GetTenderDetailsByTenderid(Tenderid);




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
                <button class="tablinks" onclick="openCity(event, 'addbranch')">Add New Tender</button>

            </div>
            <%
                try {
            %>
            <div id="addbranch" class="tabcontent">
                <h3>Add Tender Form</h3>
                <br><br><table id="formtable">
                    <form name="frm" action="UpdateTenderDetails.jsp" method="POST">
                        <tr><td><input type="hidden" name="tid" value="<%=Tenderid%>"</td></tr>
                        <tr><td><input type="text" name="tenderdesc" value="<%=t.getTenderdesc()%>" placeholder="Tender Description"/></td></tr>
                        <td><input type="text" name="odate" value="<%=t.getOdate()%>" placeholder="Opening date"/></td></tr>

                        <tr><td><input type="text" name="cdate" value="<%=t.getCdate()%>" placeholder="closing date"/></td></tr>
                        <td><input type="text" name="status" value="<%=t.getStatus()%>" placeholder="Status"/></td></tr>


                      

                        <tr><td colspan="2" align="center">
                                <input type="submit" name="s"  value="Update Tender" class="buttonsubmit button4"/>

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