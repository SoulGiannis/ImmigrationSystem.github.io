/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package view_form;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class remove_data extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            session.removeAttribute("t_name");
           session.removeAttribute("submit_value");
           
//           accommodation
           session.removeAttribute("name");
           session.removeAttribute("country");
           session.removeAttribute("city");
           session.removeAttribute("number");
           
//           forex
           session.removeAttribute("currency_f"); 
           session.removeAttribute("currency_t"); 
           
           
//           guidance            
            session.removeAttribute("topic"); 
            
//            ielts_general
            session.removeAttribute("email"); 
           
            
//            resume            
            session.removeAttribute("education");
            session.removeAttribute("languages");
            session.removeAttribute("skills");
            session.removeAttribute("hobbies");
            session.removeAttribute("achievements");
            session.removeAttribute("experience");
            
//            sim
            session.removeAttribute("pincode");
            session.removeAttribute("area");
            session.removeAttribute("house_no");
            session.removeAttribute("new_number");
            
            
//            ticketing
            session.removeAttribute("number_of_tickets");
            session.removeAttribute("classs");
            session.removeAttribute("departure");
            session.removeAttribute("destination");
            session.removeAttribute("date");
            
//            visa
            session.removeAttribute("country_applying");
            
            response.sendRedirect("home.jsp");
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
