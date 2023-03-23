/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dal.CourseDAO;
import dal.DAO;
import dal.DiscussionDAO;
import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Course;
import model.Discussion;
import model.Enroll;
import model.User;

/**
 *
 * @author admin
 */
@WebServlet(name = "home", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {

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
            out.println("<title>Servlet home</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet home at " + request.getContextPath() + "</h1>");
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
        DAO d = new DAO();
        UserDAO u = new UserDAO();
        DiscussionDAO dao = new DiscussionDAO();
        List<Course> listCourse = d.getAllCourse();
        List<Course> list = d.getAllAdvanceCourse();

        HttpSession session = request.getSession();
        if (session.getAttribute("account") != null) {
            User user = (User) session.getAttribute("account");
            List<Enroll> listenroll = d.listAllEnroll(user.getUser_id());
            request.setAttribute("lister", listenroll);
            for (Course course : listCourse) {
                course.setUser_id(user.getUser_id());
            }
            for (Course course : list) {
                course.setUser_id(user.getUser_id());
            }
            List<Discussion> l = dao.getReplyDiscussionByReply(user.getUser_id());

            request.setAttribute("listD", l);
        }
        List<User> listUser = u.getAllUser();
        request.setAttribute("listUser", listUser);
        request.setAttribute("listC", listCourse);
        request.setAttribute("listA", list);

        if (null == (String) session.getAttribute("language")) {
            request.getRequestDispatcher("/pages/user/public/home.jsp").forward(request, response);
        } else {
            switch ((String) session.getAttribute("language")) {
                case "en":
                    request.getRequestDispatcher("/pages/user/public/home.jsp").forward(request, response);
                    break;
                case "vi":
                    request.getRequestDispatcher("/pages/user/change/home2.jsp").forward(request, response);
                    break;
                default:
                    request.getRequestDispatcher("/pages/user/public/home.jsp").forward(request, response);
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
        String s = request.getParameter("search");
        CourseDAO d = new CourseDAO();
        List<Course> listCourse = d.searchAllCourse(s);
        List<Course> list = d.searchAllAdvanceCourse(s);

        HttpSession session = request.getSession();
        if (session.getAttribute("account") != null) {
            User user = (User) session.getAttribute("account");
            DAO dao = new DAO();
            List<Enroll> listenroll = dao.listAllEnroll(user.getUser_id());
            request.setAttribute("lister", listenroll);
            for (Course course : listCourse) {
                course.setUser_id(user.getUser_id());
            }
            for (Course course : list) {
                course.setUser_id(user.getUser_id());
            }
        }
        request.setAttribute("listC", listCourse);
        request.setAttribute("listA", list);

        request.getRequestDispatcher("/pages/user/public/home.jsp").forward(request, response);
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
