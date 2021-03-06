package car.service;

import car.dao.LogDao;
import car.dao.LogDaoImpl;
import car.po.User;
import car.po.application.CarApplication;
import car.po.record.*;
import com.opensymphony.xwork2.ActionContext;
import java.util.Date;
import java.util.List;
import java.util.Map;


public class LogServiceImpl implements LogService{
    private Map<String, Object> request, session;
    private LogDao logDao = null;
    public LogDao getLogDao() {return logDao;}
    public void setLogDao(LogDao logDao) {this.logDao = logDao;}


    // 获取接收人通知 返回NotificationList对象
    @Override
    public List<Notification> getNF(String recipientID){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from Notification as notification where recipient='"+recipientID+"'" ;
        List<Notification> list = logDao.findByHqlNF(hql);
        if (list.isEmpty())
            return null;
        else {
            request.put("NFS",list);
            return list;
        }
    }

    // 获取轨迹 返回TrackList对象
    public List<Track> getTrack(String trackID){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from Track  where trackID='"+trackID+"'order by date asc" ;
        List<Track> list = logDao.findByHqlTrack(hql);
        if (list.isEmpty())
            return null;
        else {
            return list;
        }
    }

    // 获取全部通知 put session
    public boolean getNOT() {
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from Notification as notification order by time desc";
        List<Notification> list = logDao.findByHqlNF(hql);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("NFS", list);
            return true;
        }
    }

    // 根据userid获取业务 put session
    public boolean getBusiness(String userID){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from DriveLog as drivelog where userid='"+userID+"' and status='前往目的地'";
        List<DriveLog> list = logDao.findByHqlDL(hql);
        request.put("myBusiness", list);
        return true;
    }

    // 根据carid获取维修记录 put session
    public boolean getFixLog(String carID) {
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from FixLog as fixLog where carid='"+carID+"'";
        List<FixLog> list = logDao.findByHqlFixLog(hql);
        if (list.isEmpty()){
            System.out.println("没有该车的保养记录\t"+carID);
            return false;
        }
        else {
            request.put("fixlog", list);
            return true;
        }
    }

    // 根据carid获取保养记录 put session
    public boolean getMLog(String carID) {
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from MaintenanceLog where carid='"+carID+"'";
        List<MaintenanceLog> list = logDao.findByHqlML(hql);
        if (list.isEmpty()){
            System.out.println("没有该车的保养记录\t"+carID);
            return false;
        }
        else {
            request.put("Mlog", list);
            return true;
        }
    }

    // 获取全部行车日志 put session
    public boolean getDRIVELOG(){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from DriveLog as drivelog order by id desc";
        List<DriveLog> list = logDao.findByHqlDL(hql);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("myDriveLog", list);
            return true;
        }
    }

    // 根据userid获取全部行车日志 put session
    public boolean getStaffDRIVELOG(String userid){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from DriveLog as drivelog where userid='"+userid+"'";
        List<DriveLog> list = logDao.findByHqlDL(hql);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("myDriveLog", list);
            return true;
        }
    }

    // 获取全部违规记录 put session
    public boolean getVIO(){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from Violation as violation";
        List<Violation> list = logDao.findByHqlVio(hql);
        System.out.println(list.get(0));
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("myViolation", list);
            return true;
        }
    }

    // 根据userid获取违规记录 put session
    public boolean getStaffVIO(String userid){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from Violation as violation where userid='"+userid+"'";
        List<Violation> list = logDao.findByHqlVio(hql);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("myViolation", list);
            return true;
        }
    }

    // 根据出车单号获取行车日志 返回DriveLogList对象
    public DriveLog getDLbyID(String id){
        String hql = "from DriveLog as drivelog where id = '"+id+"'";
        List<DriveLog> list = logDao.findByHqlDL(hql);
        if (!list.isEmpty()){
            return list.get(0);
        }
        else return null;
    }



    public boolean startDriveLog(CarApplication carApplication){
        DriveLog dl = new DriveLog();
        dl.setStatus("前往目的地");
        dl.setApplicationid(carApplication.getId());
        dl.setCarid(carApplication.getCarID());
        dl.setDestination(carApplication.getDestination());
        //出发点固定为公司
        dl.setUserid(carApplication.getUserID());
        dl.setUsername(carApplication.getUserName());
        dl.setSlatitude(30.2251);
        dl.setSlongitude(120.041549);
        dl.setElatitude(carApplication.getLatitude());
        dl.setElongitude(carApplication.getLongitude());
        Date date = new Date ();
        dl.setStarttime(date);

        try {
            System.out.println("log start");
            logDao.saveDL(dl);
            return true;
        }catch (Exception e) {
            return false;
        }

    }



    // 提交通知
    public boolean sendNot(Notification notification) {
        try {
            logDao.saveNot(notification);
            return true;
        }catch (Exception e) {
            return false;
        }
    }

    // 提交状态更新
    public boolean saveStatusChange(StatusLog statusLog){
        try {
            System.out.println("状态变更已记录");
            logDao.saveStatusLog(statusLog);
            return true;
        }catch (Exception e) {
            return false;
        }
    }

    // 出车完毕提交
    public boolean saveDriveLog(DriveLog driveLog){
        DriveLog ODL=logDao.getDL(driveLog);
        ODL.setStatus(driveLog.getStatus());
        ODL.setMileage(driveLog.getMileage());
        ODL.setBroke(driveLog.getBroke());
        ODL.setIllegel(driveLog.getIllegel());
        Date date = new Date ();
        ODL.setEndtime(date);
        try {
            System.out.println("log saved");
            logDao.saveDL(ODL);
            return true;
        }catch (Exception e) {
            return false;
        }

    }

    // 提交维修记录
    public boolean saveFixLog(FixLog fixLog){
        Date date = new Date ();
        fixLog.setTime(date);
        try {
            logDao.saveFixlog(fixLog);
            System.out.println("fixlog saved");
            return true;
        }catch (Exception e) {
            return false;
        }
    }

    // 提交保养记录
    public boolean saveMaintenanceLog(MaintenanceLog maintenanceLog){
        Date date = new Date ();
        maintenanceLog.setTime(date);
        try {
            logDao.saveMaintenanceLog(maintenanceLog);
            System.out.println("maintenanceLog saved");
            return true;
        }catch (Exception e) {
            return false;
        }
    }

    // 提交违规记录
    public boolean saveVio(Violation violation){
        try {
            logDao.saveVio(violation);
            return true;
        }catch (Exception e) {
            return false;
        }
    }

    // 提交轨迹
    public boolean saveTracks(List<Track> tracks){
        return true;
    }

}
