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
import model.Chapter;
import model.Course;
import model.Enroll;
import model.Lesson;
import model.User;

/**
 *
 * @author admin
 */
public class DAO extends DBContext {

    public User check(String username, String password) {
        String sql = "SELECT TOP (1000) [User_Id]\n"
                + "      ,[user_name]\n"
                + "      ,[user_mail]\n"
                + "      ,[user_password]\n"
                + "      ,[user_role]\n"
                + "      ,[user_gender]\n"
                + "      ,[user_address]\n"
                + "      ,[user_phone]\n"
                + "      ,[user_avatar]\n"
                + "      ,[user_status]\n"
                + "  FROM [SWP-Project].[dbo].[User]\n"
                + "  where [user_name] =? and user_password =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User u = new User(rs.getInt("User_Id"), username, password,
                        rs.getString("user_mail"), rs.getInt("user_role"),
                        rs.getInt("user_gender"), rs.getString("user_address"),
                        rs.getString("user_phone"), rs.getString("user_avatar"),rs.getInt("user_status"));
                return u;
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public void change(User a) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET \n"
                + "      [user_password] = ?\n"
                + "      \n"
                + " WHERE user_name=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getUser_password());
            st.setString(2, a.getUser_name());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateCourseNumberLesson(int cid, int number) {
        String sql = "UPDATE [dbo].[Course]\n"
                + "   SET\n"
                + "   \n"
                + "      [course_number_lesson] = ?\n"
                + "      \n"
                + " WHERE  Course_id =?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setInt(1, number);
            st.setInt(2, cid);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Lesson getLessonById(int id) {

        String sql = "SELECT [lesson_id]\n"
                + "      ,[lesson_video]\n"
                + "      ,[lesson_level]\n"
                + "      ,[chapter_id]\n"
                + "      ,[image_id]\n"
                + "      ,[lesson_content]\n"
                + "      ,[lesson_number]\n"
                + "      ,[course_id]\n"
                + "  FROM [dbo].[Lesson]\n"
                + "  where lesson_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Lesson l = new Lesson(id, rs.getString("lesson_video"), rs.getString("lesson_level"), rs.getInt("chapter_id"), rs.getInt("image_id"), rs.getString("lesson_content"), rs.getInt("lesson_number"), rs.getInt("course_id"));
                return l;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Course> getAllCourse() {

        List<Course> list = new ArrayList<>();
        String sql = "SELECT TOP (1000) [Course_id]\n"
                + "      ,[course_name]\n"
                + "      ,[course_description]\n"
                + "      ,[course_price]\n"
                + "      ,[course_number_lesson]\n"
                + "      ,[course_image]\n"
                + "  FROM [SWP-Project].[dbo].[Course]\n"
                + "  where course_price =0";
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

    public List<Course> getAllCourse1() {

        List<Course> list = new ArrayList<>();
        String sql = "SELECT TOP (1000) [Course_id]\n"
                + "      ,[course_name]\n"
                + "      ,[course_description]\n"
                + "      ,[course_price]\n"
                + "      ,[course_number_lesson]\n"
                + "      ,[course_image]\n"
                + "  FROM [SWP-Project].[dbo].[Course]\n";
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

    public List<Course> getAllAdvanceCourse() {

        List<Course> list = new ArrayList<>();
        String sql = "SELECT TOP (1000) [Course_id]\n"
                + "      ,[course_name]\n"
                + "      ,[course_description]\n"
                + "      ,[course_price]\n"
                + "      ,[course_number_lesson]\n"
                + "      ,[course_image]\n"
                + "  FROM [SWP-Project].[dbo].[Course]\n"
                + "  where course_price >0";
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

    public List<Chapter> getChapterByCourseID(int courseId) {

        List<Chapter> list = new ArrayList<>();
        String sql = "SELECT [Chapter_id]\n"
                + "      ,[course_id]\n"
                + "      ,[chapter_name]\n"
                + "  FROM [dbo].[Chapter]\n"
                + "  where course_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, courseId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Chapter c = new Chapter(rs.getInt("Chapter_id"), courseId, rs.getString("chapter_name"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Course getCourseById(int id) {

        String sql = "SELECT [Course_id]\n"
                + "      ,[course_name]\n"
                + "      ,[course_description]\n"
                + "      ,[course_price]\n"
                + "      ,[course_number_lesson]\n"
                + "      ,[course_image]\n"
                + "  FROM [dbo].[Course]\n"
                + "  where Course_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Course c = new Course(rs.getInt("Course_id"), rs.getString("course_name"), rs.getString("course_description"), rs.getFloat("course_price"), rs.getInt("course_number_lesson"), rs.getString("course_image"));
                return c;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public String getDetailByLessonId(int id) {

        String sql = "SELECT lesson_content\n"
                + "  FROM [SWP-Project].[dbo].[Lesson] where lesson_id =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                String c = rs.getString(1);
                return c;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Lesson> listLesson1(int course_id) {

        List<Lesson> list = new ArrayList<>();
        String sql = "SELECT [lesson_id]\n"
                + "      ,[lesson_video]\n"
                + "      ,[lesson_level]\n"
                + "      ,[chapter_id]\n"
                + "      ,[image_id]\n"
                + "      ,[lesson_content]\n"
                + "      ,[lesson_number]\n"
                + "  FROM [SWP-Project].[dbo].[Lesson] where course_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, course_id);
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

    public int countCommentCourse(int id) {
        int num = 0;
        String sql = "SELECT COUNT([comment_id])\n"
                + "  FROM [CommentCourse]\n"
                + "  WHERE [course_id]=?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                num = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return num;
    }

    public List<Enroll> listAllEnroll(int id) {
        List<Enroll> list = new ArrayList<>();
        String sql = "SELECT TOP (1000) [Enroll_id]\n"
                + "      ,[user_id]\n"
                + "      ,[course_id]\n"
                + "      ,[start_date]\n"
                + "      ,[end_date]\n"
                + "      ,[rate]\n"
                + "  FROM [SWP-Project].[dbo].[Enroll]\n"
                + "  where [user_id]=?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Enroll e = new Enroll(rs.getInt("Enroll_id"), rs.getInt("user_id"),
                        rs.getInt("course_id"), rs.getString("start_date"),
                        rs.getString("end_date"),
                        rs.getInt("rate"));
                list.add(e);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Chapter getChapterByChapterId(int chapterId) {

        String sql = "SELECT [Chapter_id]\n"
                + "      ,[course_id]\n"
                + "      ,[chapter_name]\n"
                + "  FROM [dbo].[Chapter]\n"
                + "  where Chapter_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, chapterId);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Chapter c = new Chapter(chapterId, rs.getInt("course_id"), rs.getString("chapter_name"));
                return c;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void updateChapter(Chapter c) {
        String sql = "UPDATE [dbo].[Chapter]\n"
                + "   SET   [course_id] = ?\n"
                + "      ,[chapter_name] = ?\n"
                + " WHERE Chapter_id=?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setInt(1, c.getCourse_id());
            st.setString(2, c.getChapter_name());
            st.setInt(3, c.getChapter_id());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insertChapter(Chapter c) {
        String sql = "INSERT INTO [dbo].[Chapter]\n"
                + "           ([Chapter_id]\n"
                + "           ,[course_id]\n"
                + "           ,[chapter_name])\n"
                + "     VALUES\n"
                + "           (?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, c.getChapter_id());
            st.setInt(2, c.getCourse_id());
            st.setString(3, c.getChapter_name());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insertLesson(Lesson l) {
        String sql = "INSERT INTO [dbo].[Lesson]\n"
                + "           ([lesson_id]           \n"
                + "           ,[lesson_level]\n"
                + "           ,[chapter_id]           \n"
                + "           ,[lesson_content]\n"
                + "           ,[lesson_number]\n"
                + "           ,[course_id]\n"
                + "           )\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, l.getLesson_id());
            st.setString(2, l.getLesson_level());
            st.setInt(3, l.getChapter_id());
            st.setString(4, l.getLesson_content());
            st.setInt(5, l.getLesson_number());
            st.setInt(6, l.getCourse_id());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteChapterByID(int id) {
        String sql = "DELETE FROM [dbo].[Chapter]\n"
                + "      WHERE Chapter_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteLessonByID(int id) {
        String sql = "DELETE FROM [dbo].[Lesson]\n"
                + "      WHERE lesson_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateLesson(Lesson l) {
        String sql = "UPDATE [dbo].[Lesson]\n"
                + "   SET \n"
                + "      [lesson_level] = ?\n"
                + "      ,[chapter_id] = ?\n"
                + "      ,[lesson_content] = ?\n"
                + "      ,[lesson_number] =?\n"
                + " WHERE lesson_id =?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, l.getLesson_level());
            st.setInt(2, l.getChapter_id());
            st.setString(3, l.getLesson_content());
            st.setInt(4, l.getLesson_number());
            st.setInt(5, l.getLesson_id());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Course> getCourseInProfile(int id) {

        List<Course> list = new ArrayList<>();
        String sql = "Select * from [Enroll] as en join [Course] as co\n"
                + "on en.course_id = co.Course_id\n"
                + "where en.user_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
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
        DAO d = new DAO();

        System.out.println(d.check("kienpt", "123"));
    }

}
