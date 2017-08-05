/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

import ssucb.pojo.Beneficiary;
import java.util.ArrayList;

/**
 *
 * @author Naresh
 */
public class BeneficiaryDao extends ConnectionInitializer {

    public BeneficiaryDao() throws Exception {
        conn = ssucb.dao.DBDAO.getInstance().getConn();
        stmt = ssucb.dao.DBDAO.getInstance().getStatement();

    }

    public boolean AddBeneficiary(Beneficiary b) throws Exception {
        stmt = conn.prepareStatement("insert into beneficiary values(0,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        stmt.setString(1, b.getNameofbeneficiary());
        stmt.setString(2, b.getAddress());
        stmt.setString(3, b.getBankname());
        stmt.setString(4, b.getBranchname());
        stmt.setString(5, b.getBankifsc());
        stmt.setString(6, b.getAccountnumber());
        stmt.setString(7, b.getReconformaccount());
        stmt.setString(8, b.getTypeofaccount());
        stmt.setString(9, b.getAmmountinfigure());
        stmt.setString(10, b.getAmmountinword());
        stmt.setString(11, b.getApplicablecharges());
        stmt.setString(12, b.getChequenno());
        stmt.setString(13, b.getRequest());
        stmt.setString(14, b.getDate());
        stmt.setInt(15, b.getBranchid());
        stmt.setInt(16, b.getCustid());
        stmt.setString(17, "Pending");
        int value = stmt.executeUpdate();
        if (value > 0) {
            return true;
        } else {
            return false;
        }
    }

    public ArrayList<Beneficiary> getBeneficiaryByManeger(int mid) throws Exception {
        ArrayList<Beneficiary> al = new ArrayList<Beneficiary>();
        Beneficiary b;
        stmt = conn.prepareStatement("select * from beneficiary as b inner join customermaster as c on c.customerid=b.custid inner join branchmaster as br on br.branchid=c.branchid inner join managermaster as m on m.branchid=c.branchid where m.managerid='" + mid + "'");
        rs = stmt.executeQuery();
        while (rs.next()) {
            b = new Beneficiary();
            b.setBfid(rs.getInt(1));
            b.setNameofbeneficiary(rs.getString(2));
            b.setAddress(rs.getString(3));
            b.setBankname(rs.getString(4));
            b.setBranchname(rs.getString(5));
            b.setBankifsc(rs.getString(6));
            b.setAccountnumber(rs.getString(7));
            b.setReconformaccount(rs.getString(8));
            b.setTypeofaccount(rs.getString(9));
            b.setAmmountinfigure(rs.getString(10));
            b.setAmmountinword(rs.getString(11));
            b.setApplicablecharges(rs.getString(12));
            b.setChequenno(rs.getString(13));
            b.setRequest(rs.getString(14));
            b.setDate(rs.getString(15));
            b.setBranchid(rs.getInt(16));
            b.setCustid(rs.getInt(17));
            b.setStatus(rs.getString(18));
            al.add(b);
        }
        return al;
    }

    public ArrayList<Beneficiary> GetAllBenificiary() throws Exception {
        ArrayList<Beneficiary> al = new ArrayList<Beneficiary>();
        Beneficiary b;
        stmt = conn.prepareStatement("select * from beneficiary");
        rs = stmt.executeQuery();
        while (rs.next()) {
            b = new Beneficiary();
            b.setBfid(rs.getInt(1));
            b.setNameofbeneficiary(rs.getString(1));
            b.setAddress(rs.getString(2));
            b.setBankname(rs.getString(3));
            b.setBranchname(rs.getString(4));
            b.setBankifsc(rs.getString(5));
            b.setAccountnumber(rs.getString(6));
            b.setReconformaccount(rs.getString(7));
            b.setTypeofaccount(rs.getString(8));
            b.setAmmountinfigure(rs.getString(9));
            b.setAmmountinword(rs.getString(10));
            b.setApplicablecharges(rs.getString(11));
            b.setChequenno(rs.getString(12));
            b.setRequest(rs.getString(13));
            b.setDate(rs.getString(14));
            b.setBranchid(rs.getInt(15));
            b.setCustid(rs.getInt(16));
            b.setStatus(rs.getString(17));
            al.add(b);
        }
        return al;

    }

}
