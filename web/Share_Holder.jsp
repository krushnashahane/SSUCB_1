<%-- 
    Document   : Share_Holder
    Created on : Jul 31, 2017, 4:01:16 PM
    Author     : Naresh
--%>

<%@page import="ssucb.pojo.ShareHolderPojo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="MenuHeader.jsp"></jsp:include>
        <jsp:useBean id="sh" class="ssucb.pojo.ShareHolderPojo"></jsp:useBean>
        <jsp:useBean id="Shdao" class="ssucb.dao.ShareHolderDao"></jsp:useBean>    
    </head>
        <body>

            <!-- Info Content - Section Title-->
            <div class="content_info-">
                <!-- Info Section title-->
                <div class="section-title-01">
                    <div class="container-fluid" style="background-image:url('Main/img/icon2/banner.jpg')">
                        <div class="row">
                            <div class="col-md-12">
                                <marquee>   <h3 style="margin-left:10px;">ShareHolders </h3> </marquee>

                            </div>


                        </div>
                    </div>
                </div>

                <!-- breadcrumbs-->
                <div class="breadcrumbs breadcrumbs-sections">
                    <ul>
                        <li class="breadcrumbs-home">
                            <a href="#" title="Back To Home">
                                <i class="fa fa-home"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">SSUCB</a>
                        </li>
                        <li>
                            /
                        </li>
                        <li>
                            Shareholders
                        </li>
                    </ul>
                </div>
                <!-- End breadcrumbs-->
            </div>
            <!-- End Info Content - Section Title-->

        <jsp:include page="SideMenuHeader.jsp"></jsp:include>

            <div class="col-xs-1"> </div>

            <div class="col-md-9 col-xs-9" style="line-height: 30px; text-align:justify;overflow-x:scroll; overflow-y:Auto;" >
                <div class="row">
                    <h3 style="color:#b80108;margin-bottom:20px;margin-left:6%;">Shareholder Scheme <br>  <input type="text" placeholder="Search Here ..." id="searchtext"</h3>

                    <!-- Item event--> 

                    <table  id="tableData" class="table table-bordered" style="font-size:16px;margin-left:55px;margin-top:30px;width:80%; ">
                        <thead style="font-size:16px;background-color:#49b7fb; ">
                            <tr>
                                <th class="" style="font-size:14px;  " >SR NO.   </th>
                                <th class="" style="font-size:14px;  " >Bank NO.   </th>
                                <th class="" style="font-size:14px;  " >SHARE NO.   </th>
                                <th class="" style="font-size:14px; " >SHARE HOLDER NAME </th>
                                <th class="" style="font-size:14px; " >Amount</th>
                                <th class="" style="font-size:14px; " >STATUS</th>
                            </tr>
                        </thead>
                        <tbody style="font-size:14px; color:white;">
<%


java.util.ArrayList<ShareHolderPojo> al=Shdao.getAllShareHolders();
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){
sh=(ShareHolderPojo)ir.next();
%>
<tr>
    <td><%=sh.getShid()%></td>
    <td><%=sh.getBranchid()%></td>
    <td><%=sh.getShreNo()%></td>
    <td><%=sh.getShareholdername()%></td>
    <td><%=sh.getAccount()%></td>
    <td><%=sh.getStatus()%></td>
</tr>
                            
                            
                            
                            
                            
                            <%



}


%>
                            
                            
                            
                            
                        </tbody>
                    </table> 





                </div>
                <!-- End Item event-->


            </div> 
        </div>

        <!-- Sidebars-->

        <!-- End  Sidebars-->
    </div>
</div>
<!-- End events Container--> 
</div>
</div>
<!-- End Info Content - Events Items-->
</div>
<!-- End content-central-->
<jsp:include page="footer.jsp"></jsp:include>
<jsp:include page="javascript.jsp"></jsp:include>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<script type="text/javascript" src="paging.js"></script> 
<script type="text/javascript">
    $(document).ready(function () {
        $('#tableData').paging({limit: 400});
    });
</script>
<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-36251023-1']);
    _gaq.push(['_setDomainName', 'jqueryscript.net']);
    _gaq.push(['_trackPageview']);

    (function () {
        var ga = document.createElement('script');
        ga.type = 'text/javascript';
        ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ga, s);
    })();

</script>

 <script type="text/javascript">
        $(document).ready(function ()
        {
            $('#searchtext').keyup(function ()
            {
                searchTable($(this).val());
            });
        });
        function searchTable(inputVal)
        {
            var table = $('#tableData');
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

</body>
</html>
