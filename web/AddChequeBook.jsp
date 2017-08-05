<%-- 
    Document   : AddChequeBook
    Created on : Jun 28, 2017, 4:03:15 PM
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
        <jsp:useBean id="chequebookDB" class="ssucb.dao.ChequeBookDao"></jsp:useBean>
        <jsp:useBean id="c" class="ssucb.pojo.CheckbookPojo"></jsp:useBean>
    </head>
    <body>
        <%!                String getpath = "C:\\Users\\KRISHNA\\Documents\\NetBeansProjects\\SSUCB\\";
            String path, fname, name;

        %>
        <%

            int cid = Integer.parseInt(session.getAttribute("cid").toString());
            /*
            String accountnumber=request.getParameter("accountnumber");
            String accounttype=request.getParameter("accounttype");
            String chequebookquantity=request.getParameter("chequeboookquantity");
            String expecteddate=request.getParameter("expecteddate");
             */
//String decription=request.getParameter("description");


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
                String tenderdesc = "", odate = "", cdate = "", status = "", accountnumber = "", accounttype = "", expecteddate = "", description = "", chequebookquantity = "";
                while (itr.hasNext()) {
                    FileItem item = (FileItem) itr.next();

                    if (item.isFormField()) {
                        String name = item.getFieldName();
                        String value = item.getString();

                        if (name.equals("accountnumber")) {
                            accountnumber = value;

                        } else if (name.equals("accounttype")) {
                            accounttype = value;

                        } else if (name.equals("chequeboookquantity")) {
                            chequebookquantity = value;

                        } else if (name.equals("expecteddate")) {
                            expecteddate = value;

                        } else if (name.equals("description")) {
                            description = value;

                        }

                    } else {
                        try {


                            String itemName = item.getName();
                            // String itemName = "" + maxvalue;

                            String filename = getpath + "\\web\\img\\chequebook\\";//"vacyimageD:image/";//request.getRealPath("") + "/D:image/";//"/uploads/";
                            filename = filename + itemName;
                            System.out.println("file name with path======" + filename);
                            path = itemName + ".jpg";
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
                c.setAccountnumber(accountnumber);
                c.setAccounttype(accounttype);
                c.setChequebookquantity(chequebookquantity);
                c.setCid(cid);
                c.setDescription(description);
                c.setExpecteddate(expecteddate);
                c.setPhoto(fname);
                boolean b=chequebookDB.AddChequeBook(c);
                if(b){
                %>
                <script>
                    alert(" Thak you For Appling a Chequebook..");
                    window.location.href="CheckbookApply.jsp";
                </script>
        
        
        <%
                
                
                }
            }


        %>






    </body>
</html>
