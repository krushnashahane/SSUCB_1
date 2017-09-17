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

        <jsp:useBean id="g" class="ssucb.pojo.GallryPojo"></jsp:useBean>
        <jsp:useBean id="GallaryDao" class="ssucb.dao.GallaryDao"></jsp:useBean>
        <jsp:useBean id="social"class="ssucb.dao.SocialActivityDao"></jsp:useBean>
        <jsp:useBean id="s" class="ssucb.pojo.SocialActivityPojo"></jsp:useBean>
    </head>
    <body>
        <%!            String getpath="C:\\Users\\Naresh\\Documents\\NetBeansProjects\\SundarlalSawjiBnak\\SSUCB";
            String path, fname, name;//C:\Users\Naresh\Documents\NetBeansProjects\SundarlalSawjiBnak\SSUCB\web\Main\img\gallery
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
         
                String caption="";
                while (itr.hasNext()) {
                    FileItem item = (FileItem) itr.next();

                    if (item.isFormField()) {
                        String name = item.getFieldName();
                        String value = item.getString();

                        if (name.equals("caption")) {
                            caption = value;

                        }
                    } else {
                        try {

                            String itemName = item.getName();
                            // String itemName = "" + maxvalue;

                            String filename =application.getRealPath("")+"\\Main\\img\\gallery\\";//"C:\\Users\\Naresh\\Documents\\NetBeansProjects\\SundarlalSawjiBnak\\SSUCB\\web\\img\\ManagerPhoto\\";//"vacyimageD:image/";//request.getRealPath("") + "/D:image/";//"/uploads/";
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
               
            g.setCaption(caption);
            g.setPhoto(fname);
            
            
            s.setCaption(caption);
            s.setPhoto(fname);
                boolean b = social.AddSocialActivity(s);
                if (b) {
        %>
        <script>

            alert("Social Activity Aded  Successfully.");
            window.location.href = "SocialActivity.jsp";

        </script>



        <%                }

            }


        %>
    </body>
</html>
