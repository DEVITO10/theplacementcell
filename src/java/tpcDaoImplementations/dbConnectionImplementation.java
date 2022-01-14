package tpcDaoImplementations;

import tpcInterfaces.dbConnectInterface;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbConnectionImplementation {
    private static Connection conn=null;
    private static String url=null;

    private static void prepareURL(){
        url="jdbc:mysql://"+ dbConnectInterface.hostname+"/"+dbConnectInterface.dbname+"?useSSL=false";
    }

    public static Connection getConnection(){
        prepareURL();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection(url,dbConnectInterface.username,dbConnectInterface.password);
        }catch (SQLException e){
            e.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        return conn;
    }
}
