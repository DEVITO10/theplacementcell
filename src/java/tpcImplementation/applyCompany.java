package tpcImplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import tpcDaoImplementations.dbConnectionImplementation;
import tpcInterfaces.StudentSQLQuery;
import tpcPOJOClasses.companyBean;

public class applyCompany {
    public boolean apply(companyBean comp, String student) throws ClassNotFoundException, SQLException {
        boolean status = false;
        Connection conn = null;
        try{
            conn =  dbConnectionImplementation.getConnection();
            PreparedStatement preparedStatement=conn.prepareStatement(StudentSQLQuery.applyCompany);
            preparedStatement.setString(1, comp.getName());
            preparedStatement.setString(2, comp.getJob_desc());
            preparedStatement.setString(3, student);
            preparedStatement.executeUpdate();
            status = true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return status;
    }
}
