/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

import java.sql.*;
import ssucb.dao.ConnectionInitializer;
import ssucb.dao.DBDAO;
import ssucb.pojo.EvenMasterPojo;
import java.util.*;

/**
 *
 * @author KRISHNA
 */
public class EventMasterDAO extends ConnectionInitializer {

    public EventMasterDAO() throws Exception {
        ssucb.dao.DBDAO db = ssucb.dao.DBDAO.getInstance();
        conn = db.getConn();
        stmt = db.getStatement();
    }

    public boolean AddEventMaster(EvenMasterPojo e) throws Exception {
        stmt = conn.prepareStatement("insert into eventmaster values(0,?,?,?,?,?)");
        stmt.setString(1, e.getEventName());
        stmt.setString(2, e.getEventDesc());
        stmt.setString(3, e.getEdate());
        stmt.setString(4, e.getEtime());
        stmt.setString(5, e.getFile());

        int value = stmt.executeUpdate();
        if (value > 0) {

            return true;
        } else {

            return false;

        }
    }

    public ArrayList getAllEvent() throws Exception {
        ArrayList al = new ArrayList();

        EvenMasterPojo e;
        stmt = conn.prepareStatement("select * from eventmaster");
        rs = stmt.executeQuery();
        while (rs.next()) {
            e = new EvenMasterPojo();
            e.setEventID(rs.getInt(1));
            e.setEventName(rs.getString(2));
            e.setEventDesc(rs.getString(3));
            e.setEdate(rs.getString(4));
            e.setEtime(rs.getString(5));
            e.setFile(rs.getString(6));
            al.add(e);

        }

        return al;
    }

    public ssucb.pojo.EvenMasterPojo getAllEventDetailsByEventID(int Eventid) throws Exception {
        ssucb.pojo.EvenMasterPojo e = new ssucb.pojo.EvenMasterPojo();
        stmt = conn.prepareStatement("select * from eventmaster where eid=?");
        stmt.setInt(1, Eventid);
        rs = stmt.executeQuery();
        while (rs.next()) {
            e.setEventID(rs.getInt(1));
            e.setEventName(rs.getString(2));
            e.setEventDesc(rs.getString(3));
            e.setEdate(rs.getString(4));
            e.setEtime(rs.getString(5));
            e.setFile(rs.getString(6));
        }
        return e;
    }
    public boolean UpdateEventDetails(ssucb.pojo.EvenMasterPojo e)throws Exception{
    stmt=conn.prepareStatement("update eventmaster set EventName=?,eventdesc=?,edate=?,etime=? where eid="+e.getEventID()+"");
    stmt.setString(1, e.getEventName());
    stmt.setString(2, e.getEventDesc());
    stmt.setString(3, e.getEdate());
    stmt.setString(4, e.getEtime());
    int value=stmt.executeUpdate();
    if(value>0){
    return true;
    }else{
    
    return false;
    }
    
    
    
    }
    
    
    
    
    public boolean DeletEvent(int Eventid) throws Exception{
    stmt=conn.prepareStatement("delete from eventmaster where eid=?");
    stmt.setInt(1,Eventid);
    int value=stmt.executeUpdate();
    if(value>0){
    
    return true;
    }else{
    
    return false;
    }
    
    
    
    }
}
