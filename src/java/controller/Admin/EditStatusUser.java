/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Admin;

import dal.DAOAdmin;
import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

/**
 *
 * @author admin
 */
@WebServlet(name = "EditStatusUser", urlPatterns = {"/editstatus"})
public class EditStatusUser extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditStatusUser</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditStatusUser at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String id_raw = request.getParameter("id");

        int id;
        UserDAO d = new UserDAO();

        try {
            id = Integer.parseInt(id_raw);
            User u = d.checkUserById(id);
            if (u != null) {
                request.setAttribute("user", u);

            }
            request.getRequestDispatcher("UpdateStatusUser.jsp").forward(request, response);

        } catch (NumberFormatException e) {

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
         String id_raw = request.getParameter("id");
        String name = request.getParameter("name");
        String status = request.getParameter("status");
        int id, status_raw;
        UserDAO d = new UserDAO();
        DAOAdmin dao = new DAOAdmin();
        try {
            id = Integer.parseInt(id_raw);
            status_raw = Integer.parseInt(status);
            User u = d.checkUserById(id);
            User uNew = new User(id, u.getUser_name(), u.getUser_mail(), u.getUser_password(), u.getUser_role(), u.getUser_gender(), u.getUser_address(), u.getUser_phone(), u.getUser_avatar(), status_raw);
            dao.updateStatusUser(uNew);
             response.sendRedirect("usermanage");
        } catch (NumberFormatException e) {

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
