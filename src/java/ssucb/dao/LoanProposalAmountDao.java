/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;
import java.sql.*;
import ssucb.pojo.LoanProposalAmountPojo;
/**
 *
 * @author Naresh
 */
public class LoanProposalAmountDao  extends ConnectionInitializer{
    public LoanProposalAmountDao() throws Exception{
    
    conn=ssucb.dao.DBDAO.getInstance().getConn();
    stmt=ssucb.dao.DBDAO.getInstance().getStatement();
    
    
    }
    
    
    public boolean AddLoanProposalAmount(LoanProposalAmountPojo l) throws Exception{
    
    stmt=conn.prepareStatement("insert into loanproposalamount values(0,?,?,?)");
    stmt.setString(1,l.getLoanproposalamount());
    stmt.setString(2,l.getProcessfee());
    stmt.setString(3,l.getReviewofcc());
    int value=stmt.executeUpdate();
    if(value>0){
    
    return true;
    }else{
    return false;
    }
    } 
    
    
    public ResultSet GetAllLoanProposalAmount() throws Exception{
    stmt=conn.prepareStatement("select * from loanproposalamount");
    rs=stmt.executeQuery();
    return rs;
    }
    
    public boolean UpdateLoanProposalAmount(LoanProposalAmountPojo l) throws Exception{
    
    stmt=conn.prepareStatement("update loanproposalamount set loanproposalamount=?,processfee=?,reviewofcc=? where lpid=?");
    stmt.setString(1,l.getLoanproposalamount());
    stmt.setString(2,l.getProcessfee());
    stmt.setString(3,l.getReviewofcc());
    stmt.setInt(4, l.getLpid());
    int value=stmt.executeUpdate();
    if(value>0){
    
    return true;
    }else{
    return false;
    }
    }
    public boolean DeleteLoanProposalAmount(int lpid) throws Exception{
    stmt=conn.prepareStatement("delete from loanproposalamount wher lpid=?");
    stmt.setInt(1, lpid);
    int value=stmt.executeUpdate();
    if(value>0){
    return true;
    }else{
    return false;
    }
    }
    
    
    public ResultSet GetAllLoanProposalAmountById(int lpid) throws Exception{
    stmt=conn.prepareStatement("select * from loanproposalamount where lpid=?");
    stmt.setInt(1,lpid);
    rs=stmt.executeQuery();
    return rs;
    }
}

