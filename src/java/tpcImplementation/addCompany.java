package tpcImplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import tpcDaoImplementations.dbConnectionImplementation;
import tpcInterfaces.AdminSQLQuery;
import tpcPOJOClasses.companyBean;

public class addCompany {
    public boolean add(companyBean comp) throws ClassNotFoundException, SQLException {
        boolean status = false;
        Connection conn = null;
        try{
            conn =  dbConnectionImplementation.getConnection();
            PreparedStatement preparedStatement=conn.prepareStatement(AdminSQLQuery.addCompanyQuery);
            preparedStatement.setString(1, comp.getName());
            preparedStatement.setString(2, comp.getJob_desc());
            preparedStatement.setString(3, comp.getLogo_link());
            preparedStatement.setString(4, comp.getC_package());
            preparedStatement.setString(5, comp.getBranch());
            preparedStatement.executeUpdate();
            status = true;        
            System.out.println("added");
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return status;
    }
}
