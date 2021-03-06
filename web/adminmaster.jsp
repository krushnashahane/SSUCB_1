<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>SSUCB</title>
        <link rel="stylesheet" href="css/style.css">

        <style>
            body {font-family: "Lato", sans-serif;}

            /* Style the tab */
            div.tab {
                overflow: hidden;
                border: 1px solid #ccc;
                background-color: #f1f1f1;
            }

            /* Style the buttons inside the tab */
            div.tab button {
                background-color: inherit;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 14px 16px;
                transition: 0.3s;
                font-size: 17px;
            }

            /* Change background color of buttons on hover */
            div.tab button:hover {
                background-color: #ddd;
            }

            /* Create an active/current tablink class */
            div.tab button.active {
                background-color: #ccc;
            }

            /* Style the tab content */
            .tabcontent {
                display: none;
                padding: 6px 12px;
                border: 1px solid #ffffff;
                border-top: none;
            }
        </style>

        <script>
            function openCity(evt, cityName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(cityName).style.display = "block";
                evt.currentTarget.className += " active";
            }
        </script>     
    </head>

    <body>

        <div class='wrapper'>
            <div class='sidebar'>
                <div class='title'>
                    SSUCB
                </div>
                <%!        String username;
                %>
                <%
                    try {
                        username = session.getAttribute("username").toString();
                    } catch (Exception e) {

                        response.sendRedirect("adminlogin.jsp");
                    }
                %>
                <ul class='nav'>

                    <li>

                        <a href='City.jsp'>City</a>
                    </li>
                    <li>

                        <a href='Distict.jsp'>District</a>
                    </li>
                    <li>

                        <a href='Village.jsp'>Village</a>
                    </li>
                    <li>

                        <a href='addnewbranch.jsp'>Branch Master</a>
                    </li>
                    <li>
                        <a href="managermaster.jsp">Manager Master</a>
                    </li>
                    <li>
                        <a  href="tendormaster.jsp">Tender Master</a>
                    </li>
                    <li>
                        <a  href="Auctions.jsp">Auction Master</a>
                    </li>

                    <li>
                        <a  href="AddShareHolder.jsp">Share Holder</a>
                    </li>
                    <li>
                        <a href="EventMaster.jsp">Events Master</a>
                    </li>

                    <li>
                        <a href="DepositInterestTypeDetails.jsp">Deposit Interest Type</a>
                    </li>
                    <li>
                        <a href="DepositInterestDetails.jsp">Deposit Interest</a>
                    </li>
                    <li>
                        <a href="LoanInterestTypeDetails.jsp">Loan Interest Type</a>
                    </li>
                    <li>
                        <a href="LoanInterestDetails.jsp">Loan Interest</a>
                    </li>


                    <li>
                        <a href="ContactUSView.jsp">View Contact Us</a>
                    </li>
                    <li>
                        <a href="adminpasswordUpdate.jsp">Password Update</a>
                    </li>
                    <li>
                        <a href="AdminUsernameUpdate.jsp">Username Update</a>
                    </li>
                    <li>
                        <a href="GallaryAdd.jsp">Gallary Master</a>
                    </li>
                    <li>
                        <a href="ServicesCharges.jsp">Services Charges</a>
                    </li>
                    <li>
                        <a href="Charges.jsp">Charges</a>
                    </li>
                    <li>
                        <a href="LoanProposalAmount.jsp">LPA</a>
                    </li>
                      <li>
                          <a href="SocialActivity.jsp">Social Activity</a>
                    </li>
                    <li>
                        <a href="Logout.jsp">Logout</a>
                    </li>
                </ul>
            </div>
            <script src="js/Validation/jquery.min.js"></script>
            <!--  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  
            -->  

    </body>
</html>