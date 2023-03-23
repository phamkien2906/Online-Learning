/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dal.CommentCourseDAO;
import dal.DiscussionDAO;
import model.CommentCourse;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.util.ArrayList;
import java.util.List;
import model.Discussion;
import model.User;

/**
 *
 * @author Admin
 */
//@WebServlet(name="CommentCourseServlet", urlPatterns={"/commentc"})
public class CommentCourseServlet extends HttpServlet {

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
            out.println("<title>Servlet CommentCourseServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CommentCourseServlet at " + request.getContextPath() + "</h1>");
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
            int likenum = Integer.parseInt(request.getParameter("like"));
            CommentCourseDAO dao = new CommentCourseDAO();
            dao.rateCommentCourse(likenum);
            response.sendRedirect("course?id=1");
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
//        Part filePart = request.getPart("upFile");
//        String image;
//        if (filePart == null) {
//            image = "";
//        } else {
//            String fileName = filePart.getSubmittedFileName();
//            for (Part part : request.getParts()) {
//                part.write("E:\\PRJ301\\Online-Learning\\web\\upload\\" + fileName);
//            }
//            image = fileName;
//        }
        if (request.getParameter("commentcourse") != null) {
            String comment = request.getParameter("commentcourse");
            int id = Integer.parseInt(request.getParameter("id"));
            HttpSession session = request.getSession();
            User u = (User) session.getAttribute("account");
            CommentCourse c = new CommentCourse(u,id,comment);
            CommentCourseDAO dao = new CommentCourseDAO();
            dao.addCommentCourse(c);
            String s = "course?id="+id+"";
            response.sendRedirect(s);
        } else if (request.getParameter("replycomment") != null) {
            String reply = request.getParameter("replycomment");
            int id = Integer.parseInt(request.getParameter("id"));
            HttpSession session = request.getSession();
            User u = (User) session.getAttribute("account");
            CommentCourse d = new CommentCourse(u, id,reply);
            int replyof = Integer.parseInt(request.getParameter("reply"));
            CommentCourseDAO dao = new CommentCourseDAO();
            dao.addCommentCourse2(d, replyof);
            String s = "course?id="+id+"";
            response.sendRedirect(s);
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
