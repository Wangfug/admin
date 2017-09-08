package sys.login;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import sys.entity.UserInfo;
import sys.utils.Global;
import sys.utils.UserUtil;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by wfg on 2017/8/23.
 */
@Controller
@RequestMapping(value = "")
public class LoginController  {

    @RequestMapping(value = "main")
    public String toIndex() {
           return "reports/main";
    }
    @RequestMapping(value = "login")
    public String login(String username, String password, HttpServletRequest request) {
        if(StringUtils.isEmpty(username)){
            String[] users = Global.getAccount();
            String pwd = Global.getPwd();
            for(String name:users){
                if(name.equals(username)&&pwd.equals(password)){
                    UserInfo user = UserUtil.setUser(request,username);
                    UserUtil.setUser(request,user);
                    return "redirect:/main" ;
                }
            }
            request.setAttribute("msg","密码错误！请联系管理员");
        }else{
            request.setAttribute("msg","请重新登陆");
        }

        return "login";
    }
    @RequestMapping(value = "logout")
    public String logout(String username, String password, HttpServletRequest request) {
        UserUtil.clearUser(request);
        return "login";
    }
}
