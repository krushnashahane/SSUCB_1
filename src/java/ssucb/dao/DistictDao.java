/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

import java.util.*;
import ssucb.pojo.DistictPojo;

/**
 *
 * @author Naresh
 */
public class DistictDao extends ConnectionInitializer {

    public DistictDao() throws Exception {
        conn = ssucb.dao.DBDAO.getInstance().getConn();
        stmt = ssucb.dao.DBDAO.getInstance().getStatement();

    }

    public boolean AddDistict(DistictPojo d) throws Exception {
        stmt = conn.prepareStatement("insert into distict values(0,?,?)");
       
        stmt.setString(1, d.getDistictname());
        stmt.setInt(2, d.getCityid());
        int value = stmt.executeUpdate();
        if (value > 0) {

            return true;
        } else {
            return false;
        }

    }

    public ArrayList<DistictPojo> GetAllDistict() throws Exception {

        ArrayList<DistictPojo> al = new ArrayList<DistictPojo>();

        DistictPojo d;
        stmt = conn.prepareStatement("select * from distict");
        rs = stmt.executeQuery();
        while (rs.next()) {
            d = new DistictPojo();
            d.setDid(rs.getInt(1));
            d.setDistictname(rs.getString(2));
            d.setCityid(rs.getInt(3));
            al.add(d);
        }
        return al;
    }

     public ArrayList<DistictPojo> GetAllDistictByCityid(int cityid) throws Exception {

        ArrayList<DistictPojo> al = new ArrayList<DistictPojo>();

        DistictPojo d;
        stmt = conn.prepareStatement("select * from distict as d inner join city as c on c.cityid=d.cityid where d.cityid="+cityid+"");
        rs = stmt.executeQuery();
        while (rs.next()) {
            d = new DistictPojo();
            d.setDid(rs.getInt(1));
            d.setDistictname(rs.getString(2));
            d.setCityid(rs.getInt(3));
            d.setCityname(rs.getString(5));
            al.add(d);
        }
        return al;
    }
     
     
     public ArrayList<DistictPojo> GetAllDistictWithCityname() throws Exception {

        ArrayList<DistictPojo> al = new ArrayList<DistictPojo>();

        DistictPojo d;
        stmt = conn.prepareStatement("select * from distict as d inner join city as c on c.cityid=d.cityid ");
        rs = stmt.executeQuery();
        while (rs.next()) {
            d = new DistictPojo();
            d.setDid(rs.getInt(1));
            d.setDistictname(rs.getString(2));
            d.setCityid(rs.getInt(3));
            d.setCityname(rs.getString(5));
            al.add(d);
        }
        return al;
    }
}
