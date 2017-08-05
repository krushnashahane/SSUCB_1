<%-- 
    Document   : test
    Created on : Jun 24, 2017, 4:55:10 PM
    Author     : KRISHNA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
        <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"
              rel="stylesheet" type="text/css" />
        <script type="text/javascript">
            $(function () {
                $("#dialog").dialog({
                    modal: true,
                    autoOpen: false,
                    title: "jQuery Dialog",
                    width: 300,
                    height: 150
                });
                $("#btnShow").click(function () {
                    $('#dialog').dialog('open');
                });
            });
        </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <input type="button" id="btnShow" value="Show Popup" />
        <div id="dialog" style="display: none" align = "center">
            This is a jQuery Dialog.
        </div>
        <%
         out.println(application.getRealPath("/"));
         String path=application.getRealPath("/");
        %>
        background: 
 
        <h1 style="background: #ffffff;">Good</h1>
    </body>
</html>
