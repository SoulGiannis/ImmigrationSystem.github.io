package services;

import ServicesDao.ServicesDao;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

public class scholarship extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            
            {
                try{
                    Connection con = ServicesDao.createConnection();
                    PreparedStatement st = con.prepareStatement("insert into scholarship values(?,?,?,?,?,?,?)");
                    
                    String name = request.getParameter("name");
                    String number = request.getParameter("number");
                    int cgpa = Integer.parseInt(request.getParameter("cgpa"));
                    String account_no = request.getParameter("account_no");
                    String ifsc = request.getParameter("ifsc");
                    String achievement = request.getParameter("achievement");
                    Part part = request.getPart("marksheet");
                    
                    InputStream s = part.getInputStream(); 
                    
                    st.setString(1, name);
                    st.setString(2, number);
                    st.setInt(3, cgpa);
                    st.setBlob(4, s);                    
                    st.setString(5, account_no);
                    st.setString(6, ifsc);
                    st.setString(7, achievement);
                                       
                    
                    
                    st.executeUpdate();
                    request.setAttribute("t_name", "scholarship");
                    RequestDispatcher rd = request.getRequestDispatcher("successful.jsp");
                    rd.forward(request, response);
                    
                }
                catch(Exception e){
                    e.printStackTrace();
                }                
            }
            }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(scholarship.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(scholarship.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(scholarship.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(scholarship.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
