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
import model.Lesson;
import model.ThongTin;
import model.User;

/**
 *
 * @author admin
 */
public class DAOAdmin extends DBContext {

    public int numberOfStudent() {
        String sql = "select count(u.User_Id) from [User] as u where u.user_role = 1";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                return total;
            }

        } catch (Exception e) {

        }
        return 0;
    }

    public int numberOfCourse() {
        String sql = "select count(Course_id) from [Course] ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                return total;
            }

        } catch (Exception e) {

        }
        return 0;
    }

    public int numberOfEnroll() {
        String sql = "select count(Enroll_id) from [Enroll] ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                return total;
            }

        } catch (Exception e) {

        }
        return 0;
    }

    public int CountUserLogin(int count) {

        count += 1;
        return count;
    }

    public List<User> getListUser() {
        List<User> list = new ArrayList();
        try {
            String sql = "SELECT [User_Id]\n"
                    + "      ,[user_name]\n"
                    + "      ,[user_mail]\n"
                    + "      ,[user_password]\n"
                    + "      ,[user_role]\n"
                    + "      ,[user_gender]\n"
                    + "      ,[user_address]\n"
                    + "      ,[user_phone]\n"
                    + "      ,[user_avatar]\n"
                    + "  FROM [dbo].[User]";
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
        } catch (Exception e) {

        }
        return list;
    }

    public List<ThongTin> getInfoCustomer() {

        List<ThongTin> list = new ArrayList<>();
        String sql = "select c.user_gender,c.user_name,c.user_mail,c.user_address,c.user_phone, d.tong from \n"
                + "(select  u.User_Id,u.user_gender,u.user_name,u.user_mail,u.user_address,u.user_phone from \n"
                + "(select e.user_id from Enroll as e  group by e.user_id) as a left join [User] as u on a.user_id=u.User_Id) as c ,\n"
                + "(select e.user_id, count(e.user_id) as tong from Enroll as e  group by e.user_id) as d where c.User_Id=d.user_id";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                ThongTin c = new ThongTin(rs.getString("user_gender"), rs.getString("user_name"), rs.getString("user_mail"), rs.getString("user_address"), rs.getString("user_phone"), rs.getInt("tong"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void updateStatusUser(User u) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [user_name] = ?\n"
                + "      ,[user_mail] = ?\n"
                + "      ,[user_password] = ?\n"
                + "      ,[user_role] = ?\n"
                + "      ,[user_gender] = ?\n"
                + "      ,[user_address] = ?\n"
                + "      ,[user_phone] = ?\n"
                + "      ,[user_avatar] = ?\n"
                + "      ,[user_status] = ?\n"
                + " WHERE User_Id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, u.getUser_name());
            st.setString(2, u.getUser_mail());
            st.setString(3, u.getUser_password());
            st.setInt(4, u.getUser_role());
            st.setInt(5, u.getUser_gender());
            st.setString(6, u.getUser_address());
            st.setString(7, u.getUser_phone());
            st.setString(8, u.getUser_avatar());
            st.setInt(9, u.getStatus());
            st.setInt(10, u.getUser_id());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<ThongTin> searchString(String key) {
        List<ThongTin> list = new ArrayList<>();
        String sql = "select c.user_gender,c.user_name,c.user_mail,c.user_address,c.user_phone, d.tong from \n"
                + "(select  u.User_Id,u.user_gender,u.user_name,u.user_mail,u.user_address,u.user_phone from \n"
                + "(select e.user_id from Enroll as e  group by e.user_id) as a left join [User] as u on a.user_id=u.User_Id) as c ,\n"
                + "(select e.user_id, count(e.user_id) as tong from Enroll as e  group by e.user_id) as d where c.User_Id=d.user_id ";
        if (key != null && !key.equals("")) {
            sql += " and user_name like '%" + key + "%'";
        }

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            //st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                ThongTin u = new ThongTin();
                u.setName(rs.getString("user_name"));
                u.setEmail(rs.getString("user_mail"));
                u.setGender(rs.getString("user_gender"));
                u.setAddress(rs.getString("user_address"));
                u.setPhone(rs.getString("user_phone"));
                u.setTong(rs.getInt("tong"));

                list.add(u);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Chapter> searchChapterByName(String key, Integer index) {
        List<Chapter> list = new ArrayList<>();
        String sql = "SELECT [Chapter_id]\n"
                + "      ,[course_id]\n"
                + "      ,[chapter_name]\n"
                + "  FROM [dbo].[Chapter]\n"
                + "  where 1=1 ";
        if (key != null && !key.equals("")) {
            sql += " and chapter_name like '%" + key + "%'";
        }
        if (index != 0) {
            sql += " and Course_id=" + index;
        }

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            //st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Chapter c = new Chapter();
                c.setChapter_id(rs.getInt("Chapter_id"));
                c.setCourse_id(rs.getInt("course_id"));
                c.setChapter_name(rs.getString("chapter_name"));

                list.add(c);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Course> searchCourse(Integer key1, String key2, Integer price1, Integer price2) {
        List<Course> list = new ArrayList<>();
        String sql = "SELECT [Course_id]\n"
                + "      ,[course_name]\n"
                + "      ,[course_description]\n"
                + "      ,[course_price]\n"
                + "      ,[course_number_lesson]\n"
                + "      ,[course_image]\n"
                + "  FROM [dbo].[Course]\n"
                + "  where 1=1";
        if (key1 != 0) {
            sql += " and Course_id=" + key1;
        }
        if (key2 != null && !key2.equals("")) {
            sql += " and course_name like '%" + key2 + "%'";
        }
        if (price1 != null) {
            sql += " and course_price>=" + price1;
        }
        if (price2 != null) {
            sql += " and course_price<=" + price2;
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            //st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Course c = new Course();
                c.setCourse_id(rs.getInt("Course_id"));
                c.setCourse_name(rs.getString("course_name"));
                c.setCourse_image(rs.getString("course_image"));
                c.setCourse_description(rs.getString("course_description"));
                c.setCourse_number_lesson(rs.getInt("course_number_lesson"));
                c.setCourse_price(rs.getInt("course_price"));
                list.add(c);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Lesson> searchLesson(Integer key1, String key2, Integer hide, String key3, Integer key4) {
        List<Lesson> list = new ArrayList<>();
        String sql = "SELECT [lesson_id]\n"
                + "      ,[lesson_video]\n"
                + "      ,[lesson_level]\n"
                + "      ,[chapter_id]\n"
                + "      ,[image_id]\n"
                + "      ,[lesson_content]\n"
                + "      ,[lesson_number]\n"
                + "  FROM [dbo].[Lesson]\n"
                + "  where 1=1";
        if (hide != 0) {
            sql += " and chapter_id =" + hide;
        }
        if (key1 != 0) {
            sql += " and lesson_id=" + key1;
        }
        if (key2 != null && !key2.equals("")) {
            sql += " and lesson_level like '%" + key2 + "%'";
        }
        if (key3 != null && !key3.equals("")) {
            sql += " and lesson_content like '%" + key3 + "%'";
        }
        if (key4 != 0) {
            sql += " and lesson_number=" + key4;
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);          
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Lesson l = new Lesson();
                l.setLesson_id(rs.getInt("lesson_id"));
                l.setLesson_video(rs.getString("lesson_video"));
                l.setLesson_level(rs.getString("lesson_level"));
                l.setChapter_id(rs.getInt("chapter_id"));
                l.setImage_id(rs.getInt("image_id"));
                l.setLesson_content(rs.getString("lesson_content"));
                l.setLesson_number(rs.getInt("lesson_number"));               
                list.add(l);
            }
        } catch (SQLException e) {
        }
        return list;
    }
//    public int getTotalPage() {
//        String sql = "select count(*) from Product";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {
//                int total = rs.getInt(1);
//                int countPage = 0;
//                countPage = total / 6;
//                if (total % 6 != 0) {
//                    countPage++;
//                }
//                return countPage;
//            }
//
//        } catch (Exception e) {
//        }
//        return 0;
//    }

    public static void main(String[] args) {
        DAOAdmin a = new DAOAdmin();
        List<Lesson> d = a.searchLesson(1, null,1,null, 0);
        System.out.println(d.size());
    }
}
