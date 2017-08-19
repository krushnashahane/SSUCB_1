/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

import java.util.*;
import ssucb.dao.DBDAO;
import ssucb.pojo.CityPojo;

/**
 *
 * @author Naresh
 */
public class CityDao extends ConnectionInitializer {

    public CityDao() throws Exception {
        conn = DBDAO.getInstance().getConn();
        stmt = DBDAO.getInstance().getStatement();
    }

    public boolean AddCity(CityPojo ct) throws Exception {
        stmt = conn.prepareStatement("insert into city values(0,?)");
        stmt.setString(1, ct.getCity());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }
    
    
    public ArrayList<CityPojo> GetAllCity() throws Exception{
    ArrayList<CityPojo> al= new ArrayList<CityPojo>();
  
    CityPojo ct;
    stmt=conn.prepareStatement("select * from city");
    rs=stmt.executeQuery();
    while(rs.next()){
        ct= new CityPojo();
    ct.setCityid(rs.getInt(1));
    ct.setCity(rs.getString(2));
    al.add(ct);
    }
    
   return al;
    }
    
    
}
