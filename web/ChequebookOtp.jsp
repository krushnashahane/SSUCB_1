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
                    <form name="frm" action="CheckOTP.jsp" method="POST" >
                        <tr><td><input type="text" name="accountnumber" value="" placeholder="Account Number"/></td></tr>
                        
                   
                    
                     
                            <td><input type="text" name="mobilenumber" placeholder="Mobile Number"/></td></tr>


            
                            
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