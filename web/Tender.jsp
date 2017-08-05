<%-- 
    Document   : Branch
    Created on : Jun 30, 2017, 3:18:36 PM
    Author     : KRISHNA
--%>

<%@page import="ssucb.pojo.TenderMasterPojo"%>
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
                                 <marquee>   <h3 style="margin-left:10px;">Tender </h3> </marquee>
                                    
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
                                Tender
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
                <h3 style="color:#b80108;margin-bottom:20px;margin-left:7%;">Tenders</h3>

                <!-- Item event--> 

                <table id="tableData" class="table table-bordered" style="font-size:16px;margin-left:65px;margin-top:30px;width:90%; ">
                    <thead style="font-size:16px;background-color:#49b7fb; ">
                        <tr>
                            <th class="" style="font-size:16px;  " >Tender id   </th>
                            <th class="" style="font-size:16px; " >Tender Description </th>
                            <th class="" style="font-size:16px; " >Opening Date</th>
                            <th class="" style="font-size:16px; " >Closing Date</th>
                            <th class="" style="font-size:16px; " >Status</th>
                             <th class="" style="font-size:16px; " >Download Tenders</th>
                        
                        </tr>
                    </thead>
                    <tbody style="font-size:16px; color:white;" style="font-size:16px; " >
                        
                              <%
                    try {
                          ssucb.dao.TenderMasterDao tdao= new ssucb.dao.TenderMasterDao();
                        java.util.ArrayList al=tdao.GetAllTenderMaster();
                        
                        
                        
                   ssucb.pojo.TenderMasterPojo t= new ssucb.pojo.TenderMasterPojo();
                    java.util.Iterator ir=al.iterator();
                    while(ir.hasNext()){
                    t=(TenderMasterPojo)ir.next();
                    
                   
%>
                        
                        <tr>
                           <td><%=t.getTid()%></td>
                        <td><%=t.getTenderdesc()%></td>
                        <td><%=t.getOdate()%></td>
                        <td><%=t.getCdate()%></td>  
                        <td ><%=t.getStatus()%></td>
                        
                        <%
                        

String filenam=application.getContextPath()+"\\scss\\"+t.getFile();

%>
                        
<td ><a href="DownloadTenderfile_1.jsp?file=<%=t.getFile()%>" target="_blank"><%=t.getFile()%></a></td>
                        


                                            
                        </tr>
                        
                        <%
                                               }
}catch(Exception e){

System.out.println(e);
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
</body>
</html>
