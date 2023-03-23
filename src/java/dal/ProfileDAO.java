/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class ProfileDAO extends DBContext {

    public  int getNumberofDiscussion(int id) {
        String sql = "SELECT COUNT([discussion_Id])\n"
                + "  FROM [Discussion]\n"
                + "  WHERE [user_id]=? and [discussion_reply]=0;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if(rs.next()) return rs.getInt(1);
        } catch (SQLException e) {
        }
        return 0;
    }
    public int getNumberofReply(int id) {
        String sql = "SELECT COUNT([discussion_Id])\n"
                + "  FROM [Discussion]\n"
                + "  WHERE [user_id]=? and [discussion_reply]>0;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if(rs.next()) return rs.getInt(1);
        } catch (SQLException e) {
        }
        return 0;
    }

    public int getNumberofComment(int id) {
        String sql = "SELECT COUNT([comment_id])\n"
                + "  FROM [CommentCourse]\n"
                + "  WHERE [user_id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if(rs.next()) return rs.getInt(1);
        } catch (SQLException e) {
        }
        return 0;
    }
    public static void main(String[] args) {
        ProfileDAO dao =new ProfileDAO();
        System.out.println(dao.getNumberofReply(2));
    }
}
