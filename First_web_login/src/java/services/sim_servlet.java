package services;

import ServicesDao.ServicesDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class sim_servlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            try{
                Connection con = ServicesDao.createConnection();
                
                PreparedStatement st = con.prepareStatement("INSERT INTO sim (name,number,new_number,pincode,area,house_no) " + "VALUES (?,?,?,?,?,?)"); 
                
                String name = request.getParameter("name");
                String number = request.getParameter("number");                
                String new_number = request.getParameter("new_number"); 
                int pincode = Integer.parseInt(request.getParameter("pincode"));
                String area = request.getParameter("area");            
                String house_no = request.getParameter("house_no");           
               
                st.setString(1, name);
                st.setString(2, number);
                st.setString(3, new_number);
                st.setInt(4, pincode);
                st.setString(5, area);
                st.setString(6, house_no);
                
                st.executeUpdate();
                request.setAttribute("t_name", "sim");
                RequestDispatcher rd = request.getRequestDispatcher("successful.jsp");
                rd.forward(request, response);
            }
            catch(Exception e){
                e.printStackTrace();
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
        processRequest(request, response);
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
        processRequest(request, response);
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
