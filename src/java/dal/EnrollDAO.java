/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.*;

/**
 *
 * @author Admin
 */
public class EnrollDAO extends DBContext {

    public void Enroll(Enroll e) {
        String sql = "INSERT INTO [dbo].[Enroll]\n"
                + "           ([user_id]\n"
                + "           ,[course_id]\n"
                + "           ,[start_date])\n"
                + "     VALUES\n"
                + "           (?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, e.getUser_id());
            st.setInt(2, e.getCourse_id());
            long millis = System.currentTimeMillis();
            Date date = new Date(millis);
            st.setDate(3, date);
            st.executeUpdate();
        } catch (SQLException a) {
            System.out.println(a);
        }
    }

    public int getNumberUser(int courseID) {
        String sql = "Select count(*) from Enroll where course_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, courseID);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public void updatePayment(int u, int c, String content, float price) {
        String sql = "INSERT INTO [dbo].[Payment]\n"
                + "           ([user_id]\n"
                + "           ,[course_id]\n"
                + "           ,[payment_icome]\n"
                + "           ,[payment_content]"
                + "           ,[payment_time])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, u);
            st.setInt(2, c);
            st.setFloat(3, price);
            st.setString(4, content);
            long millis = System.currentTimeMillis();
            Date date = new Date(millis);
            st.setDate(5, date);
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public float getRate(int course) {
        List<Integer> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "  FROM [SWP-Project].[dbo].[Enroll]\n"
                + "  where course_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, course);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(rs.getInt(6));
            }
            int sum = 0;
            for (Integer integer : list) {
                sum += integer;
            }
            return (float) sum / (list.size());
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public int getNumberOfRate(int course) {
        String sql = "SELECT COUNT([rate]) FROM [Enroll] where course_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, course);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public void updateRateStar(int rate, int user, int course) {
        String sql = "UPDATE Enroll\n"
                + "SET rate =?\n"
                + "WHERE user_id=? and course_id=?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, rate);
            st.setInt(2, user);
            st.setInt(3, course);
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public static void main(String[] args) {
        EnrollDAO dao = new EnrollDAO();
//        dao.Enroll(new Enroll(1, 1));
//            long millis = System.currentTimeMillis();
//            Date date = new Date(millis);
//        System.out.println(dao.getNumberOfRate(1));
        dao.updateRateStar(5, 2,1 );
    }
}
