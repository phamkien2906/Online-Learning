/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Admin;

import dal.DAO;
import dal.LessonDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Chapter;
import model.Course;
import model.Lesson;

/**
 *
 * @author admin
 */
@WebServlet(name = "AddNewLesson", urlPatterns = {"/addlesson"})
public class AddNewLesson extends HttpServlet {

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
            out.println("<title>Servlet AddNewLesson</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddNewLesson at " + request.getContextPath() + "</h1>");
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
       request.getRequestDispatcher("AddLesson.jsp").forward(request, response);

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
        String level_raw = request.getParameter("level");
        String chapter_id = request.getParameter("chapterid");
        String lesson_content = request.getParameter("content");
        String lesson_number = request.getParameter("number");
          String cid_number = request.getParameter("cid");
        int id;
        int cid;
        int chapterid;
        int lessonNumber;
        DAO d = new DAO();
        LessonDAO l =new LessonDAO();
        try {
            id = Integer.parseInt(id_raw);
              cid = Integer.parseInt(cid_number);

            chapterid = Integer.parseInt(chapter_id);
            lessonNumber = Integer.parseInt(lesson_number);
            Course c=d.getCourseById(cid);
            Lesson lesson = l.getLessonByLessonId(id);
            int numberCourse=c.getCourse_number_lesson()+1;
            if (lesson == null) {
                Lesson lessonNew = new Lesson(id, level_raw, chapterid, lesson_content, lessonNumber,cid);
                d.insertLesson(lessonNew);
                d.updateCourseNumberLesson(cid, numberCourse);
                response.sendRedirect("coursemanage");
            } else {
                request.setAttribute("ms", "LessonId :" + id + " have existed!!!");
                request.getRequestDispatcher("AddLesson.jsp").forward(request, response);
            }
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
