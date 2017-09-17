/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;
import ssucb.pojo.InternetBankingpojo;
import java.sql.*;

/**
 *
 * @author Naresh
 */
public class InternetBanking  extends ConnectionInitializer{
    
    public InternetBanking() throws Exception{
    
    conn=ssucb.dao.DBDAO.getInstance().getConn();
    stmt=ssucb.dao.DBDAO.getInstance().getStatement();
    }
    
    public boolean AddInternetBanking(InternetBankingpojo i) throws Exception{
    stmt=conn.prepareStatement("insert into applyforinternet values(0,?,?,?,?,?,?,?)");
    stmt.setString(1,i.getBankac());
    stmt.setString(2,i.getBranchname());
    stmt.setString(3, i.getModeofoperation());
    stmt.setString(4, i.getInternet());
    stmt.setString(5, i.getSms());
    stmt.setString(6,i.getDate());
    stmt.setString(7,i.getActype());
    int value=stmt.executeUpdate();
    if(value>0){
    return true;
    }else{
    return false;
    }
    }
    
    public ResultSet GetAllIntenetBankingDetails() throws Exception{
    stmt=conn.prepareStatement("select * from applyforinternet");
    rs=stmt.executeQuery();
    return rs;
    }
    
}
