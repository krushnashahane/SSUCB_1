<%@page import="ssucb.pojo.BranchPojo"%>
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
        <jsp:include page="CustomerMasterHeader.jsp"/>

        <br>
        <div class='content isOpen'>
            <a class='button'></a>

            <div class="tab">
                <button class="tablinks" onclick="openCity(event, 'addnewtendor')">Apply for RTGS/NEFT</button>

            </div>

            <div id="addnewtendor" class="tabcontent">
                <h3>Apply RTGS/NEFT  Form</h3>
                <br><br>

                <!--<table id="formtable">-->
                <form name="frm" action="AddRtgs.jsp" method="POST" >
                    <div class="item form-group">
                        <input type="text" name="nameofbeneficiary" id="name" value=""  placeholder="Enter Name of Beneficiary" required="required"/>
                    </div>
                    <div class="item form-group">
                        <textarea  name="address" id="address"  placeholder="Enter Address" required="required"></textarea>
                    </div>
                    <div class="item form-group">
                        <input type="text" name="bankname" id="name" value=""  placeholder="Enter Bank Name" required="required"/>
                    </div>
                    <div class="item form-group">
                        <input type="text" name="branchname" id="email" value=""  placeholder="Enter Branch Name" required="required"/>
                    </div>
                    <div class="item form-group">
                        <input type="text" name="bankifsc" id="email" value=""  placeholder="Enter Branch IFSC" required="required"/>
                    </div>
                    <div class="item form-group">
                        <input type="text" name="accountnumber" id="email" value=""  placeholder="Enter Branch Account Number" required="required"/>
                    </div>
                    <div class="item form-group">
                        <input type="text" name="reconformaccount" id="email" value=""  placeholder=" Reconformed Account" required="required"/>
                    </div>
                    <div class="item form-group">
                        <select  name="typeofaccount" id="email" required="required">
                            <option>Credit</option>
                            <option>Current</option>
                            <option>Saving</option>
                        </select>
                    </div>
                    <div class="item form-group">
                        <input type="text" name="ammountinfigure" id="name" value=""  placeholder=" Ammount to be remmited in figure" required="required"/>
                    </div>

                    <div class="item form-group">
                        <input type="text" name="ammountinword" id="name" value=""  placeholder="Ammount to be remmited in word" required="required"/>
                    </div>
                    <div class="item form-group">
                        <input type="text" name="applicablecharges" id="name" value=""  placeholder=" Applicable Chargess" required="required"/>
                    </div>
                    <div class="item form-group">
                        <input type="text" name="chequenno" id="name" value=""  placeholder=" Cheque No." required="required"/>
                    </div>

                    <div class="item form-group">
                        <select  name="request" id="name" required="required">
                            <option>RTGS</option>
                            <option>NEFT</option>
                        </select>
                    </div>
                    <div class="item form-group">
                        <input type="date" name="date" id="name" value=""   required="required"/>
                    </div>


                    <div class="item form-group">
                        <select  name="branchid" id="name" required="required">

                            <%
                                try {
                                    java.sql.ResultSet rs = ssucb.dao.DBDAO.getInstance().getAllBranches();
                                    while (rs.next()) {
                            %>

                            <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
                            <%
                                    }

                                } catch (Exception e) {
                                    System.out.println(e);
                                }

                            %>




                        </select>
                    </div>
                    <div class="item form-group">
                        <input type="hidden" name="custid" value="<%=session.getAttribute("cid")%>"/>

                    </div>
                    <div class="item form-group">
                        <input type="submit" name="s"  value="Apply for RTGS/NEFT" class="buttonsubmit button4"/>
                    </div>


                </form>  
                <!-- </table>-->


            </div>


        </div>
    </div>
    <script src="js/Validation/jquery.min.js"></script>
    <script src="js/Validation/bootstrap.min.js"></script>
    <script src="js/Validation/validator.js"></script>
    <script src="js/Validation/custom.min.js"></script>
</body>
</html>