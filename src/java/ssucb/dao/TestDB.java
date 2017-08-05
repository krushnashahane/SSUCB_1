/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;
import java.sql.*;
/**
 *
 * @author KRISHNA
 */
public class TestDB {
    public static void main(String args[]) throws Exception{
    try{
        Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://jpcloudusa004.nshostserver.net:3306/sundarla_ssucb","sundarla_ssucb","ssucb@543210");
    
    if(conn!=null){
    System.out.println("connection Success..")  ;
    
    }
    
    }catch(Exception e){
    
    System.out.println(e);
    }
    
    
    }
    
}
