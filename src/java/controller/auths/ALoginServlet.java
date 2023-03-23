/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.auths;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.*;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ALoginServlet", urlPatterns = {"/alogin"})
public class ALoginServlet extends HttpServlet {

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
            out.println("<title>Servlet ALoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ALoginServlet at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        if (null == (String) session.getAttribute("language")) {
            request.getRequestDispatcher("/pages/user/auth/alogin.jsp").forward(request, response);
        } else {
            switch ((String) session.getAttribute("language")) {
                case "en":
                    request.getRequestDispatcher("/pages/user/auth/alogin.jsp").forward(request, response);
                    break;
                case "vi":
                    request.getRequestDispatcher("/pages/user/change/alogin2.jsp").forward(request, response);
                    break;
                default:
                    request.getRequestDispatcher("/pages/user/auth/alogin.jsp").forward(request, response);
                    break;
            }
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
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String rem = request.getParameter("remember");
        Cookie cu = new Cookie("cuser", user);
        Cookie cp = new Cookie("cpass", pass);
        Cookie cr = new Cookie("crem", rem);
        if (rem != null) {
            cu.setMaxAge(60 * 60);//1 tieng
            cp.setMaxAge(60 * 60);
            cr.setMaxAge(60 * 60);
        } else {
            cu.setMaxAge(0);//7 ngay
            cp.setMaxAge(0);
            cr.setMaxAge(0);
        }
        //lu vao browser
        response.addCookie(cu);
        response.addCookie(cp);
        response.addCookie(cr);
        DAO d = new DAO();
        User a = d.check(user, pass);

        HttpSession session = request.getSession();

        if (a == null) {
            //ko tim thay
            String error = "Username or password is incorrect!";
            request.setAttribute("ms", error);
            if (null == (String) session.getAttribute("language")) {
                request.getRequestDispatcher("/pages/user/public/home.jsp").forward(request, response);
            } else {
                switch ((String) session.getAttribute("language")) {
                    case "en":
                        request.getRequestDispatcher("/pages/user/auth/alogin.jsp").forward(request, response);
                        break;
                    case "vi":
                        request.getRequestDispatcher("/pages/user/change/alogin2.jsp").forward(request, response);
                        break;
                    default:
                        request.getRequestDispatcher("/pages/user/auth/alogin.jsp").forward(request, response);
                        break;
                }
            }
        } else if (a.getStatus() == 0) {
            if (null == (String) session.getAttribute("language")) {
                request.getRequestDispatcher("/pages/user/public/home.jsp").forward(request, response);
            } else {
                switch ((String) session.getAttribute("language")) {
                    case "en":
                        request.getRequestDispatcher("/pages/user/auth/alogin.jsp").forward(request, response);
                        break;
                    case "vi":
                        request.getRequestDispatcher("/pages/user/change/alogin2.jsp").forward(request, response);
                        break;
                    default:
                        request.getRequestDispatcher("/pages/user/auth/alogin.jsp").forward(request, response);
                        break;
                }
            }
        } else {
            session.setAttribute("account", a);
//            PrintWriter out = response.getWriter();
//            out.print(a);
            response.sendRedirect("home");
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
