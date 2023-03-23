/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Course;

/**
 *
 * @author Admin
 */
public class CourseDAO extends DBContext {

    public List<Course> searchAllCourse(String s) {

        List<Course> list = new ArrayList<>();
        String sql = " select * from Course where course_name like '%" + s + "%' and course_price =0 "
                + "or course_description Like N'%" + s + "%' "
                + "and course_price =0";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Course c = new Course(rs.getInt("Course_id"), rs.getString("Course_name"), rs.getString("course_description"), rs.getInt("course_price"), rs.getInt("course_number_lesson"), rs.getString("course_image"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Course> searchAllAdvanceCourse(String s) {

        List<Course> list = new ArrayList<>();
        String sql = " select * from Course where course_name like '%" + s + "%' and course_price >0 "
                + "or course_description Like N'%" + s + "%' "
                + "and course_price >0";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Course c = new Course(rs.getInt("Course_id"), rs.getString("Course_name"), rs.getString("course_description"), rs.getInt("course_price"), rs.getInt("course_number_lesson"), rs.getString("course_image"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public static void main(String[] args) {
        CourseDAO dao = new CourseDAO();
        System.out.println(dao.searchAllCourse("viết").size());
    }
}
