<%-- 
    Document   : TenderMasterUpload
    Created on : Jun 27, 2017, 12:14:51 PM
    Author     : KRISHNA
--%>

<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <jsp:useBean id="a" class="ssucb.pojo.AuctionPojo"/>
        <jsp:useBean id="Auctiondb" class="ssucb.dao.AuctionMasterDao"/>
    </head>
    <body>
        <%!            String getpath;//"C:\\Users\\KRISHNA\\Documents\\NetBeansProjects\\SSUCB\\";
            String path, fname, name;

        %>
        <%

getpath=application.getRealPath("");
            boolean isMultipart = ServletFileUpload.isMultipartContent(request);
            if (!isMultipart) {
            } else {
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                List items = null;
                try {
                    items = upload.parseRequest(request);
                } catch (FileUploadException e) {
                    e.printStackTrace();
                }
                Iterator itr = items.iterator();
                String Auctiondesc = "", odate = "", cdate = "", status = "";
                while (itr.hasNext()) {
                    FileItem item = (FileItem) itr.next();

                    if (item.isFormField()) {
                        String name = item.getFieldName();
                        String value = item.getString();

                        if (name.equals("AuctionDesc")) {
                            Auctiondesc = value;

                        } else if (name.equals("odate")) {
                            odate = value;

                        } else if (name.equals("cdate")) {
                            cdate = value;

                        } else if (name.equals("status")) {
                            status = value;

                        }

                    } else {
                        try {


                            String itemName = item.getName();
                            // String itemName = "" + maxvalue;

                            String filename = getpath + "\\scss\\";//"vacyimageD:image/";//request.getRealPath("") + "/D:image/";//"/uploads/";
                            filename = filename + itemName;
                            System.out.println("file name with path======" + filename);
                            path = itemName + ".pdf";
                            File savedFile = new File(filename);

                            item.write(savedFile);
                            fname = itemName;
                            System.out.println("file name======" + fname);
                            out.println(filename);
                            out.println(itemName);

                            out.println("successfull");
                            //response.sendRedirect("index.html");
                        } catch (Exception ste) {
                            out.println(ste);
                        }
                    }
                }
                name = Auctiondesc;
                System.out.println("the user name is" + cdate);
                System.out.println("the tags is" + odate);
                System.out.println("the policy is" + status);
                a.setAuctionDesc(Auctiondesc);
                a.setOdate(odate);
                a.setFile(fname);
                a.setCdate(cdate);
                a.setStatus(status);

                System.out.println("tender Decsc======" + a.getAuctionDesc());
                System.out.println("opening date =======" + a.getOdate());
                System.out.println("Closing date=========" + a.getCdate());
                System.out.println("Status=========" + a.getStatus());
                System.out.println("File name =======" + a.getFile());

                boolean b =Auctiondb.AddAuction(a);
                if (b) {
        %>
        <script>
            
            alert("File has been Uploaded Successfully....");
            window.location.href="Auctions.jsp";
            
        </script>



        <%                }

            }





        %>
    </body>
</html>
