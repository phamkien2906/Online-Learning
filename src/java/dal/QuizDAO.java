/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.Question;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Record;

/**
 *
 * @author vinhkhongnoithatnua_
 */
public class QuizDAO extends DBContext {

    PreparedStatement pstm;
    ResultSet rs;

    public List<Question> getListQuiz(int id) {
        List<Question> listQuiz = new ArrayList<>();
        String query = "Select TOP 30 * from Question as qe\n"
                + "                    Join [Quizz] as qi on qe.Question_id=qi.Question_id\n"
                + "                    where qi.Course_id=?\n"
                + "                     ORDER BY NEWID()";
        try {
            pstm = connection.prepareStatement(query);
            pstm.setInt(1, id);
            rs = pstm.executeQuery();
            while (rs.next()) {
                Question q = new Question(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
                listQuiz.add(q);
            }
            return listQuiz;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public void addRecord(Record reco) {
        String sql = "INSERT INTO [dbo].[Record]\n"
                + "           ([user_id]\n"
                + "           ,[Course_id]\n"
                + "           ,[record_date]\n"
                + "           ,[record_mark]\n"
                + "           ,[recod_quizz])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, reco.getUser_id());
            st.setInt(2, reco.getCourse_id());
            st.setString(3, reco.getRecord_date());
            st.setString(4, reco.getRecord_mark());
            st.setString(5, reco.getRecod_quizz());
            st.executeUpdate();
        } catch (SQLException e) {

        }

    }

    public List<Record> getRecord(int user, int course) {
        List<Record> list = new ArrayList<>();
        String sql = "Select  * from Record \n"
                + "where Record.user_id=? and Record.Course_id=? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, user);
            st.setInt(2, course);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Record(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4),
                        rs.getString(5), rs.getString(6)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public String getRecordbyID(int id) {
        String sql = "SELECT [record_id]\n"
                + "      ,[user_id]\n"
                + "      ,[Course_id]\n"
                + "      ,[record_date]\n"
                + "      ,[record_mark]\n"
                + "      ,[recod_quizz]\n"
                + "  FROM [dbo].[Record]\n"
                + "  where [record_id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getString(6);
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public Question getQuestionbyID(String i) {
        int id =Integer.parseInt(i);
        String sql = "SELECT *\n"
                + "  FROM [SWP-Project].[dbo].[Question]\n"
                + "  where [Question_id]=? ";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs= st.executeQuery();
            while (rs.next()) {                
                Question q = new Question(rs.getInt(1), rs.getString(2), 
                        rs.getString(3), rs.getString(4), rs.getString(5), 
                        rs.getString(6), rs.getString(7), rs.getString(8));
                return q ;
            }
        } catch (SQLException e) {
        }
        return null ;
    }

    public static void main(String[] args) {
        QuizDAO dao = new QuizDAO();
        System.out.println(dao.getQuestionbyID("7"));
    }
}
