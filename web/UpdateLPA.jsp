

<%@page import="ssucb.pojo.CityPojo"%>
<%@page import="java.util.*" %>
<html>
    <head>
        <link rel="stylesheet" href="css/inputcss.css">
        <link rel="stylesheet" href="css/viewtable.css">
        <jsp:useBean id="LoanProposalAmount" class="ssucb.dao.LoanProposalAmountDao"></jsp:useBean>



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
        int lpid;
        String loanproposallamount,processfee,reviewofcc;
                                    %>
        <%
            try {
                username = session.getAttribute("username").toString();
                if (username == null) {
                    response.sendRedirect("adminlogin.jsp");

                }
                int lpid=Integer.parseInt(request.getParameter("lpid"));
                java.sql.ResultSet rs=LoanProposalAmount.GetAllLoanProposalAmountById(lpid);
                while(rs.next()){
                loanproposallamount=rs.getString(2);
                processfee=rs.getString(3);
                reviewofcc=rs.getString(4);
                
                }
                
            } catch (Exception e) {

                response.sendRedirect("adminlogin.jsp");
            }
        %>
        <br>
        <div class='content isOpen'>
            <a class='button'></a>

            <div class="tab">
                <button class="tablinks" onclick="openCity(event, 'addbranch')">Loan Proposal Amount</button>
              
                <!-- <button class="tablinks" onclick="openCity(event, 'search')">Search Branches</button>-->
            </div>

            <div id="addbranch" class="tabcontent">
                <h3>Add City</h3>
                <br><br>

                <form  action="LPAUpdate.jsp" class="form-horizontal form-label-left" method="POST" novalidate>
                    <div class="item form-group">
                        <input type="text" name="loanproposalamount" id="name"  value="<%=loanproposallamount%>"  placeholder="Add LoanProposalAmount" required="required"/></td></tr><tr>
                    </div>
                    <div class="item form-group">
                        <input type="text" name="processfee" id="name" " value="<%=processfee%>"  placeholder="Add ProceescFee" required="required"/></td></tr><tr>
                    </div>
                    <div class="item form-group">
                        <input type="text" name="reviewofcc" id="name"  value="<%=reviewofcc%>"  placeholder="Add review of cc" required="required"/></td></tr><tr>
                    </div>
                    <input type="hidden" value="<%=lpid%>" name="lpid">

                    <div class="item form-group">
                        <input type="submit" name="s"  value="Add LPA" class="buttonsubmit button4"/>
                    </div>


                </form>  



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