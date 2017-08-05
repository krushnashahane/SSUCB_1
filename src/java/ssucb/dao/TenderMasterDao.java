/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

import java.sql.*;
import ssucb.dao.ConnectionInitializer;
import ssucb.dao.DBDAO;
import ssucb.pojo.TenderMasterPojo;
import java.util.*;

/**
 *
 * @author KRISHNA
 */
public class TenderMasterDao extends ConnectionInitializer {

    ArrayList al;

    public TenderMasterDao() throws Exception {
        ssucb.dao.DBDAO db = ssucb.dao.DBDAO.getInstance();
        conn = db.getConn();
        stmt = db.getStatement();

    }

    public boolean AddTenderMaster(TenderMasterPojo t) throws Exception {
        stmt = conn.prepareStatement("insert into tendermaster values(0,?,?,?,?,?)");
        stmt.setString(1, t.getTenderdesc());
        stmt.setString(2, t.getOdate());
        stmt.setString(3, t.getCdate());
        stmt.setString(4, t.getStatus());
        stmt.setString(5, t.getFile());
        int value = stmt.executeUpdate();
        if (value > 0) {

            return true;
        } else {


            return false;

        }

    }

    public ArrayList GetAllTenderMaster() throws Exception {
        al = new ArrayList();

        TenderMasterPojo t;
        stmt = conn.prepareStatement("select * from tendermaster");
        rs = stmt.executeQuery();
        while (rs.next()) {
            t = new TenderMasterPojo();
            t.setTid(rs.getInt(1));
            t.setTenderdesc(rs.getString(2));
            t.setOdate(rs.getString(3));
            t.setCdate(rs.getString(4));
            t.setStatus(rs.getString(5));
            t.setFile(rs.getString(6));

            al.add(t);



        }


        return al;
    }
    
    
    
    public TenderMasterPojo GetTenderDetailsByTenderid(int Tenderid)throws Exception{
    TenderMasterPojo t;t= new TenderMasterPojo();
    stmt=conn.prepareStatement("select * from tendermaster where tid=?");
    stmt.setInt(1, Tenderid);
    rs=stmt.executeQuery();
    while(rs.next()){
    
    t.setTid(rs.getInt(1));
    t.setTenderdesc(rs.getString(2));
    t.setOdate(rs.getString(3));
    t.setCdate(rs.getString(4));
    t.setStatus(rs.getString(5));
    t.setFile(rs.getString(6));
    }
    return t;
    }
    
    public boolean UpdateTenderDetails(TenderMasterPojo t) throws Exception{
    stmt=conn.prepareStatement("update tendermaster set tenderdesc=?,odate=?,cdate=?,status=? where tid="+t.getTid()+"");
    stmt.setString(1, t.getTenderdesc());
    stmt.setString(2, t.getOdate());
    stmt.setString(3, t.getCdate());
stmt.setString(4, t.getStatus());
int value=stmt.executeUpdate();
if(value>0){
    return true;
}
else{
return false;
}
    }
    public boolean DeletTenderByTenderid(int tenderid) throws Exception{
    stmt=conn.prepareStatement("delete from tendermaster where tid=?");
    stmt.setInt(1, tenderid);
    int value=stmt.executeUpdate();
    if(value>0){
    
    return true;
    }else {
    
    return false;
    }
    
   
    }
    
}
