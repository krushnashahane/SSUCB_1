/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;
import java.sql.*;
import ssucb.pojo.ContactUs;

/**
 *
 * @author Naresh
 */
public class ContactUsDao  extends ConnectionInitializer{
    public ContactUsDao() throws Exception{
    
    conn=ssucb.dao.DBDAO.getInstance().getConn();
    stmt=ssucb.dao.DBDAO.getInstance().getStatement();
    }
    
    public boolean AddContactUs(ContactUs c) throws Exception{
    
    stmt=conn.prepareStatement("insert into contactus values(0,?,?,?,?,?)");
    stmt.setString(1,c.getName());
        stmt.setString(2, c.getEmail());
    stmt.setString(3,c.getContact());
    stmt.setString(4, c.getSubject());
    stmt.setString(5,c.getMessage());
    
    int value=stmt.executeUpdate();
    if(value>0){
    return true;
    }else{
    return false;
    }
    }
    
    public ResultSet GetAllContactUS() throws Exception{
    stmt=conn.prepareStatement("select * from contactus");
    rs=stmt.executeQuery();
    return rs;
    }
    public boolean DeleteCOntactus(int cid) throws Exception{
    
    stmt=conn.prepareStatement("delete from contactus where cid=?");
    stmt.setInt(1,cid);
    int value=stmt.executeUpdate();
    if(value>0){
    return true;
    }else{
    return false;
    }
    
    }
}
