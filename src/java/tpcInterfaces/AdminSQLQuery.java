package tpcInterfaces;

public interface AdminSQLQuery {
    String adminLoginQuery = "select * from admin where email=? and password=?";
    String getAdminNameQuery = "select name from admin where email=?";
    String getAdminDetails = "select * from admindetails where email=?";
    String showAllStudents = "select * from studentdetails";
    String showAllTeachers = "select * from teacherdetails";
    String showCompanies = "select * from company order by addedat desc";
    String removeCompanyQuery = "delete from company where name=? and job_desc=?";
    String addCompanyQuery = "insert into company values(?,?,?,?,NOW())";
}
