<%@page import="ssucb.pojo.AuctionPojo"%>
<html>
    <head>
        <link rel="stylesheet" href="css/inputcss.css">
        <link rel="stylesheet" href="css/viewtable.css">
        <!--<link href="js/Validation/custom.min.css" rel="stylesheet">-->
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
                <button class="tablinks" onclick="openCity(event, 'addnewtendor')">Add New Auction</button>
                <button class="tablinks" onclick="openCity(event, 'view')">View Auction</button>
                <!--<button class="tablinks" onclick="openCity(event, 'search')">Search Auction</button>-->
            </div>

            <div id="addnewtendor" class="tabcontent">
                <h3>Add Auction Form</h3>
                <br><br>
                <!--<table id="formtable">-->
                <form name="frm" action="AuctionMasterUpload.jsp" method="POST"   enctype="multipart/form-data" class="form-horizontal form-label-left" novalidate>

                    <div class="item form-group">
                        <input type="text" name="AuctionDesc" value="" id="name" data-validate-length-range="6" data-validate-words="2" placeholder="Auction Description" required="required"/>
                    </div>
                    <div class="item form-group">

                        <input type="date" name="odate" value="" placeholder="Opening date" required="required"/>
                    </div>
                    <div class="item form-group">
                        <input type="date" name="cdate" value="" placeholder="closing date" required="required"/>
                    </div>
                    <div class="item form-group">

                        <input type="text" name="status" placeholder="Status" data-validate-length-range="6" data-validate-words="2" required="required"/>
                    </div>
                    <div class="item form-group">
                        <input type="file" name="file" required="required"/>
                    </div>


                    <div class="item form-group">                  
                        <input type="submit" name="s"  value="Add New Auction" class="buttonsubmit button4"/>
                    </div>


                </form>  
                <!-- </table>-->


            </div>

            <div id="view" class="tabcontent">

                <%
                    try {
                        // java.sql.ResultSet rs = ssucb.dao.DBDAO.getInstance().getAllBranches();

                        ssucb.dao.AuctionMasterDao auctiondao = new ssucb.dao.AuctionMasterDao();
                        java.util.ArrayList al = auctiondao.getAllAuctions();


                %>
                <table class="tftable" id="tblData1" border="1">
                    <input type="text" name="search" id="searchbox" placeholder="Search..">
                    <tr><th>Auction id</th>
                        <th>Auction Desc</th>
                        <th>Odate</th>  
                        <th>Cdate</th>

                        <th>Status</th>
                        <th>File</th>
                        <th>Update Auction</th>
                        <th>Delete Auction</th>


                    </tr>    
                    <%                        ssucb.pojo.AuctionPojo a = new ssucb.pojo.AuctionPojo();
                        java.util.Iterator ir = al.iterator();
                        while (ir.hasNext()) {
                            a = (AuctionPojo) ir.next();


                    %>
                    <tr>
                        <td align="center"><%=a.getAucid()%></td>
                        <td align="center"><%=a.getAuctionDesc()%></td>
                        <td align="center"><%=a.getOdate()%></td>
                        <td align="center"><%=a.getCdate()%></td>  
                        <td align="center"><%=a.getStatus()%></td>
                        <td align="center"><a href="DownloadTenderfile.jsp?file=<%=a.getFile()%>"><%=a.getFile()%></a></td>
                        <td align="center"><a href='AuctionUpdateDetails.jsp?Aucid=<%=a.getAucid()%>'>Update</a></td>
                        <td align="center"><a href='TuctionDelete.jsp?Aucid=<%=a.getAucid()%>'>Delete</a></td>


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
                            var table = $('#tblData1');
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