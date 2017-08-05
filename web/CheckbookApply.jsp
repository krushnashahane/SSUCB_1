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
        <jsp:include page="CustomerMasterHeader.jsp"/>

        <br>
        <div class='content isOpen'>
            <a class='button'></a>

            <div class="tab">
                <button class="tablinks" onclick="openCity(event, 'addnewtendor')">Apply for ChequeBook</button>
                
            </div>

            <div id="addnewtendor" class="tabcontent">
                <h3>Apply Cheque book Form</h3>
                <br><br><table id="formtable">
                    <form name="frm" action="AddChequeBook.jsp" method="POST"   enctype="multipart/form-data">
                        <tr><td><input type="text" name="accountnumber" value="" placeholder="Account Number"/></td></tr>
                        
                        <tr><td><select  name="accounttype">
                                    <option>Currant Account</option>
                                     <option>Saving Account</option>
                                    
                                    
                                </select></td></tr>
                        
                           <tr><td><select  name="chequeboookquantity">
                                    <option>50</option>
                                     <option>100</option>
                                </select></td></tr>
                        
                            <td><input type="date" name="expecteddate" value="" placeholder="Expected Date"/></td></tr>

                            <td><input type="text" name="description" placeholder="Description"/></td></tr>


                        <tr><td><input type="file" name="file" value=""/></td>
                            
                        </tr>

                        <tr><td colspan="2" align="center">
                                <input type="submit" name="s"  value="Apply for Cheque Book" class="buttonsubmit button4"/>

                            </td></tr>

                    </form>  
                </table>


            </div>

          
        </div>
    </div>
</body>
</html>