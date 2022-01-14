package tpcImplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import tpcPOJOClasses.studentLoginPOJO;
import tpcInterfaces.StudentSQLQuery;
import tpcDaoImplementations.dbConnectionImplementation;

public class validateStudent {
    public boolean validate(studentLoginPOJO login) throws ClassNotFoundException {
        boolean status = false;
        Connection conn = null;
        try{
            conn =  dbConnectionImplementation.getConnection();
            PreparedStatement preparedStatement=conn.prepareStatement(StudentSQLQuery.studentLoginQuery);
            preparedStatement.setString(1, login.getStudUname());
            preparedStatement.setString(2, login.getStudPwd());
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();        
        }
        catch (SQLException e) {
            printSQLException(e);
        }
        return status;    
    }

    private void printSQLException(SQLException e) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
