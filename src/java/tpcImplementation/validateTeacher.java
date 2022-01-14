package tpcImplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import tpcDaoImplementations.dbConnectionImplementation;
import tpcInterfaces.TeacherSQLQuery;
import tpcPOJOClasses.teacherLoginPOJO;

public class validateTeacher {
    public boolean validate(teacherLoginPOJO login) throws ClassNotFoundException {
        boolean status = false;
        Connection conn = null;
        try{
            conn =  dbConnectionImplementation.getConnection();
            PreparedStatement preparedStatement=conn.prepareStatement(TeacherSQLQuery.teacherLoginQuery);
            System.out.println(login.getTeacherUname());
            preparedStatement.setString(1, login.getTeacherUname());
            preparedStatement.setString(2, login.getTeacherPwd());
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();        
        }
        catch (SQLException e) {
            printSQLException(e);
        }
        System.out.println("status"+status);
        return status;    
    }

    private void printSQLException(SQLException e) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
