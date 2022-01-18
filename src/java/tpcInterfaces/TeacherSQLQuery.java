package tpcInterfaces;

public interface TeacherSQLQuery {
    String teacherLoginQuery = "select * from teacher where email=? and password=?";
    String getTeacherNameQuery = "select name from teacher where email=?";
    String getTeacherDetails = "select * from teacherdetails where email=?";
    String showAllStudents = "select * from studentdetails";
}
