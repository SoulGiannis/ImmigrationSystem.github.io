
package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class LoginDao {
  
    String sql = "SELECT * FROM login WHERE username=? and password=?";
    public boolean checkdetails(String uname, String pass) throws ClassNotFoundException, SQLException{
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/services","root","");
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1,uname);
        pstmt.setString(2,pass);
        ResultSet rs = pstmt.executeQuery();
        if(rs.next())
        {
            return true;
        }
        return false;
    }
    
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
