<!DOCTYPE html>
<html>
    <head>
        <style>
            .alert {
                padding: 20px;
                background-color: #f44336;
                color: white;
            }

            .closebtn {
                margin-left: 15px;
                color: white;
                font-weight: bold;
                float: right;
                font-size: 22px;
                line-height: 20px;
                cursor: pointer;
                transition: 0.3s;
            }

            .closebtn:hover {
                color: black;
            }
        </style>
    </head>
    <body>


        <%
          
        %>

        <jsp:useBean id="b" class="ssucb.pojo.BranchPojo" scope="page">
            <jsp:setProperty name="b" property="*"/>
        </jsp:useBean>

        <%
            try {
                ssucb.dao.DBDAO db = ssucb.dao.DBDAO.getInstance();
                boolean result = db.isAddBranch(b);
                if (result) {
                    
        %>
        <script>
            
            alert("Branch has been Added Successfully");
            window.loaction.href="addnewbranch.jsp"
            
        </script>
      
        <p>Click on the "x" symbol to close the alert message.</p>
        <div class="alert">
            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
            <strong>Branch Added Success</strong>
        </div>
  <jsp:include page="addnewbranch.jsp"/>

        <%                    } else {
                    }
                } catch (Exception e) {
                    out.println("Error is " + e);
                }
            
        %>
    </body>
</html>
