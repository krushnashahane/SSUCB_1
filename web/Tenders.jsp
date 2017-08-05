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

        <br>
        <div class='content isOpen'>
            <a class='button'></a>

            <div class="tab">

                <button class="tablinks" onclick="openCity(event, 'view')">View Tenders</button>

            </div>

            <!--     <div id="addnewtendor" class="tabcontent">
                     <h3>Add Branch Form</h3>
                     <br><br><table id="formtable">
                         <form name="frm" action="TenderMasterUpload.jsp" method="POST"   enctype="multipart/form-data">
                             <tr><td><input type="text" name="tenderdesc" value="" placeholder="Tender Description"/></td></tr>
                                 <td><input type="date" name="odate" value="" placeholder="Opening date"/></td></tr>
     
                         <tr><td><input type="date" name="cdate" value="" placeholder="closing date"/></td></tr>
                                 <td><input type="text" name="status" placeholder="Status"/></td></tr>
     
     
                             <tr><td><input type="file" name="file" value=""/></td>
                                 
                             </tr>
     
                             <tr><td colspan="2" align="center">
                                     <input type="submit" name="s"  value="Add New Branch" class="buttonsubmit button4"/>
     
                                 </td></tr>
     
                         </form>  
                     </table>
     
     
                 </div>-->

            <div id="view" class="tabcontent">

                <%
                    try {
                        // java.sql.ResultSet rs = ssucb.dao.DBDAO.getInstance().getAllBranches();

                        ssucb.dao.TenderMasterDao tdao = new ssucb.dao.TenderMasterDao();
                        java.util.ArrayList al = tdao.GetAllTenderMaster();


                %>
                <table class="tftable" border="1">
                    <tr>
                        <th>Tender id</th>
                        <th>Tender Desc</th>
                        <th>Odate</th>  
                        <th>Cdate</th>

                        <th>Status</th>
                        <th>Download File</th>



                    </tr>    
                    <%

                        ssucb.pojo.TenderMasterPojo t = new ssucb.pojo.TenderMasterPojo();
                        java.util.Iterator ir = al.iterator();
                        while (ir.hasNext()) {
                            t = (TenderMasterPojo) ir.next();


                    %>
                    <tr>
                        <td align="center"><%=t.getTid()%></td>
                        <td align="center"><%=t.getTenderdesc()%></td>
                        <td align="center"><%=t.getOdate()%></td>
                        <td align="center"><%=t.getCdate()%></td>  
                        <td align="center"><%=t.getStatus()%></td>
                        <td align="center"><a href="DownloadTenderfile.jsp?file=<%=t.getFile()%>"><%=t.getFile()%></a></td>



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

            <!-- <div id="search" class="tabcontent">
                 <h3>Search Branch By Name/Contact/Email/Taluka/District/Address</h3>
                 <br>
                 <p>
                     <input type="text" id="searchbox" onkeyup="showBankDetail(this.value)" name="search" placeholder="Search..">
                 </p>
                 <br><br>
                 <div id="txtHint"></div>
 
             </div>-->

        </div>
    </div>
</body>
</html>