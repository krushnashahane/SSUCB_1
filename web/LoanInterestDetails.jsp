

<%@page import="ssucb.pojo.DepositInterest"%>
<%@page import="ssucb.pojo.LoanInterestType"%>
<%@page import="ssucb.pojo.LoanInterest"%>
<%@page import="java.util.*" %>
<html>
    <head>
        <link rel="stylesheet" href="css/inputcss.css">
        <link rel="stylesheet" href="css/viewtable.css">

        <jsp:useBean id="LoanDao" class="ssucb.dao.LoanInterestDao"></jsp:useBean>


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


            <script type="text/javascript">
                function check(value) {
                    xmlHttp = GetXmlHttpObject()
                    var url = "checkajax.jsp";
                    url = url + "?name=" + value;
                    xmlHttp.onreadystatechange = stateChanged
                    xmlHttp.open("GET", url, true)
                    xmlHttp.send(null)
                }
                function stateChanged() {
                    if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
                        var showdata = xmlHttp.responseText;
                        document.getElementById("mydiv").innerHTML = showdata;
                    }
                }
                function GetXmlHttpObject() {
                    var xmlHttp = null;
                    try {
                        xmlHttp = new XMLHttpRequest();
                    } catch (e) {
                        try {
                            xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
                        } catch (e) {
                            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                        }
                    }
                    return xmlHttp;
                }
            </script>
        </head>
        <body>
        <jsp:include page="adminmaster.jsp"/>
        <%!        String username;
                                %>
        <%
            try {
                username = session.getAttribute("username").toString();
                if (username == null) {
                    response.sendRedirect("adminlogin.jsp");

                }
            } catch (Exception e) {

                response.sendRedirect("adminlogin.jsp");
            }
        %>
        <br>
        <div class='content isOpen'>
            <a class='button'></a>

            <div class="tab">
                <button class="tablinks" onclick="openCity(event, 'addbranch')">Add New Loan Interest</button>
                <button class="tablinks" onclick="openCity(event, 'view')">View Loan Interest</button>
                <!-- <button class="tablinks" onclick="openCity(event, 'search')">Search Branches</button>-->
            </div>

            <div id="addbranch" class="tabcontent">
                <h3>Add Loan Interest Form</h3>
                <br><br>

                <form  action="AddLoanInterestDetails.jsp" class="form-horizontal form-label-left" method="POST" novalidate>
                    <div class="item form-group">
                        <input type="text" name="perticulars" id="name" value=""  data-validate-length-range="6" data-validate-words="2"  placeholder="Perticulars" required="required"/>
                    </div>
                    <div class="item form-group">
                        <input type="text" name="roi" value=""  id="telephone" placeholder="Rate of Interest" required="required"/>
                    </div>

                    <div class="item form-group">  
                        <select name="ltid">
                            <%
                                ArrayList<LoanInterestType> all = LoanDao.GetAllLoanInterestType();

                                LoanInterestType dtype = new LoanInterestType();
                                Iterator irr = all.iterator();
                                while (irr.hasNext()) {
                                    dtype = (LoanInterestType) irr.next();
                            %>
                            <option value="<%=dtype.getLitid()%>"><%=dtype.getType()%></option>
                            <%

                                }
                            %>                 

                        </select>
                    </div>







                    <div class="item form-group">

                        <input type="submit" name="s"  value="Add New Loan Interest" class="buttonsubmit button4"/>

                    </div>

                </form>  



            </div>

            <div id="view" class="tabcontent">

                <%
                    try {

                        ArrayList<LoanInterest> al = LoanDao.GetAllLoanInterest();
                        LoanInterest d = new LoanInterest();
                        Iterator ir = al.iterator();


                %>
                <table class="tftable" id="tblData3" border="1">
                    <input type="text" name="search" id="searchbox" placeholder="Search..">

                    <tr><th>Loan Interest ID</th>
                        <th>Perticulars</th>
                        <th>Rate Of Interest</th>  



                        <th>Update </th>
                        <th>Delete </th>


                    </tr>    
                    <%                        while (ir.hasNext()) {
                            d = (LoanInterest) ir.next();

                    %>
                    <tr>
                        <td align="center"><%=d.getLid()%></td>
                        <td align="center"><%=d.getPerticulars()%></td>
                        <td align="center"><%=d.getRoi()%></td>  


                        <td align="center"><a href='branchupdatedetail.jsp?bid='>Update</a></td>
                        <td align="center"><a href='branchdelete.jsp?branchid='>Delete</a></td>


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
            var table = $('#tblData3');
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