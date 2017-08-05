/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.pojo;

/**
 *
 * @author Naresh
 */
public class ShareHolderPojo {
    private int shid;
    private int branchid;
    private int shreNo;

    public int getShreNo() {
        return shreNo;
    }

    public void setShreNo(int shreNo) {
        this.shreNo = shreNo;
    }
    private String shareholdername;
    private String account;
    private String status;
    private String dob;
    private String mobno;
    private String address;

    public int getShid() {
        return shid;
    }

    public void setShid(int shid) {
        this.shid = shid;
    }

    public int getBranchid() {
        return branchid;
    }

    public void setBranchid(int branchid) {
        this.branchid = branchid;
    }

    public String getShareholdername() {
        return shareholdername;
    }

    public void setShareholdername(String shareholdername) {
        this.shareholdername = shareholdername;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getMobno() {
        return mobno;
    }

    public void setMobno(String mobno) {
        this.mobno = mobno;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
}
