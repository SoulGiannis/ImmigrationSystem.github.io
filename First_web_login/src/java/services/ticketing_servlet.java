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

public class ticketing_servlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            try{
                   
                String name = request.getParameter("name");
                String number = request.getParameter("number");
                int number_of_tickets = Integer.parseInt(request.getParameter("number_of_tickets"));
                String class_ = request.getParameter("class");            
                String departure = request.getParameter("departure");            
                String destination = request.getParameter("destination");            
                String date = request.getParameter("date");            


                Connection con = ServicesDao.createConnection();
                PreparedStatement st = con.prepareStatement("insert into ticketing(name, number, number_of_ticket, class, departure, destination, date) values(?, ?, ?, ?, ?, ?, ?)");             

                st.setString(1, name);
                st.setString(2, number);
                st.setInt(3, number_of_tickets);
                st.setString(4, class_);
                st.setString(5, departure);
                st.setString(6, destination);
                st.setString(7, date);
                st.executeUpdate();
                request.setAttribute("t_name", "ticketing");
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
