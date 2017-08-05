/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.pojo;

/**
 *
 * @author KRISHNA
 */
public class CheckbookPojo {
    private int ckbid;
    private int cid;
    private String accountnumber;
    private String accounttype;
    private String chequebookquantity;
    private String expecteddate;
    private String Description;

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }
    private String photo;

    public String getAccountnumber() {
        return accountnumber;
    }

    public void setAccountnumber(String accountnumber) {
        this.accountnumber = accountnumber;
    }

    public String getAccounttype() {
        return accounttype;
    }

    public void setAccounttype(String accounttype) {
        this.accounttype = accounttype;
    }

    public String getChequebookquantity() {
        return chequebookquantity;
    }

    public void setChequebookquantity(String chequebookquantity) {
        this.chequebookquantity = chequebookquantity;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getCkbid() {
        return ckbid;
    }

    public void setCkbid(int ckbid) {
        this.ckbid = ckbid;
    }

    public String getExpecteddate() {
        return expecteddate;
    }

    public void setExpecteddate(String expecteddate) {
        this.expecteddate = expecteddate;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
    
    
}
