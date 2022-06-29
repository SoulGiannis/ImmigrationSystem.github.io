package services;

import ServicesDao.ServicesDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class status extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            Connection con = ServicesDao.createConnection();
            Statement stmt = con.createStatement();
            String q = "SELECT * FROM visa";
            Statement st = con.prepareCall("q");
            
            ResultSet rs = st.executeQuery("q");
            
            while(rs.next()){
            
                out.print(rs.getString(1));            
                out.print(rs.getString(2));            
                out.print(rs.getString(3));            
                out.print(rs.getInt(4));                  
           
        }
        }
    }


}
