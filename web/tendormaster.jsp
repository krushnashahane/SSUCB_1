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
        <jsp:include page="adminmaster.jsp"/>

        <br>
        <div class='content isOpen'>
            <a class='button'></a>

            <div class="tab">
                <button class="tablinks" onclick="openCity(event, 'addnewtendor')">Add New Tender</button>
                <button class="tablinks" onclick="openCity(event, 'view')">View Tender</button>
                <!--<button class="tablinks" onclick="openCity(event, 'search')">Search Tender</button>-->
            </div>

            <div id="addnewtendor" class="tabcontent">
                <h3>Add Tender Form</h3>
                <br><br>
                <!-- <table id="formtable">-->
                <form name="frm" action="TenderMasterUpload.jsp" method="POST"  enctype="multipart/form-data" class="form-horizontal form-label-left" novalidate>
                    <div class="item form-group">
                        <input type="text" name="tenderdesc" id="name" data-validate-length-range="6" data-validate-words="2" value="" placeholder="Tender Description" required="required"/>
                    </div>
                    <div class="item form-group">

                        <input type="date" name="odate" value="" placeholder="Opening date" required="required"/>
                    </div>
                    <div class="item form-group">
                        <input type="date" name="cdate" value="" placeholder="closing date" required="required"/>
                    </div>
                    <div class="item form-group">

                        <input type="text" name="status" placeholder="Status" data-validate-length-range="6" required="required"/>
                    </div>
                    <div class="item form-group">
                        <input type="file" name="file" value="" required="required"/>
                    </div>   


                    <div class="item form-group">
                        <input type="submit" name="s"  value="Add New Tender" class="buttonsubmit button4"/>

                    </div>

                </form>  
                <!--</table>-->


            </div>

            <div id="view" id="tblData" class="tabcontent">

                <%
                    try {
                        // java.sql.ResultSet rs = ssucb.dao.DBDAO.getInstance().getAllBranches();

                        ssucb.dao.TenderMasterDao tdao = new ssucb.dao.TenderMasterDao();
                        java.util.ArrayList al = tdao.GetAllTenderMaster();


                %>
                <table class="tftable"id="tblData" border="1">

                    <input type="text" name="search" id="searchbox" placeholder="Search..">



                    <thead>
                        <tr><th>Tender id</th>
                            <th>Tender Desc</th>
                            <th>Odate</th>  
                            <th>Cdate</th>

                            <th>Status</th>
                            <th>File</th>
                            <th>Update Tender</th>
                            <th>Delete Tender</th>


                        </tr>   </thead> 
                        <%                        ssucb.pojo.TenderMasterPojo t = new ssucb.pojo.TenderMasterPojo();
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

                        <%
                            String file = application.getRealPath("") + "\\pdf\\tender\\" + t.getFile();
                        %>


                        <td align="center"><a href="DownloadTenderfile_1.jsp?file=<%=t.getFile()%>"><%=t.getFile()%></a></td>
                        <td align="center"><a href='TenderUpdateDetails.jsp?tid=<%=t.getTid()%>'>Update</a></td>
                        <td align="center"><a href='TenderDelete.jsp?tid=<%=t.getTid()%>'>Delete</a></td>


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

            <div id="search" class="tabcontent">
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
    <script src="js/Validation/jquery.js"></script>

    <script type="text/javascript">
                        $(document).ready(function ()
                        {
                            $('#searchbox').keyup(function ()
                            {
                                searchTable($(this).val());
                            });
                        });
                        function searchTable(inputVal)
                        {
                            var table = $('#tblData');
                            table.find('tr').each(function (index, row)
                            {
                                var allCells = $(row).find('td');
                                if (allCells.length > 0)
                                {
                                    var found = false;
                                    allCells.each(function (index, td)
                                    {
                                        var regExp = new RegExp(inputVal, 'i');
                                        if (regExp.test($(td).text()))
                                        {
                                            found = true;
                                            return false;
                                        }
                                    });
                                    if (found == true)
                                        $(row).show();
                                    else
                                        $(row).hide();
                                }
                            });
                        }
    </script>
    <script src="js/Validation/jquery.min.js"></script>
    <script src="js/Validation/bootstrap.min.js"></script>
    <script src="js/Validation/validator.js"></script>
    <script src="js/Validation/custom.min.js"></script>
</body>
</html>