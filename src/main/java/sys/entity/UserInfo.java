package sys.entity;

import java.io.Serializable;

/**
 * Created by Administrator on 2017/8/26.
 */
public class UserInfo implements Serializable {
    private static final long serialVersionUID = -878173031559130647L;
    private String username;
    private String realname;
    private String phone;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
