package tpcInterfaces;

public interface TeacherSQLQuery {
    String teacherLoginQuery = "select * from teacher where email=? and password=?";
}
