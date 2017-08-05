/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.dao;

import java.sql.*;

public class ValidateDAO {

    private Connection conn;
    private PreparedStatement stmt;
    private ResultSet rs;

    public ValidateDAO() throws Exception {
        conn = DBDAO.getInstance().getConn();
        if (conn != null) {
            System.out.println("Connected.................");
        }
        stmt = DBDAO.getInstance().getStatement();
    }

    public ResultSet isManagerValidate(String email, String password) throws Exception {
        stmt = conn.prepareStatement("select *from managermaster where email=? and password=?");
        stmt.setString(1, email);
        stmt.setString(2, password);
        rs = stmt.executeQuery();
        return rs;
    }

    public static void main(String x[]) throws Exception {
        ssucb.dao.ValidateDAO v = new ssucb.dao.ValidateDAO();
        java.sql.ResultSet rs = v.isManagerValidate("adinath@gmail.com", "adinath");
        //   out.println("Success");
        if (rs.next()) {
            System.out.println("success");
            int managerid = rs.getInt(1);
            String managername = rs.getString(2);
            System.out.println(managername);
        } else {
        }

    }
}
