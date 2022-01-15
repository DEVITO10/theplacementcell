package tpcPOJOClasses;

import java.io.Serializable;

public class adminLoginBean implements Serializable{
    private String adminUname = null;
    private String adminPwd = null;

    public String getAdminUname() {
        return adminUname;
    }

    public void setAdminUname(String adminUname) {
        this.adminUname = adminUname;
    }

    public String getAdminPwd() {
        return adminPwd;
    }

    public void setAdminPwd(String adminPwd) {
        this.adminPwd = adminPwd;
    }
}
