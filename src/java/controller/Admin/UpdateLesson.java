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
import model.Lesson;

/**
 *
 * @author admin
 */
@WebServlet(name="UpdateLesson", urlPatterns={"/updatelesson"})
public class UpdateLesson extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateLesson</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateLesson at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String id_raw=request.getParameter("id");
        int id;
        LessonDAO l=new LessonDAO();
        
        try{
            id=Integer.parseInt(id_raw);
            Lesson lesson=l.getLessonByLessonId(id);
            request.setAttribute("lesson", lesson);
            request.getRequestDispatcher("UpdateLesson.jsp").forward(request, response);
        }catch(NumberFormatException e){
            
        }
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       String id_raw=request.getParameter("id");
       String level=request.getParameter("level");
       String id_chapter=request.getParameter("chapterid");
       String content=request.getParameter("content");
       String number_raw=request.getParameter("number");
       int id;
       int chapterid;
       int numberlesson;
       try{
           id=Integer.parseInt(id_raw);
           chapterid=Integer.parseInt(id_chapter);
           numberlesson=Integer.parseInt(number_raw);
           Lesson lesson= new Lesson(id,level,chapterid,content,numberlesson);
           DAO d=new DAO();
           d.updateLesson(lesson);
            response.sendRedirect("coursemanage");
       }catch(NumberFormatException e){
           
           }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
