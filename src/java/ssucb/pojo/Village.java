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
public class Village {
    private int villageid;
    private String village;
    private int cityid;
    private int distictid;
    private String Distict;

    public String getDistict() {
        return Distict;
    }

    public void setDistict(String Distict) {
        this.Distict = Distict;
    }

    public int getDistictid() {
        return distictid;
    }

    public void setDistictid(int distictid) {
        this.distictid = distictid;
    }
private String cityname;

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }
    public int getVillageid() {
        return villageid;
    }

    public void setVillageid(int villageid) {
        this.villageid = villageid;
    }

    public String getVillage() {
        return village;
    }

    public void setVillage(String village) {
        this.village = village;
    }

    public int getCityid() {
        return cityid;
    }

    public void setCityid(int cityid) {
        this.cityid = cityid;
    }
    
}
