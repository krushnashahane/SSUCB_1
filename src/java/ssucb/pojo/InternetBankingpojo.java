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
public class InternetBankingpojo {
    private int id;
    private String bankac;
    private String branchname;
    private String modeofoperation;
    private String internet;
    private String sms;
    private String date;
    private String actype;

    public String getActype() {
        return actype;
    }

    public void setActype(String actype) {
        this.actype = actype;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBankac() {
        return bankac;
    }

    public void setBankac(String bankac) {
        this.bankac = bankac;
    }

    public String getBranchname() {
        return branchname;
    }

    public void setBranchname(String branchname) {
        this.branchname = branchname;
    }

    public String getModeofoperation() {
        return modeofoperation;
    }

    public void setModeofoperation(String modeofoperation) {
        this.modeofoperation = modeofoperation;
    }

    public String getInternet() {
        return internet;
    }

    public void setInternet(String internet) {
        this.internet = internet;
    }

    public String getSms() {
        return sms;
    }

    public void setSms(String sms) {
        this.sms = sms;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
}
