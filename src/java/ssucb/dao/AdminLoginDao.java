/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

import ssucb.pojo.AdminLoginPojo;

/**
 *
 * @author Naresh
 */
public class AdminLoginDao extends ConnectionInitializer {

    public AdminLoginDao() throws Exception {
        conn = ssucb.dao.DBDAO.getInstance().getConn();
        stmt = ssucb.dao.DBDAO.getInstance().getStatement();
    }

    public boolean UpdatePassword(AdminLoginPojo a) throws Exception {
        stmt = conn.prepareStatement("update adminlogin set password=? where aid=1");
        stmt.setString(1, a.getPassword());
//stmt.setInt(2, a.getAid());
        int value = stmt.executeUpdate();
        if (value > 0) {
            System.out.println("Password has been Updated Successfully...");
            return true;
        } else {

            return false;
        }
    }

    public boolean UpdateUserName(AdminLoginPojo a) throws Exception {
        stmt = conn.prepareStatement("update adminlogin set username=? where aid=1");
        stmt.setString(1, a.getUsername());
//stmt.setInt(2, a.getAid());
        int value = stmt.executeUpdate();
        if (value > 0) {
            System.out.println("The Username has been Updated Successfully..");
            return true;
        } else {
            return false;
        }
    }

    public AdminLoginPojo ValidateLogin(AdminLoginPojo a) throws Exception {
        AdminLoginPojo al = new AdminLoginPojo();
        stmt = conn.prepareStatement("select * from adminlogin where username=? and password=?");
        stmt.setString(1, a.getUsername());
        stmt.setString(2, a.getPassword());
        rs=stmt.executeQuery();
        boolean check = rs.next();
        if (!check) {
            System.out.println("Not check");
            al.setUsername(a.getUsername());
            al.setPassword(a.getPassword());
            al.setValid(false);
        } else if (check) {
            System.out.println("check...");
            al.setUsername(a.getUsername());
            al.setPassword(a.getPassword());
            al.setValid(true);
        }

        return al;
    }
public boolean ValidateAdminLogin(AdminLoginPojo a) throws Exception {
        AdminLoginPojo al = new AdminLoginPojo();
        stmt = conn.prepareStatement("select * from adminlogin where username=? and password=?");
      System.out.println("USrname ==="+a.getUsername());
      System.out.println("PAssword===="+a.getPassword());
        stmt.setString(1, a.getUsername());
        stmt.setString(2, a.getPassword());
        rs=stmt.executeQuery();
        boolean check = rs.next();
        if (!check) {
            System.out.println("Not check");
           
            return false;
        } else if (check) {
            
            System.out.println("Username from database==="+rs.getString(1));
            System.out.println("check...");
            
            return true;
        }

        return true;
    }
}
