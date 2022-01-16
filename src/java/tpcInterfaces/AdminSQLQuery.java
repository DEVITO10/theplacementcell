package tpcInterfaces;

public interface AdminSQLQuery {
    String adminLoginQuery = "select * from admin where email=? and password=?";
    String getAdminNameQuery = "select name from admin where email=?";
    String getAdminDetails = "select * from admindetails where email=?";
    String showAllStudents = "select * from student";
    String showAllTeachers = "select * from teacher";
    String showCompanies = "select * from company";
    String removeCompanyQuery = "delete from company where name=? and job_desc=?";
    String addCompanyQuery = "insert into company values(?,?,?,?,?,?)";
}
