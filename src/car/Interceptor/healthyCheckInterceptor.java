package car.Interceptor;

import car.po.Admin;
import car.po.User;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

import java.util.Map;

public class healthyCheckInterceptor extends MethodFilterInterceptor {
    @Override
    protected String doIntercept(ActionInvocation invocation) throws Exception {
        ActionContext ctx = invocation.getInvocationContext();
        Map session = ctx.getSession();
        User user = (User) session.get("user");
        Admin admin =(Admin) session.get("admin");
        if(admin!=null){return invocation.invoke();}
        System.out.println("123");
        if(user.getHealthy()==null){
            ctx.put("tip", "您未进行今日的健康申报，请尽快申报！");
            return "index";
        }
        else if (user.getHealthy().equals("有风险")) {
            //有风险成员限制功能访问
            ctx.put("tip", "您未通过今日的健康申报，请及时与领导取得联系上报！");
            return "index";
        }
        else if(!user.getHealthy().equals("正常")){
            //有风险成员限制功能访问
            ctx.put("tip", "今日状态异常，请及时与管理员取得联系！");
            return "index";
        }
        else {
             // 存在的情况下进行后续操作。
            return invocation.invoke();
        }
    }
}


