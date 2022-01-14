package tpcInterfaces;

public interface AdminSQLQuery {
    String adminLoginQuery = "select * from admin where email=? and password=?";
}
