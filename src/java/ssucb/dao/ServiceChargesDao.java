/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

import java.sql.*;
import ssucb.pojo.ServiceCharges;

/**
 *
 * @author Naresh
 */
public class ServiceChargesDao extends ConnectionInitializer {

    public ServiceChargesDao() throws Exception {
        conn = ssucb.dao.DBDAO.getInstance().getConn();
        stmt = ssucb.dao.DBDAO.getInstance().getStatement();
    }

    public boolean AddServiceCharges(ServiceCharges s) throws Exception {
        stmt = conn.prepareStatement("insert into servicecharges valueS(0,?)");
        stmt.setString(1, s.getTypeofservices());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

    public java.sql.ResultSet getAllServiceCharges() throws Exception {
        stmt = conn.prepareStatement("select * from servicecharges");
        rs = stmt.executeQuery();
        return rs;
    }

    public boolean UpdateServiceCharges(ServiceCharges s) throws Exception {
        stmt = conn.prepareStatement("update servicecharges set typeofservices=? where sid=?");
        stmt.setString(1, s.getTypeofservices());
        stmt.setInt(2, s.getSid());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

    public boolean DeleteServiceCharges(int sid) throws Exception {
        stmt = conn.prepareStatement("delete from servicecharges where sid=?");
        stmt.setInt(1, sid);
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }

    }

    public ServiceCharges GetServiceChargesBYId(int sid) throws Exception {
        ServiceCharges s=null;
        stmt = conn.prepareStatement("select * from servicecharges where sid=?");
        stmt.setInt(1, sid);
        rs = stmt.executeQuery();
        while (rs.next()) {
            s = new ServiceCharges();
            s.setSid(rs.getInt(1));
            s.setTypeofservices(rs.getString(2));
        }
        return s;
    }
}
