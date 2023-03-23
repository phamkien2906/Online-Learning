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
import model.Course;

/**
 *
 * @author admin
 */
@WebServlet(name = "SearchCourse", urlPatterns = {"/searchcourse"})
public class SearchCourse extends HttpServlet {

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
            out.println("<title>Servlet SearchCourse</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchCourse at " + request.getContextPath() + "</h1>");
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
        String cid_raw = request.getParameter("cid");
        String cname = request.getParameter("name");
        String f_price = request.getParameter("fprice");
        String t_price = request.getParameter("tprice");
        Integer cid=0, fprice=0, tprice=0;

        DAOAdmin d = new DAOAdmin();
        if (cid_raw.length() == 0) {
            cid = 0;
        }
        if (cid_raw.length() > 0) {
            cid = Integer.parseInt(cid_raw);
        }
        if (f_price == null || f_price.equals("") || f_price.length() == 0) {
            fprice = null;
        }
        if (f_price.length() > 0) {
            fprice = Integer.parseInt(f_price);
        }
        if (t_price == null || t_price.equals("") || t_price.length() == 0) {
            tprice = null;
        }
        if (t_price.length() > 0) {
            tprice = Integer.parseInt(t_price);
        }

//        cid = (cid_raw == null) ? 0 : Integer.parseInt(cid_raw);
//
//        fprice = ((f_price == null) || (f_price.equals("")))
//                ? null : Integer.parseInt(f_price);
//        tprice = ((t_price == null) || (t_price.equals("")))
//                ? null : Integer.parseInt(t_price);
        List<Course> listC = d.searchCourse(cid, cname, fprice, tprice);
        request.setAttribute("listC", listC);

        request.getRequestDispatcher("CourseManage.jsp").forward(request, response);
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
