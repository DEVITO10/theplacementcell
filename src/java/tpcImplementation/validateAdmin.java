package tpcImplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import tpcDaoImplementations.dbConnectionImplementation;
import tpcInterfaces.AdminSQLQuery;
import tpcPOJOClasses.adminLoginPOJO;

public class validateAdmin {
    public boolean validate(adminLoginPOJO login) throws ClassNotFoundException {
        boolean status = false;
        Connection conn = null;
        try{
            conn =  dbConnectionImplementation.getConnection();
            PreparedStatement preparedStatement=conn.prepareStatement(AdminSQLQuery.adminLoginQuery);
            preparedStatement.setString(1, login.getAdminUname());
            preparedStatement.setString(2, login.getAdminPwd());
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
