/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

/**
 *
 * @author KRISHNA
 */
import java.util.*;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;
import ssucb.pojo.CheckbookPojo;
public class ChequeBookDao extends ConnectionInitializer {
     int count = 0;

    public ChequeBookDao() throws Exception {
        ssucb.dao.DBDAO db = ssucb.dao.DBDAO.getInstance();
        conn = db.getConn();
        stmt = db.getStatement();
    }
    
    
    public boolean AddChequeBook(CheckbookPojo c)throws Exception
    {
    
    stmt=conn.prepareStatement("insert into checkbook values(0,?,?,?,?,?,?,?)");
    stmt.setInt(1, c.getCid());
stmt.setString(2,c.getAccountnumber());
stmt.setString(3, c.getAccounttype());
stmt.setString(4, c.getChequebookquantity());
stmt.setString(5, c.getExpecteddate());
stmt.setString(6, c.getDescription());
stmt.setString(7, c.getPhoto());
    int value=stmt.executeUpdate();
    if(value>0){
    System.out.println("ChequeBook Has inserted...");
    return true;
    
    }else{
    
    
    return false;
    }
    
    
    }    
    
    
    
    
    
}
