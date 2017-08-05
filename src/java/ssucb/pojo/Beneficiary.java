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
public class Beneficiary {

    private int bfid;
    private String nameofbeneficiary;
    private String address;
    private String bankname;
    private String branchname;
    private String bankifsc;
    private String accountnumber;
    private String reconformaccount;
    private String typeofaccount;
    private String ammountinfigure;
    private String ammountinword;
    private String status;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getBfid() {
        return bfid;
    }

    public void setBfid(int bfid) {
        this.bfid = bfid;
    }

    public String getNameofbeneficiary() {
        return nameofbeneficiary;
    }

    public void setNameofbeneficiary(String nameofbeneficiary) {
        this.nameofbeneficiary = nameofbeneficiary;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBankname() {
        return bankname;
    }

    public void setBankname(String bankname) {
        this.bankname = bankname;
    }

    public String getBranchname() {
        return branchname;
    }

    public void setBranchname(String branchname) {
        this.branchname = branchname;
    }

    public String getBankifsc() {
        return bankifsc;
    }

    public void setBankifsc(String bankifsc) {
        this.bankifsc = bankifsc;
    }

    public String getAccountnumber() {
        return accountnumber;
    }

    public void setAccountnumber(String accountnumber) {
        this.accountnumber = accountnumber;
    }

    public String getReconformaccount() {
        return reconformaccount;
    }

    public void setReconformaccount(String reconformaccount) {
        this.reconformaccount = reconformaccount;
    }

    public String getTypeofaccount() {
        return typeofaccount;
    }

    public void setTypeofaccount(String typeofaccount) {
        this.typeofaccount = typeofaccount;
    }

    public String getAmmountinfigure() {
        return ammountinfigure;
    }

    public void setAmmountinfigure(String ammountinfigure) {
        this.ammountinfigure = ammountinfigure;
    }

    public String getAmmountinword() {
        return ammountinword;
    }

    public void setAmmountinword(String ammountinword) {
        this.ammountinword = ammountinword;
    }

    public String getApplicablecharges() {
        return applicablecharges;
    }

    public void setApplicablecharges(String applicablecharges) {
        this.applicablecharges = applicablecharges;
    }

    public String getChequenno() {
        return chequenno;
    }

    public void setChequenno(String chequenno) {
        this.chequenno = chequenno;
    }

    public String getRequest() {
        return request;
    }

    public void setRequest(String request) {
        this.request = request;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getBranchid() {
        return branchid;
    }

    public void setBranchid(int branchid) {
        this.branchid = branchid;
    }

    public int getCustid() {
        return custid;
    }

    public void setCustid(int custid) {
        this.custid = custid;
    }
    private String applicablecharges;
    private String chequenno;
    private String request;
    private String date;
    private int branchid;
    private int custid;

}
