package view_form;

import ServicesDao.ServicesDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class viewticketing extends HttpServlet {

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
                    try{                 
                HttpSession session = request.getSession();
                Connection con = ServicesDao.createConnection();
                Statement st = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                String t_name = (String) session.getAttribute("t_name");        
                
                String q = "select * from "+t_name;
                ResultSet rs = st.executeQuery(q);
                
                ResultSetMetaData rsmd = rs.getMetaData();                
                int column_count = rsmd.getColumnCount();                
                
                rs.last();
                String name = rs.getString(1);
                String number = rs.getString(2);
                String number_of_tickets = rs.getString(3);                 
                String classs = rs.getString(4);                 
                String departure = rs.getString(5);                 
                String destination = rs.getString(6);                 
                String date = rs.getString(7);                 
                 
                session.setAttribute("name",name);
                session.setAttribute("number",number);
                session.setAttribute("number_of_tickets",number_of_tickets);                
                session.setAttribute("classs",classs);                
                session.setAttribute("departure",departure);                
                session.setAttribute("destination",destination);                
                session.setAttribute("date",date); 
                
                session.setAttribute("submit_value","Update");
                
                RequestDispatcher rd = request.getRequestDispatcher(t_name+".jsp");
                rd.forward(request,response);
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
