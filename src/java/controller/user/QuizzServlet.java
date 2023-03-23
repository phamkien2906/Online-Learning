/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dal.QuizDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import model.Question;
import model.Record;

/**
 *
 * @author Admin
 */
@WebServlet(name = "QuizzServlet", urlPatterns = {"/quizz"})
public class QuizzServlet extends HttpServlet {

    List<Question> listQuiz = new ArrayList<>();
    int courseID;

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
            out.println("<title>Servlet QuizzServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet QuizzServlet at " + request.getContextPath() + "</h1>");
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
        QuizDAO quizDAO = new QuizDAO();
        courseID = Integer.parseInt(request.getParameter("courseId"));
        listQuiz = quizDAO.getListQuiz(courseID);
        request.setAttribute("listQuiz", listQuiz);

        request.getRequestDispatcher("pages/user/public/quizz.jsp").forward(request, response);
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
        int count = 0;
        int userID = Integer.parseInt(request.getParameter("userID"));
        String s = "";
        String time = util.DateDetail.getDateDetail();
        for (Question question : listQuiz) {
            s += (question.getQuestionID() + "-");
            if (request.getParameter(question.getQuestionID() + "") == null) {
                count += 0;
                s += "0 ";
            } else if (!request.getParameter(question.getQuestionID() + "").
                    equals(request.getParameter("answer" + question.getQuestionID()))) {
                count += 0;
                s += getChoice(request.getParameter(question.getQuestionID() + ""), question) + " ";
            } else {
                count += 1;
                s += getChoice(request.getParameter(question.getQuestionID() + ""), question) + " ";
            }
        }
//        PrintWriter out = response.getWriter();
//        out.println(count);
//        out.println(s);
//        out.println(time);
//        out.print(userID);
//        out.print(courseID);
         Record reco = new Record(userID, courseID, time, (count+""), s);
         QuizDAO dao = new QuizDAO();
         dao.addRecord(reco);
         response.sendRedirect("course?id="+courseID);
//        request.getRequestDispatcher("record").forward(request, response);
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

    private int getChoice(String parameter, Question question) {
        if (parameter.equals(question.getChoice1())) {
            return 1;
        } else if (parameter.equals(question.getChoice2())) {
            return 2;
        } else if (parameter.equals(question.getChoice3())) {
            return 3;
        } else if (parameter.equals(question.getChoice4())) {
            return 4;
        } else{
            return 5;
        }
    }

}
