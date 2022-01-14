package tpcPOJOClasses;

import java.io.Serializable;

public class teacherLoginPOJO implements Serializable{
    private String teacherUname = null;
    private String teacherPwd = null;

    public String getTeacherUname() {
        return teacherUname;
    }

    public void setTeacherUname(String teacherUname) {
        this.teacherUname = teacherUname;
    }

    public String getTeacherPwd() {
        return teacherPwd;
    }

    public void setTeacherPwd(String teacherPwd) {
        this.teacherPwd = teacherPwd;
    }
}
