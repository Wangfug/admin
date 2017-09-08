package sys.utils;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import sys.entity.UserInfo;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2017/8/26.
 */
public class UserUtil {
    /**
     * 获取当前用户session
     *
     * @return session
     */
    public static Session getSession() {
        Session session = SecurityUtils.getSubject().getSession();
        return session;
    }
    /**
     * 获取当前用户
     *
     * @return session
     */
    public static UserInfo getUser(HttpServletRequest request) {
        UserInfo user = (UserInfo)request.getSession().getAttribute("user");
        return user;
    }
    /**
     * 设置当前用户
     *
     * @return session
     */
    public static void setUser(HttpServletRequest request,UserInfo user) {
        request.getSession().setAttribute("user",user);
    }
    /**
     * 设置当前用户
     *
     * @return session
     */
    public static UserInfo setUser(HttpServletRequest request,String username) {
        UserInfo user = new UserInfo();
        user.setUsername(username);
        return user;
    }
    /**
     * 清除当前用户
     *
     * @return session
     */
    public static void clearUser(HttpServletRequest request) {
        request.getSession().setAttribute("user",null);
    }
}
