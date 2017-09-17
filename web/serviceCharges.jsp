<%-- 
    Document   : Depositinterest
    Created on : Jul 3, 2017, 6:16:15 PM
    Author     : KRISHNA
--%>

<%@page import="ssucb.dao.LoanProposalAmountDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="MenuHeader.jsp"></jsp:include>
        <jsp:useBean id="LPA" class="ssucb.dao.LoanProposalAmountDao"></jsp:useBean>

        <jsp:useBean id="Charges" class="ssucb.dao.ChargesDao"></jsp:useBean>
        <jsp:useBean id="c" class="ssucb.pojo.ChargesPojo"></jsp:useBean>
        <jsp:useBean id="ServiceCharges" class="ssucb.dao.ServiceChargesDao"></jsp:useBean>
        <jsp:useBean id="s" class="ssucb.pojo.ServiceCharges"></jsp:useBean>
        </head>

        <body>
        <%!
            ResultSet rs;

                    %>
        <%
            try {
                rs = LPA.GetAllLoanProposalAmount();
            } catch (Exception e) {
                System.out.println("" + e);
            }

        %>
        <!-- Info Content - Section Title-->
        <div class="content_info">
            <!-- Info Section title-->
            <div class="section-title-01">
                <div class="container-fluid" style="background-image:url('Main/img/icon2/banner.jpg')">
                    <div class="row">
                        <div class="col-md-7">
                            <marquee>  <h3 style="margin-left:10px;">SERVICE CHARGES</h3> </marquee>

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
                        <a href="#">SERVICE CHARGES</a>
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
                <div class="" style="margin-left:3%;" >
                    <h3 style="color:#b80108;"><span>Service</span> Charges</h3>
                    <p class="lead">"Sundarlal Sawji Urban Co-op Bank offering excited interest rate on Loans."</p>
                </div>
                <table  style="margin-left:3%;" width=750 align="center" border="2" cellspacing="0" cellpadding="0" bgcolor="FFC999"> 
                    <TR><TD width="30" align="center" height="30" dir="ltr"><b> <font face="Verdana" size="2" color="#A52A2A">Sr. No.</font></b></TD>
                        <TD width="285" align="center" height="1"><b><font face="Verdana" size="2" color="#A52A2A"><b>Type of service</b></font></b></TD>
                        <TD width="420" align="center" height="1" colspan="2"><b><span lang="en-us"> <font face="Verdana" size="2" color="#A52A2A">
                                    Charges<BR> </b></TD>
                                    </TR></TABLE>


                                    <table   style="margin-left:3%;" width=750 align="center" border="2" cellspacing="0" cellpadding="0" bgcolor="#fef4d1">
                                        <TR><TD width="30" align="center" height="1" dir="ltr"><b> <font face="Verdana" size="3" color="BE5D5D">
                                                    <span lang="en-us">1 </span></font></b></TD>
                                            <TD width="290"  height="1">
                                                <table border=1><tr><td width=300 bgcolor="#205db1" align=center><b> <font face="Verdana" size="2" color="#fff"> Loan Proposal Amount <BR> </b></td></tr>

                                                <%                                                       try {

                                                        while (rs.next()) {
                                                %>


                                                <tr><td><B> <font face="Verdana" size="2" color="BE5D5D">* <%=rs.getString(2)%><BR> </td></tr>

                                                            <%

                                                                    }
                                                                } catch (Exception e) {
                                                                    System.out.println("" + e);
                                                                }
                                                            %>


                                                            </table></TD>


                                                            <TD width="270" align="center" height="1" >
                                                                <table border=1><tr><td width=300 bgcolor="#205db1" align=center><b> 
                                                                                <font face="Verdana" size="2" color="#fff"> Process Fee  + GST<BR> </b></td></tr>

                                                                    <%
                                                                        try {
                                                                            ResultSet rs1 = LPA.GetAllLoanProposalAmount();
                                                                            while (rs1.next()) {
                                                                    %>


                                                                    <tr><td> <font face="Verdana" size="2" color="magneta">* <%=rs1.getString(3)%> <BR> </td></tr>

                                                                    <%

                                                                            }
                                                                        } catch (Exception e) {
                                                                            System.out.println("" + e);
                                                                        }
                                                                    %>
                                                                </table></TD>




                                                            <TD width="160" align="center" height="1" ><table border=1><tr><td width=160 bgcolor="#205db1" ><b>
                                                                                <font face="Verdana" size="1" color="#fff"> Review Of CC Loan + GST <BR> </b></td></tr>

                                                                    <%
                                                                        try {
                                                                            ResultSet rs2 = LPA.GetAllLoanProposalAmount();
                                                                            while (rs2.next()) {
                                                                    %>


                                                                    <tr><td><font face="Verdana" size="2" color="magneta">* <%=rs2.getString(4)%><BR> </td></tr>
                                                                            <%

                                                                                    }
                                                                                } catch (Exception e) {
                                                                                    System.out.println("" + e);
                                                                                }
                                                                            %>  
                                                                </table></TD>
                                                </TR>

                                            </TABLE>


                                            <table   style="margin-left:3%;"  width=750 align="center" border="2" cellspacing="0" cellpadding="0" bgcolor="#fef4d1">
                                                <TR>
                                                    <TH>Sr</TH>
                                                    <TH> Type Of Service</TH>
                                                    <TH>Perticulars</TH>
                                                    <TH>Charges</TH>
                                                </TR>


                                                <%
                                                try{
                                                
                                                java.sql.ResultSet rs=ServiceCharges.getAllServiceCharges();
                                                while(rs.next())
                                                {
                                                %>



                                                <TR><TD width="30" align="center" height="1" dir="ltr"><b> <font face="Verdana" size="3" color="BE5D5D"><span lang="en-us">1</span></font></b></TD>
                                                    <TD width="290" align="center" height="1"><b> <font face="Lucida Calligraphy,Comic Sans MS,Lucida Console" size="3" color="BE5D5D"><b> <%=rs.getString(2)%> </b></font></b></TD>
                                                    <TD width="270" align="center" height="1" ><table border=1>
                                                    <%
                                                    
                                                    java.util.ArrayList<ssucb.pojo.ChargesPojo> al=Charges.getAllChargesDetailsBySid(rs.getInt(1));
                                                    java.util.Iterator ir=al.iterator();
                                                    while(ir.hasNext()){
                                                        c=(ssucb.pojo.ChargesPojo)ir.next();
                                                    
                                                    %>
                                                   
                                                            <tr>
                                                                
                                                                <td> <font face="Verdana" size="2" color="magneta">* <%=c.getPerticulars()%><BR> </td>
                                                             <td> <font face="Verdana" size="2" color="magneta">*  <%=c.getCharges()%><BR> </td>
                                                            
                                                            </tr>
                                             
                                                       
                                                    
                                                        <%}%>
                                                         </table></TD>
                                                </TR>

                                                <%
                                                
                                               } }catch(Exception e){
System.out.println("Errorr"+e);
}
                                                %>






                                            </TABLE>






























                                            <table   style="margin-left:3%;"  width=750 align="center" border="2" cellspacing="0" cellpadding="0" bgcolor="#fef4d1">
                                                <TR><TD width="30" align="center" height="1" dir="ltr"><b> <font face="Verdana" size="3" color="BE5D5D"><span lang="en-us">2</span></font></b></TD>
                                                    <TD width="290" align="center" height="1"><b> <font face="Lucida Calligraphy,Comic Sans MS,Lucida Console" size="3" color="BE5D5D"><b> Stop payment instruction </b></font></b></TD>
                                                    <TD width="270" align="center" height="1" ><table border=1><tr><td width=300 bgcolor="#205db1"><b> <font face="Verdana" size="2" color="#fff"> Particular<BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Issued Cheque :<BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Lost Cheque : <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  However maximum: <BR> </td></tr>
                                                        </table></TD>
                                                    <TD width="160" align="center" height="1" ><table border=1><tr><td width=160 bgcolor="#205db1"><b> <font face="Verdana" size="2" color="#fff"> Charges <BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.60 /chq <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.35 /chq<BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  max Rs.170<BR> </td></tr>
                                                        </table></TD>
                                                </TR>

                                            </TABLE>


                                            <table  style="margin-left:3%;" width=750 align="center" border="2" cellspacing="0" cellpadding="0" bgcolor="#fef4d1">
                                                <TR><TD width="30" align="center" height="1" dir="ltr"><b> <font face="Verdana" size="3" color="BE5D5D"><span lang="en-us">3</span></font></b></TD>
                                                    <TD width="290" align="center" height="1"><b> <font face="Lucida Calligraphy,Comic Sans MS,Lucida Console" size="3" color="BE5D5D"><b> Any Branch Banking </b></font></b></TD>
                                                    <TD width="270" align="center" height="1" ><table border=1><tr><td width=300 bgcolor="#205db1"><b> <font face="Verdana" size="2" color="#fff"> Particular<BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Upto 2.00 Lack :<BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  From 2.00 Lack to 15.00 Lack : <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  From 15.00 Lack to 50.00 Lack : <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  50.00 Lack and above: <BR> </td></tr>
                                                        </table></TD>
                                                    <TD width="160" align="center" height="1" ><table border=1><tr><td width=160 bgcolor="#205db1"><b> <font face="Verdana" size="2" color="#fff"> Charges <BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.40<BR>  </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.60 <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.100<BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.150<BR> </td></tr>
                                                        </table></TD>
                                                </TR>

                                            </TABLE>



                                            <table  style="margin-left:3%;" width=750 align="center" border="2" cellspacing="0" cellpadding="0" bgcolor="#fef4d1">
                                                <TR><TD width="30" align="center" height="1" dir="ltr"><b> <font face="Verdana" size="3" color="BE5D5D"><span lang="en-us">4</span></font></b></TD>
                                                    <TD width="290" align="center" height="1"><b> <font face="Lucida Calligraphy,Comic Sans MS,Lucida Console" size="3" color="BE5D5D"><b> SMS Alert Charges </b></font></b></TD>
                                                    <TD width="270" align="center" height="1" ><table border=1><tr><td width=280 bgcolor="#205db1"><b> 
                                                                        <font face="Verdana" size="2" color="#fff"> Particular  <font face="Verdana" size="2" color="#205db1"><BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Saving Account :<BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Current Account : <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Cash Credit : <BR> </td></tr>
                                                        </table></TD>
                                                    <TD width="160" align="center" height="1" ><table border=1><tr><td width=160 bgcolor="#205db1"><b> <font face="Verdana" size="2" color="#fff">Charges per Quarter<BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">* Rs 15 <BR>  </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">* Rs 25  <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">* Rs 35  <BR> </td></tr>
                                                        </table></TD>
                                                </TR>

                                            </TABLE>


                                            <table style="margin-left:3%;"  width=750 align="center" border="2" cellspacing="0" cellpadding="0" bgcolor="#fef4d1">
                                                <TR><TD width="30" align="center" height="1" dir="ltr"><b> <font face="Verdana" size="3" color="BE5D5D"><span lang="en-us">5</span></font></b></TD>
                                                    <TD width="290" align="center" height="1"><b> <font face="Lucida Calligraphy,Comic Sans MS,Lucida Console" size="3" color="BE5D5D"><b> Locker Rent </b></font></b></TD>
                                                    <TD width="270" align="center" height="1" ><table border=1><tr><td width=300 bgcolor="#205db1"><b> <font face="Verdana" size="2" color="#fff"> Particular  <font face="Verdana" size="2" color="#205db1"><BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Locker Size  5 x 6 :<BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Locker Size  5 x 13: <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Locker Size 12 x 10 : <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Locker Size  7 x 20 : <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Locker Size 15 x 20 : <BR> </td></tr>
                                                        </table></TD>
                                                    <TD width="160" align="center" height="1" ><table border=1><tr><td width=160 bgcolor="#205db1"><b> <font face="Verdana" size="2" color="#fff"> Charges per Year <BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.500 <BR>  </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.1000 <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.1500 <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.2000 <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.2500 <BR> </td></tr>
                                                        </table></TD>
                                                </TR>

                                            </TABLE>

                                            <table style="margin-left:3%;"  width=750 align="center" border="2" cellspacing="0" cellpadding="0" bgcolor="#fef4d1">
                                                <TR><TD width="30" align="center" height="1" dir="ltr"><b> <font face="Verdana" size="3" color="BE5D5D"><span lang="en-us">6</span></font></b></TD>
                                                    <TD width="290" align="center" height="1"><b> <font face="Lucida Calligraphy,Comic Sans MS,Lucida Console" size="3" color="BE5D5D"><b> Cheque Return Charges </b></font></b></TD>
                                                    <TD width="270" align="center" height="1" ><table border=1><tr><td width=300 bgcolor="#205db1"><b> <font face="Verdana" size="2" color="#fff"> Particular<BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Incoming Cheque Return :<BR></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Outging Cheque Return :<BR> </td></tr>
                                                        </table></TD>
                                                    <TD width="160" align="center" height="1" ><table border=1><tr><td width=160 bgcolor="#205db1"><b> <font face="Verdana" size="2" color="#fff"> Charges <BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.150 <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.150 <BR> </td></tr>
                                                        </table></TD>
                                                </TR>

                                            </TABLE>


                                            <table  style="margin-left:3%;" width=750 align="center" border="2" cellspacing="0" cellpadding="0" bgcolor="#fef4d1">
                                                <TR><TD width="30" align="center" height="1" dir="ltr"><b> <font face="Verdana" size="3" color="BE5D5D"><span lang="en-us">7</span></font></b></TD>
                                                    <TD width="290" align="center" height="1"><b> <font face="Lucida Calligraphy,Comic Sans MS,Lucida Console" size="3" color="BE5D5D"><b> Account Service Charges </b></font></b></TD>
                                                    <TD width="270" align="center" height="1" ><table border=1><tr><td width=300 bgcolor="#205db1"><b> <font face="Verdana" size="2" color="#fff"> Particular<font face="Verdana" size="2" color="#205db1">     <BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Current Account :<BR> </td></tr>
                                                        </table></TD>
                                                    <TD width="160" align="center" height="1" ><table border=1><tr><td width=160 bgcolor="#205db1"><b> <font face="Verdana" size="2" color="#fff"> Charges per Year <BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.200/Year <BR> </td></tr>
                                                        </table></TD>
                                                </TR>

                                            </TABLE>


                                            <table  style="margin-left:3%;"  width=750 align="center" border="2" cellspacing="0" cellpadding="0" bgcolor="#fef4d1">
                                                <TR><TD width="30" align="center" height="1" dir="ltr"><b> <font face="Verdana" size="3" color="BE5D5D"><span lang="en-us">8</span></font></b></TD>
                                                    <TD width="290" align="center" height="1"><b> <font face="Lucida Calligraphy,Comic Sans MS,Lucida Console" size="3" color="BE5D5D"><b> Cheque Book Charges </b></font></b></TD>
                                                    <TD width="270" align="center" height="1" ><table border=1><tr><td width=300 bgcolor="#205db1"><b> <font face="Verdana" size="2" color="#fff"> Particular<BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Cheque Book Charges :<BR> </td></tr>
                                                        </table></TD>
                                                    <TD width="160" align="center" height="1" ><table border=1><tr><td width=160 bgcolor="#205db1"><b> <font face="Verdana" size="2" color="#fff"> Charges <BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.2/Cheque <BR> </td></tr>
                                                        </table></TD>
                                                </TR>

                                            </TABLE>

                                            <table  style="margin-left:3%;" width=750 align="center" border="2" cellspacing="0" cellpadding="0" bgcolor="#fef4d1">
                                                <TR><TD width="30" align="center" height="1" dir="ltr"><b> <font face="Verdana" size="3" color="BE5D5D"><span lang="en-us">8</span></font></b></TD>
                                                    <TD width="290" align="center" height="1"><b> <font face="Lucida Calligraphy,Comic Sans MS,Lucida Console" size="3" color="BE5D5D"><b> RTGS / NEFT Charges </b></font></b></TD>
                                                    <TD width="270" align="center" height="1" >
                                                        <table border=1>
                                                            <tr><td width=300 bgcolor="#205db1"><b> <font face="Verdana" size="2" color="#fff"> Particular<BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Up To Rs.2.00 Lack <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.2.00 Lack To Rs.10.00 Lack<BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Rs.10.00 Lack To Rs.50.00 Lack<BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Above Rs.50.00 Lack<BR> </td></tr>
                                                        </table></TD>
                                                    <TD width="160" align="center" height="1" ><table border=1>
                                                            <tr><td width=160 bgcolor="#205db1"><b><font face="Verdana" size="2" color="#fff"> Charges <BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">* Rs 30 <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">* Rs 60 <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">* Rs 100 <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">* Rs 150 <BR> </td></tr>
                                                        </table></TD>
                                                </TR>

                                            </TABLE>

                                            <table  style="margin-left:3%;"  width=750 align="center" border="2" cellspacing="0" cellpadding="0" bgcolor="#fef4d1">
                                                <TR><TD width="30" align="center" height="1" dir="ltr"><b> <font face="Verdana" size="3" color="BE5D5D"><span lang="en-us">9</span></font></b></TD>
                                                    <TD width="290" align="center" height="1"><b> <font face="Lucida Calligraphy,Comic Sans MS,Lucida Console" size="3" color="BE5D5D"><b> ATM Charges </b></font></b><BR>
                                                        <p align=left><font face="Verdana" size="2" color="magneta">* New ATM card having free Annual <font color="#fef4d1">--------</font> Maintenance cost for 1st Year. </FONT><BR>
                                                            <font face="Verdana" size="2" color="magneta">* All charges are including Service Tax.</FONT></p>
                                                    </TD>
                                                    <TD width="270" align="center" height="1" >
                                                        <table border=1>
                                                            <tr><td width=300 bgcolor="#205db1"><b> <font face="Verdana" size="2" color="#fff"> Particular<BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  New ATM Card <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Duplicate ATM Card <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  ATM Card Annual Maintenance <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Duplicate ATM Pin-Mailer <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">*  Unblock ATM Pin<BR> </td></tr>
                                                        </table></TD>
                                                    <TD width="160" align="center" height="1" ><table border=1>
                                                            <tr><td width=160 bgcolor="#205db1"><b><font face="Verdana" size="2" color="#fff"> Charges <BR> </b></td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">* Rs 121 <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">* Rs 68 <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">* Rs 121 <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">* Rs 58 <BR> </td></tr>
                                                            <tr><td> <font face="Verdana" size="2" color="magneta">* Rs 24 <BR> </td></tr>
                                                        </table></TD>
                                                </TR>

                                            </TABLE>




                                </TABLE>




                                </table>   
                                </div>             
                                </div>
                                </div>
                                <!-- End Tables Container--> 
                                </div>
                                </div>
                                <!-- End Info Content Financial results-->
                                </div>
                                <!-- End content-central-->

                                <!-- Sponsors Container-->  
                                <!--  <div class="container wow fadeInUp">
                                      <div class="row">
                                          <div class="col-md-12">
                                <!-- Sponsors Zone-->     
                                <!--   <ul class="owl-carousel carousel-sponsors tooltip-hover" id="carousel-sponsors">
                                       <li data-toggle="tooltip" title data-original-title="Name Sponsor">
                                           <a href="#"  class="tooltip_hover" title="Name Sponsor"><img src="img/sponsors/1.png" alt="Image"></a>
                                       </li>
                                       <li data-toggle="tooltip" title data-original-title="Name Sponsor">
                                           <a href="#"  class="tooltip_hover" title="Name Sponsor"><img src="img/sponsors/2.png" alt="Image"></a>
                                       </li>
                                        <li data-toggle="tooltip" title data-original-title="Name Sponsor">
                                           <a href="#"  class="tooltip_hover" title="Name Sponsor"><img src="img/sponsors/3.png" alt="Image"></a>
                                       </li>
                                       <li data-toggle="tooltip" title data-original-title="Name Sponsor">
                                           <a href="#"  class="tooltip_hover" title="Name Sponsor"><img src="img/sponsors/4.png" alt="Image"></a>
                                       </li>
                                       <li data-toggle="tooltip" title data-original-title="Name Sponsor">
                                           <a href="#"  class="tooltip_hover" title="Name Sponsor"><img src="img/sponsors/5.png" alt="Image"></a>
                                       </li>
                                       <li data-toggle="tooltip" title data-original-title="Name Sponsor">
                                           <a href="#"  class="tooltip_hover" title="Name Sponsor"><img src="img/sponsors/6.png" alt="Image"></a>
                                       </li>
                                       <li data-toggle="tooltip" title data-original-title="Name Sponsor">
                                           <a href="#"  class="tooltip_hover" title="Name Sponsor"><img src="img/sponsors/7.png" alt="Image"></a>
                                       </li>
                                        <li data-toggle="tooltip" title data-original-title="Name Sponsor">
                                           <a href="#"  class="tooltip_hover" title="Name Sponsor"><img src="img/sponsors/8.png" alt="Image"></a>
                                       </li>                                       
                                   </ul> 
                                <!-- End Sponsors Zone-->    
                                <!--   </div>                    
                               </div>
                           </div> -->
                                <!-- End Sponsors Container-->  


                                <jsp:include page="footer.jsp"></jsp:include>
                                <jsp:include page="javascript.jsp"></jsp:include>
                                </body>
                                </html>
