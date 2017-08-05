/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.pojo;

/**
 *
 * @author KRISHNA
 */
public class TenderMasterPojo {
    private int tid;
    private String  tenderdesc;
    private String odate;
    private String cdate;
    private String status;
    private String file;

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }

    public String getCdate() {
        return cdate;
    }

    public void setCdate(String cdate) {
        this.cdate = cdate;
    }

    public String getOdate() {
        return odate;
    }

    public void setOdate(String odate) {
        this.odate = odate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getTenderdesc() {
        return tenderdesc;
    }

    public void setTenderdesc(String tenderdesc) {
        this.tenderdesc = tenderdesc;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }
    
}
