package tpcInterfaces;

public interface StudentSQLQuery {
    String studentLoginQuery = "select * from student where email=? and password=?";
    String getStudentNameQuery = "select name from student where email=?";
    String getStudentDetails = "select * from studentdetails where email=?";
    String showAppliedCompanies = "select * from companyapplication where email=?";
    String showAllCompanies = "select * from company where (name,job_desc) not in (select comp_name,job_desc from companyapplication where email=?);";
    String applyCompany = "insert into companyapplication values(?,?,?)";

}
