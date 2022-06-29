package ServicesDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
//this is for connectiog to db of services all 8 modules of services
public class ServicesDao {
       public static Connection createConnection()throws SQLException, ClassNotFoundException 
    { 
        // Initialize all the information regarding 
        // Database Connection 
        String dbDriver = "com.mysql.jdbc.Driver"; 
        String dbURL = "jdbc:mysql:// localhost:3306/"; 
        // Database name to access 
        String dbName = "services"; 
        String dbUsername = "root"; 
        String dbPassword = ""; 
  
        Class.forName(dbDriver); 
        Connection con = DriverManager.getConnection(dbURL + dbName,dbUsername,dbPassword); 
        return con; 
    } 
}
