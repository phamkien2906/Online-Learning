/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.auths;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import dal.UserDAO;

/**
 *
 * @author Admin
 */
@WebServlet(name = "SignupServlet", urlPatterns = {"/signup"})
public class SignupServlet extends HttpServlet {

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
            out.println("<title>Servlet SignupServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignupServlet at " + request.getContextPath() + "</h1>");
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
//        request.getRequestDispatcher("/pages/user/auth/signup.jsp").forward(request, response);
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

        String regexUsername = "^[a-zA-Z0-9._-]{8,20}$";
        String regexPassword = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&()–[{}]:;',?/*~$^+=<>]).{8,20}$";
        String user = request.getParameter("suser");
        String pass = request.getParameter("spass");
        String rpass = request.getParameter("re-pass");
        UserDAO dao = new UserDAO();
        if (!pass.equals(rpass)) {
            request.setAttribute("message", "2 password are not the same");
            request.getRequestDispatcher("/pages/user/auth/alogin.jsp").forward(request, response);
        } else if (dao.checkUser(user)) {
            request.setAttribute("message", "This user's name has been used");
            request.getRequestDispatcher("/pages/user/auth/alogin.jsp").forward(request, response);
        } else if (!user.matches(regexUsername)) {
            request.setAttribute("message", "Username consists of alphanumeric characters (a-zA-Z0-9), lowercase, or uppercase.");
            request.getRequestDispatcher("/pages/user/auth/alogin.jsp").forward(request, response);
        } else if (!pass.matches(regexPassword)) {
            request.setAttribute("message", "Password must contain at least 1 uppercase letter, at least 1 number, at least 1 special character and length must be in range (8-20)");
            request.getRequestDispatcher("/pages/user/auth/alogin.jsp").forward(request, response);
        } else {
            dao.addUser(user, pass);
            request.setAttribute("message", "Your account has been created successfully");
            request.getRequestDispatcher("/pages/user/auth/alogin.jsp").forward(request, response);
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
