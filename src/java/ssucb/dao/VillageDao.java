/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;
import java.util.*;
import ssucb.pojo.Village;
/**
 *
 * @author Naresh
 */
public class VillageDao extends  ConnectionInitializer{
    public VillageDao() throws Exception{
    conn=ssucb.dao.DBDAO.getInstance().getConn();
    stmt=ssucb.dao.DBDAO.getInstance().getStatement();
    
    }
    public boolean AddVillgae(Village v) throws Exception{
    stmt=conn.prepareStatement("insert into village values(0,?,?)");
    stmt.setString(1, v.getVillage());
    stmt.setInt(2, v.getDistictid());
    int value=stmt.executeUpdate();
    if(value>0){
    return true;
    }else{
    
    return false;
    }
    
    }
    
    
    public ArrayList<Village> GetAllVillage() throws Exception{
    ArrayList<Village> al= new ArrayList<Village>();
    Village v;
    stmt=conn.prepareStatement("select * from village");
    rs=stmt.executeQuery();
    while(rs.next()){
    v= new Village();
    v.setVillageid(rs.getInt(1));
    v.setVillage(rs.getString(2));
    v.setDistictid(rs.getInt(3));
    al.add(v);
    }
    
    return al;
    }
    
    
   
     public ArrayList<Village> GetAllVillageByCityId(int distictid) throws Exception{
    ArrayList<Village> al= new ArrayList<Village>();
    Village v;
    stmt=conn.prepareStatement("select * from village where distict='"+distictid+"'");
    rs=stmt.executeQuery();
    while(rs.next()){
    v= new Village();
    v.setVillageid(rs.getInt(1));
    v.setVillage(rs.getString(2));
    v.setDistictid(rs.getInt(3));
    al.add(v);
    }
    
    return al;
    }
    
    
    
    
    
   public ArrayList<Village> GetAllVillageWithCity() throws Exception{
    ArrayList<Village> al= new ArrayList<Village>();
    Village v;
    stmt=conn.prepareStatement("select * from village  as v inner join distict as d on d.did=v.distict");
    rs=stmt.executeQuery();
    while(rs.next()){
    v= new Village();
    v.setVillageid(rs.getInt(1));
    v.setVillage(rs.getString(2));
    v.setDistictid(rs.getInt(3));
    v.setDistict(rs.getString(5));
    al.add(v);
    }
    
    return al;
    }
     
     
     
     
     
     
}
