package tpcPOJOClasses;

import java.sql.Date;

public class companyBean {
    String name = null;
    String c_package = null;
    String branch = null;
    String job_desc = null;
    String last_date = null;

    public String getLast_date() {
        return last_date;
    }

    public void setLast_date(String last_date) {
        this.last_date = last_date;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getC_package() {
        return c_package;
    }

    public void setC_package(String c_package) {
        this.c_package = c_package;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public void setJob_desc(String job_desc) {
        this.job_desc = job_desc;
    }

    public String getJob_desc() {
        return job_desc;
    }
}
