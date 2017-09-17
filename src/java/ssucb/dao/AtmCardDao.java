/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

import ssucb.pojo.Atmcard;
import java.sql.*;

/**
 *
 * @author Naresh
 */
public class AtmCardDao extends ConnectionInitializer {

    public AtmCardDao() throws Exception {
        conn = ssucb.dao.DBDAO.getInstance().getConn();
        stmt = ssucb.dao.DBDAO.getInstance().getStatement();
    }

    public boolean AddATMCard(Atmcard a) throws Exception {
        stmt = conn.prepareStatement("insert into atmapply values(0,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        stmt.setString(1, a.getName());
        stmt.setString(2, a.getAccountoperatedby());
        stmt.setString(3, a.getUniquecustomerid());
        stmt.setString(4, a.getSavingaccountnumber());
        stmt.setString(5, a.getSex());
        stmt.setString(6, a.getContact());
        stmt.setString(7, a.getEmail());
        stmt.setString(8, a.getAddress());
        stmt.setString(9, a.getAdharcard());
        stmt.setString(10, a.getPancard());
        stmt.setString(11,a.getCardrequest());
        stmt.setString(12, a.getDate());
    stmt.setString(13,a.getBranch());
    int value=stmt.executeUpdate();
    if(value>0){
    return true;
    }else{
    return false;
    }
    }

    
    public ResultSet GetAllATMCardDetails() throws Exception{
    stmt=conn.prepareStatement("select * from atmapply");
    rs=stmt.executeQuery(); 
    return rs;
    }
    
    
}
