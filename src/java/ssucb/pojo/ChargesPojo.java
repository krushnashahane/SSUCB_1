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
public class ChargesPojo {
    private int chid;
    private int sid;
    private String perticulars;
    private String charges;
    private String TypeofService;

    public String getTypeofService() {
        return TypeofService;
    }

    public void setTypeofService(String TypeofService) {
        this.TypeofService = TypeofService;
    }

    public int getChid() {
        return chid;
    }

    public void setChid(int chid) {
        this.chid = chid;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getPerticulars() {
        return perticulars;
    }

    public void setPerticulars(String perticulars) {
        this.perticulars = perticulars;
    }

    public String getCharges() {
        return charges;
    }

    public void setCharges(String charges) {
        this.charges = charges;
    }
}
