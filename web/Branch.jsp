<%-- 
    Document   : Branch
    Created on : Jun 30, 2017, 3:18:36 PM
    Author     : KRISHNA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="MenuHeader.jsp"></jsp:include>
    </head>

    <body>
                          <!-- Info Content - Section Title-->
                <div class="content_info-">
                    <!-- Info Section title-->
                    <div class="section-title-01">
                        <div class="container-fluid" style="background-image:url('Main/img/icon2/banner.jpg')">
                            <div class="row">
                                <div class="col-md-12">
                                 <marquee>   <h3 style="margin-left:10px;">Bank Branches </h3> </marquee>
                                    
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
                                Bank Branches
                            </li>
                        </ul>
                    </div>
                    <!-- End breadcrumbs-->
                </div>
                <!-- End Info Content - Section Title-->

                    
                    
                    <!-- End Info Section Title-->
                    <jsp:include page="SideMenuHeader.jsp"></jsp:include>
        <div class="col-md-9 col-xs-10" style="overflow-x:scroll; overflow-y:Auto;" >
            <div class="row">
                <h3 style="color:#b80108;margin-bottom:20px;margin-left:7%;">Branches</h3>

                <!-- Item event--> 

                <table id="tableData" class="table table-bordered" style="font-size:16px;margin-left:65px;margin-top:30px;width:90%; ">
                    <thead style="font-size:16px;background-color:#49b7fb; ">
                        <tr>
                            <th class="" style="font-size:16px;  " >City   </th>
                            <th class="" style="font-size:16px; " >Branch </th>
                            <th class="" style="font-size:16px; " >Address</th>
                            <th class="" style="font-size:16px; " >Phone Number</th>
                            <th class="" style="font-size:16px; " >ATM</th>
                            <th class="" style="font-size:16px; " >IFSC</th>
                            <th class="" style="font-size:16px; " >Holiday</th>
                            <th class="" style="font-size:16px; " >Get Direction</th>
                        </tr>
                    </thead>
                    <tbody style="font-size:16px; color:white;" style="font-size:16px; " >
                        
                              <%
                    try {
                        java.sql.ResultSet rs = ssucb.dao.DBDAO.getInstance().getAllBranches();
while(rs.next()){               
                              

%>
                        
                        <tr>
                            <td>

                           <%=rs.getString(10)%>
                            </td>
                            <td> <%=rs.getString(2)%>	</td>
                            <td ><%=rs.getString(8)%><br> <%=rs.getString(9)%> Dist. <%=rs.getString(10)%> <br>
                                  Maharashtra	</td>
                            <td><%=rs.getString(4)%></td>      
                            <td><%=rs.getString(7)%></td>  
                            <td > 	<%=rs.getString(6)%></td>  
                            <td >Sunday	</td>  
                            <td>  <a href="#myModal" data-toggle="modal" class="open-AddBookDialog" data-id="<%=rs.getString(13)%>" data-id1="<%=rs.getString(14)%>" data-target="#myModal"><img src="Main/img/icon2/map.png" /> </a> </td>                         
                        </tr>
                    <a href="existingcustomerlogin.jsp"
                        <%
                                               }
}catch(Exception e){

System.out.println(e);
out.println(e);
}
%>
                        
                        
                        
                        
             
                    </tbody>
                </table> 








            </div>
            <!-- End Item event-->
									    <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
            <a href="Branch.jsp"><button type="button" class="close" data-dismiss="modal">&times;</button></a>
          <h4 class="modal-title">Location</h4>
        </div>
           
        <div class="modal-body">
       <!--  <input type="text" name="bookId" id="bookId" value=""/>-->
      <!--    <iframe  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3758.2534884160086!2d76.67992201435874!3d19.616457686780098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd06fa1f0baf81d%3A0xe7dafb17027c2bd0!2sSundarlal+Sawji+Urban+Co-Op+Bank%2CHead+Office%2CJintur!5e0!3m2!1sen!2sin!4v1493816457914" width="770" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
       --> </div>
        <div class="modal-footer">
            <a href="Branch.jsp"><button  type="button" class="btn btn-default" data-dismiss="modal">Close</button></a>
        </div>
      </div>
      
    </div>
  </div>
	

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
            $(document).ready(function() {
                $('#tableData').paging({limit:5});
            });
        </script>
        <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<script>
    $(document).on("click", ".open-AddBookDialog", function () {
     var myBookId = $(this).data('id');
     var lat= $(this).data('id1');
     //alert("langitude  "+myBookId+"Latitude  ="+lat);
     $(".modal-body").append("<iframe  src='https://maps.google.com/maps?q="+myBookId+","+lat+"&hl=es;z=14&amp;output=embed' width='770' height='350' frameborder='0' style='border:0' allowfullscreen></iframe>" );
});

</script>
</body>
</html>

