/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.pojo;

/**
 *
 * @author KRISHNA
 */
public class AuctionPojo {
    private int Aucid;
    private String AuctionDesc;
    private String odate;
    private String cdate;
    private String status;
    private String file;

    public int getAucid() {
        return Aucid;
    }

    public void setAucid(int Aucid) {
        this.Aucid = Aucid;
    }

    public String getAuctionDesc() {
        return AuctionDesc;
    }

    public void setAuctionDesc(String AuctionDesc) {
        this.AuctionDesc = AuctionDesc;
    }

    public String getCdate() {
        return cdate;
    }

    public void setCdate(String cdate) {
        this.cdate = cdate;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
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
    
}
