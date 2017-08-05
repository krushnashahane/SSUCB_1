/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

import java.util.ArrayList;
import ssucb.pojo.AuctionPojo;

/**
 *
 * @author KRISHNA
 */
public class AuctionMasterDao extends ConnectionInitializer {

    public AuctionMasterDao() throws Exception {
        ssucb.dao.DBDAO db = ssucb.dao.DBDAO.getInstance();
        conn = db.getConn();
        stmt = db.getStatement();


    }

    public boolean AddAuction(ssucb.pojo.AuctionPojo a) throws Exception {
        stmt = conn.prepareStatement("insert into auction values(0,?,?,?,?,?)");
        stmt.setString(1, a.getAuctionDesc());
        stmt.setString(2, a.getOdate());
        stmt.setString(3, a.getCdate());
        stmt.setString(4, a.getStatus());
        stmt.setString(5, a.getFile());
        int value = stmt.executeUpdate();
        if (value > 0) {

            return true;
        } else {
            return true;
        }


    }

    public ArrayList getAllAuctions() throws Exception {

        ArrayList al = new ArrayList();

        AuctionPojo a;
        stmt = conn.prepareStatement("select * from auction");
        rs = stmt.executeQuery();
        while (rs.next()) {
            a = new AuctionPojo();
            a.setAucid(rs.getInt(1));
            a.setAuctionDesc(rs.getString(2));
            a.setOdate(rs.getString(3));
            a.setCdate(rs.getString(4));
            a.setStatus(rs.getString(5));
            a.setFile(rs.getString(6));
            al.add(a);

        }


        return al;
    }

    public AuctionPojo GetAuctionDetailsByid(int Aucid) throws Exception {
        AuctionPojo a = new AuctionPojo();
        stmt = conn.prepareStatement("select * from auction where auctid=?");
        stmt.setInt(1, Aucid);
        rs = stmt.executeQuery();
        while (rs.next()) {
            a.setAucid(rs.getInt(1));
            a.setAuctionDesc(rs.getString(2));
            a.setOdate(rs.getString(3));
            a.setCdate(rs.getString(4));
            a.setStatus(rs.getString(5));
            a.setFile(rs.getString(6));
        }

        return a;
    }

    public boolean UpdateAuctionDetailsByAuctid(AuctionPojo a) throws Exception {
        System.out.println("The Auction id ==="+a.getAucid());
        stmt = conn.prepareStatement("update auction set auctdesc=?,odate=?,cdate=?,status=? where auctid="+a.getAucid()+ "");
        stmt.setString(1, a.getAuctionDesc());
        stmt.setString(2, a.getOdate());
        stmt.setString(3, a.getCdate());
        stmt.setString(4, a.getStatus());
        int value=stmt.executeUpdate();
        if(value>0){
        return true;
        }else{
        return false;
        }

    }
    public boolean DeleteAuction(int auctionid) throws Exception{
    stmt=conn.prepareStatement("delete from auction where auctid=?");
    stmt.setInt(1,auctionid);
    int value=stmt.executeUpdate();
    if(value>0){
    
    
    return true;
    }else{
    
    return false;
    }
    
    
    }
}
