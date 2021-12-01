package car.dao;

import car.po.record.Notification;
import car.po.record.StatusLog;

import java.util.List;

public interface LogDao {
    List<Notification> findByHqlNF(String hql);
    void saveNot(Notification notification);
    void saveStatusLog(StatusLog statusLog);
}
