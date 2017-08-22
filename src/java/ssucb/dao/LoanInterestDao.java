/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

import ssucb.pojo.LoanInterest;
import ssucb.pojo.LoanInterestType;
import java.util.ArrayList;

/**
 *
 * @author Naresh
 */
public class LoanInterestDao extends ConnectionInitializer {

    public LoanInterestDao() throws Exception {
        conn = ssucb.dao.DBDAO.getInstance().getConn();
        stmt = ssucb.dao.DBDAO.getInstance().getStatement();
    }

    public boolean AddLoanInterestType(LoanInterestType lt) throws Exception {

        stmt = conn.prepareStatement("insert into loanintresttype values(0,?)");
        stmt.setString(1, lt.getType());
        int value = stmt.executeUpdate();
        if (value > 0) {
            System.out.println("Loan Interest type has been Added Successfully...");
            return true;
        } else {

            return false;
        }

    }

    public boolean AddLoanInterest(LoanInterest l) throws Exception {

        stmt = conn.prepareStatement("insert into loaninterest values(0,?,?,?)");
        stmt.setString(1, l.getPerticulars());
        stmt.setString(2, l.getRoi());
        stmt.setInt(3, l.getLtid());
        int value = stmt.executeUpdate();
        if (value > 0) {
            System.out.println("Loan Interest has been Added");
            return true;
        } else {
            return false;
        }
    }

    public ArrayList<LoanInterest> GetAllLoanInterest() throws Exception {
        ArrayList<LoanInterest> al = new ArrayList<LoanInterest>();
        LoanInterest l;
        stmt = conn.prepareStatement("select * from loaninterest");
        rs = stmt.executeQuery();
        while (rs.next()) {
            l = new LoanInterest();
            l.setLid(rs.getInt(1));
            l.setPerticulars(rs.getString(2));
            l.setRoi(rs.getString(3));
            l.setLtid(rs.getInt(4));
            al.add(l);
        }

        return al;
    }

    public ArrayList<LoanInterestType> GetAllLoanInterestType() throws Exception {
        ArrayList<LoanInterestType> al = new ArrayList<LoanInterestType>();

        LoanInterestType l;
        stmt = conn.prepareStatement("select * from loanintresttype");
        rs = stmt.executeQuery();
        while (rs.next()) {
            l = new LoanInterestType();
            l.setLitid(rs.getInt(1));
            l.setType(rs.getString(2));
            al.add(l);

        }

        return al;
    }

    public ArrayList<LoanInterest> GetLoanInterestByLitid(int litid) throws Exception {
        ArrayList<LoanInterest> al = new ArrayList<LoanInterest>();
        LoanInterest l;
        stmt = conn.prepareStatement("select * from loaninterest where litid=?");
        stmt.setInt(1, litid);
        rs = stmt.executeQuery();
        while (rs.next()) {
            l = new LoanInterest();
            l.setLid(rs.getInt(1));
            l.setPerticulars(rs.getString(2));
            l.setRoi(rs.getString(3));
            l.setLtid(rs.getInt(4));
            al.add(l);
        }

        return al;

    }

    public ArrayList<LoanInterestType> GetAllLoanInterestTypeDetailsByID(int lid) throws Exception {
        ArrayList<LoanInterestType> al = new ArrayList<LoanInterestType>();
        LoanInterestType lt;
        stmt = conn.prepareStatement("select * from loanintresttype where litid=?");
        stmt.setInt(1, lid);
        rs = stmt.executeQuery();
        while (rs.next()) {
            lt = new LoanInterestType();
            lt.setLitid(rs.getInt(1));
            lt.setType(rs.getString(2));

            al.add(lt);
        }

        return al;
    }

    public boolean UpdateLoanInterestType(LoanInterestType lt) throws Exception {
        System.out.println("LTid" + lt.getLitid());
        stmt = conn.prepareStatement("update loanintresttype set type=? where litid=?");
        stmt.setString(1, lt.getType());
        stmt.setInt(2, lt.getLitid());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;

        } else {

            return false;
        }
    }

    public boolean DeleteLoanInterestTypeDetails(int id) throws Exception {
        stmt = conn.prepareStatement("delete from loanintresttype where litid=?");
        stmt.setInt(1, id);
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

    public LoanInterestType GetLoanInterestTypeDetails(int id) throws Exception {
        LoanInterestType lt = null;
        stmt = conn.prepareStatement("select * from  loanintresttype where litid=?");
        stmt.setInt(1, id);
        rs = stmt.executeQuery();
        while (rs.next()) {
            lt = new LoanInterestType();
            lt.setLitid(rs.getInt(1));
            lt.setType(rs.getString(2));
        }
        return lt;
    }

    public boolean UpdateLoanInterest(LoanInterest l) throws Exception {
        stmt = conn.prepareStatement("update loaninterest set perticulars=?,roi=?,litid=? where lid=?");
        stmt.setString(1, l.getPerticulars());
        stmt.setString(2, l.getRoi());
        stmt.setInt(3, l.getLtid());
        stmt.setInt(4, l.getLid());
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

    public LoanInterest GetLoanInterestDetailsByid(int lid) throws Exception {

        LoanInterest l = null;
        stmt = conn.prepareStatement("select * from loaninterest where lid=?");
        stmt.setInt(1, lid);
        rs = stmt.executeQuery();
        while (rs.next()) {
            l = new LoanInterest();
            l.setLid(rs.getInt(1));
            l.setPerticulars(rs.getString(2));
            l.setRoi(rs.getString(3));
            l.setLtid(rs.getInt(4));

        }

        return l;
    }
    
    
    public boolean DeletLoanInterestById(int lid) throws Exception{
    stmt=conn.prepareStatement("delete from loaninterest where lid=?");
    stmt.setInt(1,lid);
    int vale=stmt.executeUpdate();
  if(vale>0){
  
  return true;
  }else{
  return false;
  }
    
    
    }
    
    
    

}
