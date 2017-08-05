/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

import ssucb.pojo.ManagerPojo;

/**
 *
 * @author KRISHNA
 */
public class ManagerDAO extends ConnectionInitializer {

    int branchid;

    public ManagerDAO() throws Exception {
        conn = ssucb.dao.DBDAO.getInstance().getConn();
        stmt = ssucb.dao.DBDAO.getInstance().getStatement();
    }

    public int getBranchIdByManager(int managerid) throws Exception {
        stmt = conn.prepareStatement("select branchid from managermaster where managerid=?");
        stmt.setInt(1, managerid);
        rs = stmt.executeQuery();
        if (rs.next()) {
            branchid = rs.getInt(1);
        }
        return branchid;
    }

    public boolean DeletManager(int mid) throws Exception {
        stmt = conn.prepareStatement("delete from managermaster where managerid=?");
        stmt.setInt(1, mid);
        int value = stmt.executeUpdate();
        if (value > 0) {

            return true;
        } else {
            return false;
        }
    }

    public boolean AddManager(ManagerPojo m) throws Exception {
        stmt = conn.prepareStatement("insert into managermaster values(0,?,?,?,?,?,?,?,?,?,?)");
        stmt.setString(1, m.getName());
        stmt.setString(2, m.getEmail());
        stmt.setString(3, m.getContact());
        stmt.setString(4, m.getLocalAddress());
        stmt.setString(5, m.getPerAddress());
        stmt.setString(6, m.getQualification());
        stmt.setString(7, m.getExperiance());
        stmt.setString(8, m.getPhoto());
        stmt.setInt(9, m.getBranchId());
        stmt.setString(10,m.getPassword());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }

    }
}
