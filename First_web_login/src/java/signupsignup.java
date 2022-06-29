import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import db.LoginDao;


public class signupsignup extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
        try{
            Connection con = LoginDao.createConnection();
            PreparedStatement st = con.prepareStatement("INSERT INTO login (username, password) " + "VALUES (?, ?)");                  
                 
            String uname = request.getParameter("uname");
            String pass = request.getParameter("pass");
            String cpass = request.getParameter("confirm_pass");        
            
            
            st.setString(1,uname);
            st.setString(2,pass);
            st.executeUpdate();
            response.sendRedirect("login.jsp");
        }
        catch(Exception e){
            e.printStackTrace();
        }
                 
        
                     
         
         
        }
    }
}