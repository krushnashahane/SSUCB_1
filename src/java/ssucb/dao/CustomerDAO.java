/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

import java.sql.ResultSet;
import ssucb.pojo.CustomerPojo;

public class CustomerDAO extends ConnectionInitializer {

    int count = 0;

    public CustomerDAO() throws Exception {
        ssucb.dao.DBDAO db = ssucb.dao.DBDAO.getInstance();
        conn = db.getConn();
        stmt = db.getStatement();
    }

    public boolean isRegisterCustomer(CustomerPojo pj) throws Exception {
        int custid = this.getCustomerIdAuto();
        stmt = conn.prepareStatement("insert into customermaster values(?,?,?,?,?,?,?,?)");
        stmt.setInt(1, custid);
        stmt.setString(2, pj.getName());
        stmt.setString(3, pj.getEmail());
        stmt.setString(4, pj.getContact());
        stmt.setString(5, pj.getAddress());
        stmt.setString(6, pj.getType());
        stmt.setInt(7, pj.getBranchid());
        stmt.setString(8, "false");
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

    public int getCustomerIdAuto() throws Exception {
        stmt = conn.prepareStatement("select max(customerid) from customermaster");
        rs = stmt.executeQuery();
        count = 0;
        if (rs.next()) {
            count = rs.getInt(1);
        }
        ++count;
        return count;
    }

    public ResultSet getCustomerBranchWise(int branchid) throws Exception {
        stmt = conn.prepareStatement("select *from customermaster where branchid=? and status='false'");
        stmt.setInt(1, branchid);
        rs = stmt.executeQuery();
        return rs;
    }
    
    
    public ResultSet GetAllCustomers(String email,String pword) throws Exception{
    stmt=conn.prepareStatement("select * from customermaster where email=? and contact=?");
    stmt.setString(1, email);
    stmt.setString(2, pword);
    rs=stmt.executeQuery();
    return rs;
    }
    
    
    
    
    
    
    
    
    public boolean CheckCustomer(String email,String pword) throws Exception{
    stmt=conn.prepareStatement("select * from customermaster where email=? and contact=?");
    stmt.setString(1, email);
    stmt.setString(2, pword);
    rs=stmt.executeQuery();    
if(rs!=null){

return true;
}else{

return false;
}    
    
    }
    
    
    
    public boolean CheckCustomerAccountNumberMobileNumber(String MobileNumber) throws Exception{
    stmt=conn.prepareStatement("select * from customermaster where contact=?");
    stmt.setString(1, MobileNumber);
   rs=stmt.executeQuery();
   if(rs!=null){
   return true;
   
   }else {
   
   return false;
   }
        
    
    
    }
 
    
}
