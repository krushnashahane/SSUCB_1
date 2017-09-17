/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;
import java.sql.*;
import ssucb.pojo.GallryPojo;
/**
 *
 * @author Naresh
 */
public class GallaryDao  extends ConnectionInitializer{
    public  GallaryDao() throws Exception{
    conn=ssucb.dao.DBDAO.getInstance().getConn();
    stmt=ssucb.dao.DBDAO.getInstance().getStatement();
    
    }
    public boolean AddGallary(GallryPojo g) throws Exception{
    stmt=conn.prepareStatement("insert into galary values(0,?,?)");
    stmt.setString(1,g.getCaption());
    stmt.setString(2,g.getPhoto());
    int value=stmt.executeUpdate();
            if(value>0){
            return true;
            }else{
            return false;
            }
    
    }
    public ResultSet getAllgallary() throws Exception{
    
    stmt=conn.prepareStatement("select * from galary");
    rs=stmt.executeQuery();
    return rs;
    }
    
    
    public boolean UpdateGallary(GallryPojo g) throws Exception{
    
    stmt=conn.prepareStatement("update galary set caption=?,photo=? where gid=?");
    
    stmt.setString(1,g.getCaption());
    stmt.setString(2,g.getPhoto());
    stmt.setInt(3,g.getGid());
    int value=stmt.executeUpdate();
    if(value>0){
    return true;
    }else{
    
    return false;
    }
    }
    
    public boolean DeleteGallary(int gid) throws Exception{
    
    stmt=conn.prepareStatement("delete from galary where gid=?");
    stmt.setInt(1,gid);
    int value=stmt.executeUpdate();
    if(value>0){
    return true;
    }
    else{
    return false;   
    }
    }
    
}
