/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;
import java.sql.*;
import ssucb.pojo.SmsAlert;

/**
 *
 * @author Naresh
 */
public class SmsAlertDao extends ConnectionInitializer {

    public SmsAlertDao() throws Exception {

        conn = ssucb.dao.DBDAO.getInstance().getConn();
        stmt = ssucb.dao.DBDAO.getInstance().getStatement();
    }

    public boolean AddSmsAlert(SmsAlert s) throws Exception {
        stmt = conn.prepareStatement("insert into smsalert values(0,?,?,?,?,?,?,?,?,?,?,?)");
        stmt.setString(1, s.getName());
        stmt.setString(2, s.getAddress());
        stmt.setString(3, s.getCity());
        stmt.setString(4, s.getEmail());
        stmt.setString(5, s.getContact());
        stmt.setString(6, s.getDob());
        stmt.setString(7, s.getBankac());
        stmt.setString(8, s.getBranch());
        stmt.setString(9, s.getModeofoperation());
        stmt.setString(10, s.getDate());
        stmt.setString(11, s.getPlace());
int value=stmt.executeUpdate();
if(value>0){

return true;
}else{

return false;
}
        
    }
    
    
    
    public ResultSet GetAmsAlert() throws Exception{
    
    stmt=conn.prepareStatement("select * from smsalert");
    rs=stmt.executeQuery();
    return rs;
    }

}
