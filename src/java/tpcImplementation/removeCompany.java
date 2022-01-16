package tpcImplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import tpcDaoImplementations.dbConnectionImplementation;
import tpcInterfaces.AdminSQLQuery;
import tpcPOJOClasses.companyBean;

public class removeCompany {
    public boolean remove(companyBean comp) throws ClassNotFoundException, SQLException {
        boolean status = false;
        Connection conn = null;
        try{
            conn =  dbConnectionImplementation.getConnection();
            PreparedStatement preparedStatement=conn.prepareStatement(AdminSQLQuery.removeCompanyQuery);
            preparedStatement.setString(1, comp.getName());
            preparedStatement.setString(2, comp.getJob_desc());
            preparedStatement.executeUpdate();
            status = true;        
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return status;
    }
}
