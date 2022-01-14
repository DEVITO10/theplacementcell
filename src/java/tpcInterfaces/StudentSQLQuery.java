package tpcInterfaces;

public interface StudentSQLQuery {
    String studentLoginQuery = "select * from student where email=? and password=?";
}
