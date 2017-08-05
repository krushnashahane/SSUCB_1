/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

import java.util.*;
import ssucb.pojo.ShareHolderPojo;

/**
 *
 * @author Naresh
 */
public class ShareHolderDao extends ConnectionInitializer {

    public ShareHolderDao() throws Exception {
        conn = ssucb.dao.DBDAO.getInstance().getConn();
        stmt = ssucb.dao.DBDAO.getInstance().getStatement();
    }

    public boolean AddShareHolder(ShareHolderPojo sh) throws Exception {
        stmt = conn.prepareStatement("insert into shareholder values(0,?,?,?,?,?,?,?,?)");
        stmt.setInt(1, sh.getBranchid());
        stmt.setInt(2, sh.getShreNo());
        stmt.setString(3, sh.getShareholdername());
        stmt.setString(4, sh.getAccount());
        stmt.setString(5, sh.getStatus());
        stmt.setString(6, sh.getDob());
        stmt.setString(7, sh.getMobno());
        stmt.setString(8, sh.getAddress());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

    public ArrayList<ShareHolderPojo> getAllShareHolders() throws Exception {
        ArrayList<ShareHolderPojo> al = new ArrayList<ShareHolderPojo>();

        ShareHolderPojo sh;
        stmt = conn.prepareStatement("select * from shareholder");
        rs = stmt.executeQuery();
        while (rs.next()) {
            sh = new ShareHolderPojo();
            sh.setShid(rs.getInt(1));
            sh.setBranchid(rs.getInt(2));
            sh.setShreNo(rs.getInt(3));
            sh.setShareholdername(rs.getString(4));
            sh.setAccount(rs.getString(5));
            sh.setStatus(rs.getString(6));
            sh.setDob(rs.getString(7));
            sh.setMobno(rs.getString(8));
            sh.setAddress(rs.getString(9));
            al.add(sh);
        }
        return al;
    }

}
