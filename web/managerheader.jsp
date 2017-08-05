<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>Flexbox Off Canvas Menu</title>
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
                border: 1px solid #ccc;
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
                    <%
                        String loginUser = session.getAttribute("managername").toString();
                    %>
                    Welcome &nbsp;<%=loginUser%>
                </div>
                <ul class='nav'>
                    <li>
                        <a href='accountmaster.jsp'>Account Master</a>
                    </li>
                    <li>
                        <a href="managermaster.jsp">Manager Master</a>
                    </li>
                    <li>
                        <a class='active'>Tendor Master</a>
                    </li>
                    <li>
                        <a>Upload Events</a>
                    </li>
                    <li>
                        <a>Upload Share Holder</a>
                    </li>
                    <li>
                        <a>Assets</a>
                    </li>
                    <li>
                        <a>Settings</a>
                    </li>
                    <li>
                        <a href="managerlogin.jsp">Logout</a>
                    </li>
                </ul>
            </div>

            <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

            <script src="js/index.js"></script>

    </body>
</html>