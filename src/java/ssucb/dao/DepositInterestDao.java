/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;
import ssucb.pojo.DepositInterest;
import java.util.ArrayList;
import ssucb.pojo.DepositInterestType;
/**
 *
 * @author Naresh
 */
public class DepositInterestDao extends ConnectionInitializer {
    
      public DepositInterestDao() throws Exception {
        conn = ssucb.dao.DBDAO.getInstance().getConn();
        stmt = ssucb.dao.DBDAO.getInstance().getStatement();
    }
    
      
      
      public boolean AddDeposit(DepositInterest d) throws Exception{
      stmt=conn.prepareStatement("insert into deposit_interest values(0,?,?,?,?,?)");
      stmt.setString(1,d.getPerticulars());
      stmt.setString(2,d.getCredit());
      stmt.setString(3, d.getGeneral());
      stmt.setString(4, d.getSeniorcitizen());
      stmt.setInt(5,d.getDtid());
      int value=stmt.executeUpdate();
      if(value>0){
      System.out.println("Deposit Interest has been Added Successfully");
      return true;
      }else{
      return false;
      }
      }

public DepositInterest GetDetailsofDepositInterestByid(int did) throws Exception{

DepositInterest d= new DepositInterest();
stmt=conn.prepareStatement("select * from deposit_interest where did=?");
stmt.setInt(1,did);
rs=stmt.executeQuery();
while(rs.next()){
d.setDid(rs.getInt(1));
d.setPerticulars(rs.getString(2));
d.setCredit(rs.getString(3));
d.setGeneral(rs.getString(4));
d.setSeniorcitizen(rs.getString(5));
}
return d;
}


public ArrayList<DepositInterest> getAllDepositInterest() throws Exception{
ArrayList<DepositInterest> al= new ArrayList<DepositInterest>();
DepositInterest d;
stmt=conn.prepareStatement("select * from deposit_interest");
rs=stmt.executeQuery();
while(rs.next()){
d= new DepositInterest();
d.setDid(rs.getInt(1));
d.setPerticulars(rs.getString(2));
d.setCredit(rs.getString(3));
d.setGeneral(rs.getString(4));
d.setSeniorcitizen(rs.getString(5));
al.add(d);
}
return al;
}


public ArrayList<DepositInterestType> GetAllTypes() throws Exception{
ArrayList<DepositInterestType> al= new ArrayList<DepositInterestType>();
DepositInterestType dt;
stmt=conn.prepareStatement("select * from depositinteresttype");
rs=stmt.executeQuery();
while(rs.next()){
dt= new DepositInterestType();
dt.setDtid(rs.getInt(1));
dt.setType(rs.getString(2));
al.add(dt);
}




return al;

}




public boolean AddDepositInterestType(DepositInterestType dt) throws Exception{

stmt=conn.prepareStatement("insert into depositinteresttype values(0,?)");
stmt.setString(1,dt.getType());
int value=stmt.executeUpdate();
if(value>0){
System.out.println("Deposit type has been Added Successfully..");

return true;
}else{

return false;
}

}

public ArrayList<DepositInterest> GetDepositInterestByTypeid(int dtid) throws Exception{

    ArrayList<DepositInterest> al= new ArrayList<DepositInterest>();
    DepositInterest d;
    
stmt=conn.prepareStatement("select * from deposit_interest where dtid=?");
stmt.setInt(1,dtid);
rs=stmt.executeQuery();
while(rs.next()){
d= new DepositInterest();
d.setDid(rs.getInt(1));
d.setPerticulars(rs.getString(2));
d.setCredit(rs.getString(3));
d.setGeneral(rs.getString(4));
d.setSeniorcitizen(rs.getString(5));
al.add(d);


}
        

return al;
}


public ArrayList<DepositInterestType> getDepositInterestTypeDetailsByid(int id) throws Exception{
ArrayList<DepositInterestType> al= new ArrayList<DepositInterestType>();
DepositInterestType dt;
stmt=conn.prepareStatement("select * from depositinteresttype");
rs=stmt.executeQuery();
while(rs.next()){
dt= new DepositInterestType();
dt.setDtid(rs.getInt(1));
dt.setType(rs.getString(2));
al.add(dt);
}




return al;
}




public DepositInterestType getDetailsByID(int id) throws Exception{

DepositInterestType dt=null;
stmt=conn.prepareStatement("select * from depositinteresttype where dtid='"+id+"'");
rs=stmt.executeQuery();
while(rs.next()){
dt= new DepositInterestType();
dt.setDtid(rs.getInt(1));
dt.setType(rs.getString(2));
}
return dt;
}

public boolean UpdateDepositInterestType(DepositInterestType dt) throws Exception{
stmt=conn.prepareStatement("update depositinteresttype set type=? where dtid=?");
stmt.setString(1,dt.getType());
stmt.setInt(2, dt.getDtid());
int value=stmt.executeUpdate();
if(value>0){
return true;
}else{

return false;
}
}
public boolean DeleteDepositInterestType(int id) throws Exception{
stmt=conn.prepareStatement("delete from depositinteresttype where dtid=?");
stmt.setInt(1,id);
int value=stmt.executeUpdate();

if(value>0){

return true;
}
else {

return false;
}





}
public boolean UpdateDepositInterest(DepositInterest d) throws Exception{
stmt=conn.prepareStatement("update deposit_interest set particulars=?,credit_society_bank=?,genaral=?,senior_citizen_handicapped=? where did=?");
stmt.setString(1, d.getPerticulars());
stmt.setString(2, d.getCredit());
stmt.setString(3, d.getGeneral());
stmt.setString(4, d.getSeniorcitizen());
stmt.setInt(5,d.getDid());

int value=stmt.executeUpdate();
if(value>0){

return true;
}else 
    
    
    return false;

}



}



