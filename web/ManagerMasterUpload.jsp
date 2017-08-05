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
        <jsp:useBean id="ManagerDao" class="ssucb.dao.ManagerDAO"></jsp:useBean>
        <jsp:useBean id="m" class="ssucb.pojo.ManagerPojo"></jsp:useBean>
    </head>
    <body>
        <%!            String getpath="C:\\Users\\Naresh\\Documents\\NetBeansProjects\\SundarlalSawjiBnak\\SSUCB";
            String path, fname, name;
 %>
        <%
            getpath = application.getContextPath();

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
         
                String tenderdesc = "", odate = "", cdate = "", status = "", mname = "", email = "", contact = "",  localAddress = "", qualification = "", experience = "", perAddress = "", password = "",branchid="";
                while (itr.hasNext()) {
                    FileItem item = (FileItem) itr.next();

                    if (item.isFormField()) {
                        String name = item.getFieldName();
                        String value = item.getString();

                        if (name.equals("name")) {
                            mname = value;

                        } else if (name.equals("email")) {
                            email = value;

                        } else if (name.equals("contact")) {
                            contact = value;

                        } else if (name.equals("localAddress")) {
                            localAddress = value;

                        } else if (name.equals("perAddress")) {
                            perAddress = value;

                        } else if (name.equals("qualification")) {
                            qualification = value;

                        } else if (name.equals("experiance")) {
                            experience = value;

                        } else if (name.equals("password")) {
                            password = value;

                        }else if (name.equals("branch")) {
                            branchid = value;

                        }
                    } else {
                        try {

                            String itemName = item.getName();
                            // String itemName = "" + maxvalue;

                            String filename =application.getRealPath("")+"\\img\\ManagerPhoto\\";//"C:\\Users\\Naresh\\Documents\\NetBeansProjects\\SundarlalSawjiBnak\\SSUCB\\web\\img\\ManagerPhoto\\";//"vacyimageD:image/";//request.getRealPath("") + "/D:image/";//"/uploads/";
                            filename = filename + itemName ;
                                    System.out.println("itemnane==="+itemName);
                            System.out.println("file name with path======" + filename);
                            path = itemName+".jpg";
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
               
                m.setName(mname);
                m.setEmail(email);
                m.setLocalAddress(localAddress);
                m.setPerAddress(perAddress);
                m.setBranchId(Integer.parseInt(branchid.toString()));
                m.setPhoto(fname);
                m.setContact(contact);
                m.setQualification(qualification);
                m.setExperiance(experience);
                m.setPassword(password);
                boolean b = ManagerDao.AddManager(m);
                if (b) {
        %>
        <script>

            alert("Manager has Added Successfully....");
            window.location.href = "managermaster.jsp";

        </script>



        <%                }

            }


        %>
    </body>
</html>
