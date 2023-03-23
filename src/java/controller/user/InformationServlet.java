/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.sql.Date;
import java.time.LocalDateTime;
import model.User;
import util.Validate;

/**
 *
 * @author Admin
 */
@WebServlet(name = "InformationServlet", urlPatterns = {"/information"})

public class InformationServlet extends HttpServlet {

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
            out.println("<title>Servlet InformationServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InformationServlet at " + request.getContextPath() + "</h1>");
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
        User u = (User) session.getAttribute("account");
        UserDAO dao = new UserDAO();
        User infor = dao.getInformationUser(u.getUser_id());
        request.setAttribute("avatar", infor.getUser_avatar());
        request.setAttribute("name", infor.getUser_fullname());
        request.setAttribute("dob", infor.getUser_birthday());
        request.setAttribute("phone", infor.getUser_phone());
        request.setAttribute("country", infor.getUser_country());
        request.setAttribute("address", infor.getUser_address());
        request.setAttribute("face", infor.getUser_facebook());
        request.setAttribute("link", infor.getUser_linkedln());
        request.setAttribute("twit", infor.getUser_twitter());
        request.setAttribute("summary", infor.getUser_summary());
        request.setAttribute("archie", infor.getUser_achievement());

        request.getRequestDispatcher("/pages/user/public/information.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("account");
        UserDAO dao = new UserDAO();
        User infor = dao.getInformationUser(u.getUser_id());
        request.setAttribute("avatar", infor.getUser_avatar());
        request.setAttribute("name", infor.getUser_fullname());
        request.setAttribute("dob", infor.getUser_birthday());
        request.setAttribute("phone", infor.getUser_phone());
        request.setAttribute("country", infor.getUser_country());
        request.setAttribute("address", infor.getUser_address());
        request.setAttribute("face", infor.getUser_facebook());
        request.setAttribute("link", infor.getUser_linkedln());
        request.setAttribute("twit", infor.getUser_twitter());
        request.setAttribute("summary", infor.getUser_summary());
        request.setAttribute("archie", infor.getUser_achievement());
        String regexFullName = "^[A-Z][a-zA-Z]{2,}(?: [A-Z][a-zA-Z]*){1,}$";
//        String regexDOB = "";
//        String regexPhone = "^0\\d{8,}$";
        String regexPhone = "^(0)(3[2-9]|5[6|8|9]|7[0|6-9]|8[0-6|8|9]|9[0-4|6-9])[0-9]{1,}$";
        String regexAddress = "^[a-zA-Z0-9 +]*$";
        String date = request.getParameter("date");
//        HttpSession session = request.getSession();
//        User u = (User) session.getAttribute("account");
        int id = u.getUser_id();
//        UserDAO dao = new UserDAO();
//        dao.updateName(request.getParameter("FamilyName"), id);
        if (date !=null && Validate.getDate(date)== true) {
            dao.updateBirthday(date, id);
        }else{
            String messageDateError = "Date is invalid.";
            request.setAttribute("messageDateError", messageDateError);
        }
        if(!request.getParameter("FamilyName").matches(regexFullName)){
            String messageNameError = "Name is invalid.";
            request.setAttribute("messageNameError", messageNameError);
        }else{
            dao.updateName(request.getParameter("FamilyName"), id);
        }
        if(!request.getParameter("PhoneNumber").matches(regexPhone)){
            String messagePhoneError = "Phone number is invalid.";
            request.setAttribute("messagePhoneError", messagePhoneError);
        }else{
            dao.updatePhone(request.getParameter("PhoneNumber"), id);
        }
        if(!request.getParameter("CityName").matches(regexAddress)){
            String messageAddress = "Address is invalid.";
            request.setAttribute("messageAddress", messageAddress);
        }else{
            dao.updateAddress(request.getParameter("CityName"), id);
        }

//        dao.updateName(request.getParameter("FamilyName"), id);
//        dao.updatePhone(request.getParameter("PhoneNumber"), id);
        dao.updateCountry(request.getParameter("CountrySelect"), id);
//        dao.updateAddress(request.getParameter("CityName"), id);
        dao.updateFacebook(request.getParameter("Facebook"), id);
        dao.updateLinkedln(request.getParameter("LinkedIn"), id);
        dao.updateTwitter(request.getParameter("Twitter"), id);
        dao.updateSummary(request.getParameter("Summary"), id);
        dao.updateAchievement(request.getParameter("Achievement"), id);
//        response.sendRedirect("information");
        request.getRequestDispatcher("/pages/user/public/information.jsp").forward(request, response);
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
