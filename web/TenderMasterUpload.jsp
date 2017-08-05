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

        <jsp:useBean id="t" class="ssucb.pojo.TenderMasterPojo"/>
        <jsp:useBean id="tenderdb" class="ssucb.dao.TenderMasterDao"/>
    </head>
    <body>
        <%!            String getpath;//= "C:\\Users\\Naresh\\Documents\\NetBeansProjects\\SundarlalSawjiBnak\\SSUCB\\web\\pdf\\tender\\";
            String path, fname, name;

        %>
        <%

//getpath=application.getContextPath();
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
                String tenderdesc = "", odate = "", cdate = "", status = "";
                while (itr.hasNext()) {
                    FileItem item = (FileItem) itr.next();

                    if (item.isFormField()) {
                        String name = item.getFieldName();
                        String value = item.getString();

                        if (name.equals("tenderdesc")) {
                            tenderdesc = value;

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

                            String filename = application.getRealPath("")+"\\pdf\\tender\\";//"vacyimageD:image/";//request.getRealPath("") + "/D:image/";//"/uploads/";
                            filename = filename + itemName;
                            System.out.println("file name with path======" + filename);
                            path = itemName + ".pdf";
                            File savedFile = new File(filename);

                            item.write(savedFile);
                            fname = itemName;
                            System.out.println("file name======" + path);
                            out.println(filename);
                            out.println(itemName);

                            out.println("successfull");
                            //response.sendRedirect("index.html");
                        } catch (Exception ste) {
                            out.println(ste);
                        }
                    }
                }
                name = tenderdesc;
                System.out.println("the user name is" + cdate);
                System.out.println("the tags is" + odate);
                System.out.println("the policy is" + status);
                t.setTenderdesc(tenderdesc);
                t.setOdate(odate);
                t.setFile(fname);
                t.setCdate(cdate);
                t.setStatus(status);

                System.out.println("tender Decsc======" + t.getTenderdesc());
                System.out.println("opening date =======" + t.getOdate());
                System.out.println("Closing date=========" + t.getCdate());
                System.out.println("Status=========" + t.getStatus());
                System.out.println("File name =======" + t.getFile());

                boolean b = tenderdb.AddTenderMaster(t);
                if (b) {
        %>
        <script>
            
            alert("File has been Uploaded Successfully....");
            window.location.href="tendormaster.jsp";
            
        </script>



        <%                }

            }





        %>
    </body>
</html>
