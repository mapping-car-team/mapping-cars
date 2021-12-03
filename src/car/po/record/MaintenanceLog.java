package car.po.record;

import java.util.Date;

public class MaintenanceLog {
    String id;
    String fixapplicationid;
    String username;
    Date time;
    String remarks;
    double cost;
    String carid;

    public String getCarid() {
        return carid;
    }

    public void setCarid(String carid) {
        this.carid = carid;
    }
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFixapplicationid() {
        return fixapplicationid;
    }

    public void setFixapplicationid(String fixapplicationid) {
        this.fixapplicationid = fixapplicationid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }
}
