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
public class DepositInterest {
    private int did;
    private String perticulars;
    private String credit;
    private String general;
    private String seniorcitizen;
    private int dtid;

    public int getDtid() {
        return dtid;
    }

    public void setDtid(int dtid) {
        this.dtid = dtid;
    }

    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public String getPerticulars() {
        return perticulars;
    }

    public void setPerticulars(String perticulars) {
        this.perticulars = perticulars;
    }

    public String getCredit() {
        return credit;
    }

    public void setCredit(String credit) {
        this.credit = credit;
    }

    public String getGeneral() {
        return general;
    }

    public void setGeneral(String general) {
        this.general = general;
    }

    public String getSeniorcitizen() {
        return seniorcitizen;
    }

    public void setSeniorcitizen(String seniorcitizen) {
        this.seniorcitizen = seniorcitizen;
    }
    
}
