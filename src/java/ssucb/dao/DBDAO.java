/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

/**
 *
 * @author KRISHNA
 */
import java.sql.*;
import ssucb.pojo.BranchPojo;
import ssucb.pojo.ManagerPojo;

public class DBDAO {

    private Connection conn;
    private PreparedStatement stmt;
    private ResultSet rs;
    static private DBDAO db = null;
    private int count = 0;
    BranchPojo pj;

    private DBDAO() throws Exception {
        com.mysql.jdbc.Driver d = new com.mysql.jdbc.Driver();
        DriverManager.registerDriver(d);
      //conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sundarla_ssucb", "sundarla_ssucb", "ssucb@543210");
   
  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ssucb", "root", "root");
    }

    public Connection getConn() throws Exception {
        return conn;
    }

    public PreparedStatement getStatement() throws Exception {
        return stmt;
    }

    public int getBranchId() throws Exception {
        stmt = conn.prepareStatement("select max(branchid) from branchmaster");
        rs = stmt.executeQuery();
        if (rs.next()) {
            count = rs.getInt(1);
        }
        ++count;
        return count;
    }

    public static DBDAO getInstance() throws Exception {
        //if (db == null) {
            db = new DBDAO();
        //s}
        return db;
    }

    public boolean isAddBranch(BranchPojo pj) throws Exception {
        int bid = this.getBranchId();
        stmt = conn.prepareStatement("insert into branchmaster values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        stmt.setInt(1, bid);
        stmt.setString(2, pj.getName());
        stmt.setString(3, pj.getEmail());
        stmt.setString(4, pj.getContact());
        stmt.setString(5, pj.getDate());
        stmt.setString(6, pj.getIfsc());
        stmt.setString(7, pj.getAtm());
        stmt.setString(8, pj.getAddress());
        stmt.setString(9, pj.getTaluka());
        stmt.setString(10, pj.getCity());
        stmt.setString(11, pj.getDistrict());
        stmt.setString(12, pj.getState());
        stmt.setString(13, pj.getLangitude());
        stmt.setString(14, pj.getLatitude());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

    public ResultSet getAllBranches() throws Exception {
        stmt = conn.prepareStatement("select *from branchmaster");
        rs = stmt.executeQuery();
        return rs;
    }

    public BranchPojo getBranchWiseDetail(int branchid) throws Exception {
        pj = new BranchPojo();
        stmt = conn.prepareStatement("select *from branchmaster where branchid=?");
        stmt.setInt(1, branchid);
        rs = stmt.executeQuery();
        if (rs.next()) {
            pj.setName(rs.getString(2));
            pj.setEmail(rs.getString(3));
            pj.setContact(rs.getString(4));
            pj.setDate(rs.getString(5));
            pj.setIfsc(rs.getString(6));
            pj.setAtm(rs.getString(7));
            pj.setAddress(rs.getString(8));
            pj.setTaluka(rs.getString(9));
            pj.setCity(rs.getString(10));
            pj.setDistrict(rs.getString(11));
            pj.setState(rs.getString(12));
            pj.setLangitude(rs.getString(13));
            pj.setLatitude(rs.getString(14));
            
        }
        return pj;

    }

    public ResultSet searchBranch(String text) throws Exception {
        stmt = conn.prepareStatement("SELECT * FROM branchmaster where name  LIKE '%" + text + "%' or email LIKE '%" + text + "%' or contact LIKE '%" + text + "%' or ifsc LIKE '%" + text + "%' or taluka LIKE '%" + text + "%' or city LIKE '%" + text + "%' or district LIKE '%" + text + "%' or state LIKE '%" + text + "%'");
        rs = stmt.executeQuery();
        return rs;
    }

    public ResultSet getAllBranchNames() throws Exception {
        stmt = conn.prepareStatement("select name from branchmaster");
        rs = stmt.executeQuery();
        return rs;
    }
    
     public ResultSet getAllBranchNamesAndBranchid() throws Exception {
        stmt = conn.prepareStatement("select name,branchid from branchmaster");
        rs = stmt.executeQuery();
        return rs;
    }


    public int getBranchIdByName(String name) throws Exception {
        stmt = conn.prepareStatement("select branchid from branchmaster where name=?");
        stmt.setString(1, name);
        rs = stmt.executeQuery();
        if (rs.next()) {
            return rs.getInt(1);
        } else {
            return 0;
        }
    }

    public int getManagerIdAuto() throws Exception {
        stmt = conn.prepareStatement("select max(managerid) from managermaster");
        rs = stmt.executeQuery();
        count = 0;
        if (rs.next()) {
            count = rs.getInt(1);
        }
        ++count;
        return count;
    }

    public boolean isAddManager(ManagerPojo pj) throws Exception {
        int mid = this.getManagerIdAuto();
        stmt = conn.prepareStatement("insert into managermaster values(?,?,?,?,?,?,?,?,?,?,?)");
        stmt.setInt(1, mid);
        stmt.setString(2, pj.getName());
        stmt.setString(3, pj.getEmail());
        stmt.setString(4, pj.getContact());
        stmt.setString(5, pj.getLocalAddress());
        stmt.setString(6, pj.getPerAddress());
        stmt.setString(7, pj.getQualification());
        stmt.setString(8, pj.getExperiance());
        stmt.setString(9, pj.getPhoto());
        stmt.setInt(10, pj.getBranchId());
        stmt.setString(11, pj.getPassword());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

    public ResultSet viewManager() throws Exception {
        stmt = conn.prepareStatement("select m.managerid,m.name,m.email,m.contact,b.name,m.photo from managermaster m,branchmaster b where b.branchid=m.branchid");
        rs = stmt.executeQuery();
        return rs;
    }

    public ResultSet searchManager(String text) throws Exception {
        stmt = conn.prepareStatement("select m.managerid,m.photo,m.name,m.email,m.contact,b.name from managermaster m,branchmaster b where b.branchid=m.branchid and m.name LIKE '%" + text + "%'");
        rs = stmt.executeQuery();
        return rs;
    }

    public ResultSet searchManagerByContact(String text) throws Exception {
        stmt = conn.prepareStatement("select m.managerid,m.photo,m.name,m.email,m.contact,b.name from managermaster m,branchmaster b where  m.contact LIKE '%" + text + "%'");
        rs = stmt.executeQuery();
        return rs;
    }
    
    
    public boolean UpdateBranch(BranchPojo br)throws Exception{
    stmt=conn.prepareStatement("update branchmaster set name=?,email=?,contact=?,date=?,ifsc=?,address=?,taluka=?,city=?,district=?,state=?,langitude=?,latitude=? where branchid="+br.getBranchid()+"");
    stmt.setString(1, br.getName());
    stmt.setString(2, br.getEmail());
    stmt.setString(3, br.getContact());
    stmt.setString(4, br.getDate());
    stmt.setString(5, br.getIfsc());
    stmt.setString(6, br.getAddress());
    stmt.setString(7, br.getTaluka());
    stmt.setString(8, br.getCity());
    stmt.setString(9, br.getDistrict());
    stmt.setString(10, br.getState());
    stmt.setString(11, br.getLangitude());
    stmt.setString(12, br.getLatitude());
    int value=stmt.executeUpdate();
    if(value>0){
        System.out.println("Branch Updated Successfully.");
    return true;
    }else{
    return false;
    }
    }
    
    
    public boolean DeleteBranch(int branchid) throws Exception{
    stmt=conn.prepareStatement("delete from branchmaster where branchid=?");
    stmt.setInt(1, branchid);
    int value=stmt.executeUpdate();
    if(value>0){
    
    return true;
    }else{
    return false;
    }
    }
    
    
    
    
}
