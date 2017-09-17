/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

import java.sql.*;
import ssucb.pojo.SocialActivityPojo;

/**
 *
 * @author Naresh
 */
public class SocialActivityDao extends ConnectionInitializer {

    public SocialActivityDao() throws Exception {
        conn = ssucb.dao.DBDAO.getInstance().getConn();
        stmt = ssucb.dao.DBDAO.getInstance().getStatement();
    }

    public boolean AddSocialActivity(SocialActivityPojo s) throws Exception {
        stmt = conn.prepareStatement("insert into socialactivity values(0,?,?)");
        stmt.setString(1, s.getCaption());
        stmt.setString(2, s.getPhoto());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }

    }
    
    public ResultSet getAllSocialActivity() throws Exception{
    stmt=conn.prepareStatement("select * from socialactivity");
    rs=stmt.executeQuery();
    return rs;
    }

  
}
