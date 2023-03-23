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
import model.Lesson;

/**
 *
 * @author mylov
 */
public class LessonDAO extends DBContext {

    public static void main(String[] args) {
        LessonDAO ld = new LessonDAO();
        System.out.println(ld.findChapterIdByLessonId(16));
        List<Lesson> l = ld.FindAllLessonByChapterId(1);
        for(int i =0; i<5; i++){
            System.out.println(l.get(i).getLesson_id());
        }
    }
        public List<Lesson> FindAllLessonByChapterId(int chapterId) {

        List<Lesson> list = new ArrayList<>();
        String sql = "SELECT [lesson_id]\n"
                + "      ,[lesson_video]\n"
                + "      ,[lesson_level]\n"
                + "      ,[chapter_id]\n"
                + "      ,[image_id]\n"
                + "      ,[lesson_content]\n"
                + "      ,[lesson_number]\n"

                + "  FROM [SWP-Project].[dbo].[Lesson] where chapter_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, chapterId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Lesson l = new Lesson(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6),
                        rs.getInt(7));
                list.add(l);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public int findChapterIdByLessonId(int lessonId) {
        int chapterId = 0;
        try {
            String sql = "SELECT chapter_id\n"
                    + "  FROM [SWP-Project].[dbo].[Lesson] \n"
                    + "  where lesson_id =?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, lessonId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
               return chapterId = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return chapterId;
    }
    public int findCourseIdByLessonId(int lessonId) {
        int chapterId = 0;
        try {
            String sql = "SELECT course_id\n"
                    + "  FROM [SWP-Project].[dbo].[Lesson] \n"
                    + "  where lesson_id =?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, lessonId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
               return chapterId = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return chapterId;
    }
    public Lesson getLessonByLessonId(int lessonId) {

        String sql = "SELECT [lesson_id]\n"
                + "      ,[lesson_video]\n"
                + "      ,[lesson_level]\n"
                + "      ,[chapter_id]\n"
                + "      ,[image_id]\n"
                + "      ,[lesson_content]\n"
                + "      ,[lesson_number]\n"
                + "  FROM [dbo].[Lesson]\n"
                + "  where lesson_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, lessonId);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Lesson l = new Lesson(lessonId, rs.getString("lesson_video"),
                        rs.getString("lesson_level"), rs.getInt("chapter_id"), rs.getInt("image_id"), rs.getString("lesson_content"),
                        rs.getInt("lesson_number"));
                return l;
            }
            
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }


}
