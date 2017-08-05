/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.pojo;

/**
 *
 * @author KRISHNA
 */
public class EvenMasterPojo {
    
    private int EventID;
    private String EventName;

    public String getEventName() {
        return EventName;
    }

    public void setEventName(String EventName) {
        this.EventName = EventName;
    }
    private  String EventDesc;
    private String Edate;
    private  String Etime;
    private String file;

    public int getEventID() {
        return EventID;
    }

    public void setEventID(int EventID) {
        this.EventID = EventID;
    }

    public String getEventDesc() {
        return EventDesc;
    }

    public void setEventDesc(String EventDesc) {
        this.EventDesc = EventDesc;
    }

    public String getEdate() {
        return Edate;
    }

    public void setEdate(String Edate) {
        this.Edate = Edate;
    }

    public String getEtime() {
        return Etime;
    }

    public void setEtime(String Etime) {
        this.Etime = Etime;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }

    
}
