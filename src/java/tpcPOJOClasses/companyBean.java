package tpcPOJOClasses;

public class companyBean {
    String name = null;
    String logo_link = null;
    String c_package = null;
    String branch = null;
    String job_desc = null;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLogo_link() {
        return logo_link;
    }

    public void setLogo_link(String logo_link) {
        this.logo_link = logo_link;
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
