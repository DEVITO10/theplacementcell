package tpcInterfaces;

public interface StudentSQLQuery {
    String studentLoginQuery = "select * from student where email=? and password=?";
    String getStudentNameQuery = "select name from student where email=?";
    String getStudentDetails = "select * from studentdetails where email=?";
}
