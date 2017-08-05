<%-- 
    Document   : Depositinterest
    Created on : Jul 3, 2017, 6:16:15 PM
    Author     : KRISHNA
--%>

<%@page import="ssucb.pojo.DepositInterest"%>
<%@page import="ssucb.pojo.DepositInterestType"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="MenuHeader.jsp"></jsp:include>
        <jsp:useBean id="DDao" class="ssucb.dao.DepositInterestDao"></jsp:useBean>
        <jsp:useBean id="Dtype" class="ssucb.pojo.DepositInterestType"></jsp:useBean>
        <jsp:useBean id="d" class="ssucb.pojo.DepositInterest"></jsp:useBean>

    <body>
        
                <!-- Info Content - Section Title-->
                <div class="content_info">
                    <!-- Info Section title-->
                    <div class="section-title-01">
                       <div class="container-fluid" style="background-image:url('Main/img/icon2/banner.jpg')">
                            <div class="row">
                                <div class="col-md-7">
                                  <marquee>  <h3 style="margin-left:10px;">DEPOSIT INTEREST RATES</h3> </marquee>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Info Section Title-->

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
                                <a href="#">DEPOSIT INTEREST RATES</a>
                            </li>
                            <li>
                                /
                            </li>
                            <li>
                              
                            </li>
                        </ul>
                    </div>
                    <!-- End breadcrumbs-->
                </div>
                <!-- End Info Content - Section Title-->
           <jsp:include page="SideMenuHeader.jsp"></jsp:include>
             <div class="col-md-9 col-xs-10" style="overflow-x:scroll; overflow-y:Auto; " >
		      <div class="title-subtitle">
                    <h3 style="color:#b80108; margin-top:25px; margin-left:4%;margin-bottom:3%;">&nbsp;&nbsp;Deposit Interest Rates </h3>                    
                
				
				
		        <table  class="table table-bordered" style="font-size:16px;margin-left:5%; width:90%; ">
                                      <thead style="font-size:16px;background-color:#49b7fb; ">
                                        <tr>
                                          <th class="" style="font-size:16px;  " >Particulars   </th>
                                          <th class="" style="font-size:16px; " >Credit Society & <br> Bank</th>
                                          <th class="" style="font-size:16px; " >General</th>
                                          <th class="" style="font-size:16px; " >Senior Citizen & <br> Handicapped</th>
                                        </tr>
                                      </thead>
                                      <tbody style="font-size:16px; color:white;" style="font-size:16px; " >
                                       
                                   <%
                                   
                                   ArrayList<DepositInterestType> al=DDao.GetAllTypes();
                                   java.util.Iterator ir=al.iterator();
                                   while(ir.hasNext())
                                   {
                                   Dtype=(DepositInterestType)ir.next();
                                   
                                   %>       
                                          
                                          <tr>
                                          <th class=" " style="font-size:16px; " >
                                          
                                          <%=Dtype.getType()%>
                                          </th>
                                        </tr>
                                        <%
                                        
                                        ArrayList<DepositInterest> a=DDao.GetDepositInterestByTypeid(Dtype.getDtid());
                                        java.util.Iterator i=a.iterator();
                                        while(i.hasNext()){
                                        d=(DepositInterest)i.next();
                                        
                                        %>
                                        <tr>
                                          <th class=" title-left-table" style="font-size:16px; " >
                                           
                                            •  <%=d.getPerticulars()%>
                                          </th>
                                          <td class="cell-1"><%=d.getCredit()%></td>
                                          <td class="cell-1"><%=d.getGeneral()%>	</td>
                                          <td class="cell-1"><%=d.getSeniorcitizen()%>	</td>                                      
                                        </tr>
                                    
                                        <%
                                        }}
                                        %>
                                        
                                       
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                       												
										
										
                                      </tbody>
                                    </table>  
									
									
               
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
