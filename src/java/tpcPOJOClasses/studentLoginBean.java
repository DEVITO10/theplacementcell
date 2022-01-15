package tpcPOJOClasses;

import java.io.Serializable;

public class studentLoginBean implements Serializable{
    private String studUname = null;
    private String studPwd = null;

    public String getStudUname() {
        return studUname;
    }

    public void setStudUname(String studUname) {
        this.studUname = studUname;
    }

    public String getStudPwd() {
        return studPwd;
    }

    public void setStudPwd(String studPwd) {
        this.studPwd = studPwd;
    }
    
}
