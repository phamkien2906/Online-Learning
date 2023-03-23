/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Admin;

import dal.DAOAdmin;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Chapter;
import model.Lesson;

/**
 *
 * @author admin
 */
@WebServlet(name = "SearchLesson", urlPatterns = {"/searchlesson"})
public class SearchLesson extends HttpServlet {

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
            out.println("<title>Servlet SearchLesson</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchLesson at " + request.getContextPath() + "</h1>");
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
        PrintWriter out = response.getWriter();
        String lid_raw = request.getParameter("lessonid");
        String level = request.getParameter("level");
        String content = request.getParameter("content");
        String number_lesson = request.getParameter("lessonnumber");
        String chapter_id = request.getParameter("chapterid");
//        out.println(lid_raw);
//        out.println(level);
//        out.println(content);
//        out.println(number_lesson);
//        out.println(chapter_id);

        Integer lessionID = 0;
        Integer LessonNumber = 0;
        Integer chapterid = Integer.parseInt(chapter_id);
        DAOAdmin d = new DAOAdmin();
        if (lid_raw.length() == 0) {
            lessionID = 0;
        }
        if (lid_raw.length() > 0) {
            lessionID = Integer.parseInt(lid_raw);
        }
        if (number_lesson.length() == 0) {
            LessonNumber = 0;
        }
        if (number_lesson.length() > 0) {
            LessonNumber = Integer.parseInt(number_lesson);
        }
//        if (level == null || level.equals("") || level.length() == 0) {
//           level = null;
//        }
//        if (content == null || content.equals("") || content.length() == 0) {
//            content = null;
//        }
        List<Lesson> list = d.searchLesson(lessionID, level, chapterid, content, LessonNumber);
        request.setAttribute("listL", list);
        request.getRequestDispatcher("LessonManage.jsp").forward(request, response);
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
