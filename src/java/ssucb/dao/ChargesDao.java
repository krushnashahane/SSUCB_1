/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

import java.sql.*;
import java.util.ArrayList;
import ssucb.pojo.ChargesPojo;

/**
 *
 * @author Naresh
 */
public class ChargesDao extends ConnectionInitializer {

    public ChargesDao() throws Exception {
        conn = ssucb.dao.DBDAO.getInstance().getConn();
        stmt = ssucb.dao.DBDAO.getInstance().getStatement();
        
    }
    
    public boolean AddCharges(ChargesPojo c) throws Exception {
        stmt = conn.prepareStatement("insert into charges values(0,?,?,?)");
        stmt.setInt(1, c.getSid());
        stmt.setString(2, c.getPerticulars());
        stmt.setString(3, c.getCharges());
        int value = stmt.executeUpdate();
        if (value > 0) {
            
            return true;
        } else {
            return false;
        }
        
    }
    
    public ResultSet getAllCharges() throws Exception {
        System.out.println("h,,,");
        stmt = conn.prepareStatement("select * from charges as c inner join servicecharges as s on s.sid=c.sid");
        rs = stmt.executeQuery();
        
        while (rs.next()) {
            System.out.println("HEllo" + rs.getString(6));
        }
        return rs;
    }
    
    public boolean UpdateCharges(ChargesPojo c) throws Exception {
        stmt = conn.prepareStatement("update charges set sid=?,perticulars=?,charges=? where chid=?");
        stmt.setInt(1, c.getSid());
        stmt.setString(2, c.getPerticulars());
        stmt.setString(3, c.getCharges());
        stmt.setInt(4,c.getChid());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            
            return false;
        }
    }
    
    public boolean DeleteCharges(int chid) throws Exception {
        stmt = conn.prepareStatement("delete from charges where chid=?");
        stmt.setInt(1, chid);
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
            
        } else {
            return false;
        }
    }
    
    public ChargesPojo getAllDetailsById(int chid) throws Exception {
        ChargesPojo c = null;
        stmt = conn.prepareStatement("select * from charges where chid=?");
        stmt.setInt(1, chid);
        rs = stmt.executeQuery();
        while (rs.next()) {
            
            c = new ChargesPojo();
            c.setChid(rs.getInt(1));
            c.setPerticulars(rs.getString(3));
            c.setCharges(rs.getString(4));
        }
        return c;
    }
    
    public java.util.ArrayList<ChargesPojo> getAllChargesDetails() throws Exception {
        ArrayList<ChargesPojo> al = new ArrayList<ChargesPojo>();
        ChargesPojo c;
        stmt = conn.prepareStatement("select * from charges as c inner join servicecharges as s on s.sid=c.sid");
        rs = stmt.executeQuery();
        while (rs.next()) {
            
            c = new ChargesPojo();
            c.setChid(rs.getInt(1));
            c.setPerticulars(rs.getString(3));
            c.setCharges(rs.getString(4));
            c.setSid(rs.getInt(2));
            c.setTypeofService(rs.getString(6));
            al.add(c);
        }
        return al;
    }
     public java.util.ArrayList<ChargesPojo> getAllChargesDetailsBySid(int sid) throws Exception {
        ArrayList<ChargesPojo> al = new ArrayList<ChargesPojo>();
        ChargesPojo c;
        stmt = conn.prepareStatement("select * from charges as c inner join servicecharges as s on s.sid=c.sid where c.sid=?");
       stmt.setInt(1,sid);
        rs = stmt.executeQuery();
        while (rs.next()) {
            
            c = new ChargesPojo();
            c.setChid(rs.getInt(1));
            c.setPerticulars(rs.getString(3));
            c.setCharges(rs.getString(4));
            c.setSid(rs.getInt(2));
            c.setTypeofService(rs.getString(6));
            al.add(c);
        }
        return al;
    }
}
