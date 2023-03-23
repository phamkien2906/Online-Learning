/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class UserDAO extends DBContext {

    public boolean checkUser(String s) {
        String sql = "SELECT  [user_name]\n"
                + "  FROM [SWP-Project].[dbo].[User]\n"
                + "  where [user_name]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s);
            ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return false;
            }
        } catch (SQLException e) {
        }
        return true;
    }

    public User checkUserById(int id) {
        String sql = "SELECT  * \n"
                + "  FROM [SWP-Project].[dbo].[User]\n"
                + "  where User_Id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User u = new User(rs.getInt("User_Id"), rs.getString("user_name"),
                        rs.getString("user_mail"),
                        rs.getString("user_password"),
                        rs.getInt("user_role"),
                        rs.getInt("user_gender"), rs.getString("user_address"),
                        rs.getString("user_phone"), rs.getString("user_avatar"), rs.getInt("user_status"));
                return u;
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public void addUser(String user, String pass) {
        String sql = "INSERT INTO [dbo].[User]\n"
                + "           ([user_name]\n"
                + "           ,[user_password])\n"
                + "     VALUES(?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            st.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void insertUser(User u) {
        String sql = "INSERT INTO [dbo].[User]\n"
                + "           ([user_name]\n"
                + "           ,[user_mail]\n"
                + "           ,[user_password]\n"
                + "           ,[user_role]\n"
                + "           ,[user_gender]\n"
                + "           ,[user_address]\n"
                + "           ,[user_phone])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, u.getUser_name());
            st.setString(2, u.getUser_mail());
            st.setString(3, u.getUser_password());
            st.setInt(4, u.getUser_role());
            st.setInt(5, u.getUser_gender());
            st.setString(6, u.getUser_address());
            st.setString(7, u.getUser_phone());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public User checkUserGoogle(String username) {
        String sql = "SELECT [User_Id]\n"
                + "      ,[user_name]\n"
                + "      ,[user_mail]\n"
                + "      ,[user_password]\n"
                + "      ,[user_role]\n"
                + "      ,[user_gender]\n"
                + "      ,[user_address]\n"
                + "      ,[user_phone]\n"
                + "      ,[user_avatar]\n"
                + "  FROM [dbo].[User]\n"
                + "  where user_name=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User u = new User(rs.getInt("User_Id"), username, rs.getString("user_password"),
                        rs.getString("user_mail"), rs.getInt("user_role"),
                        rs.getInt("user_gender"), rs.getString("user_address"),
                        rs.getString("user_phone"), rs.getString("user_avatar"));
                return u;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public List<User> getAllUser() {

        List<User> list = new ArrayList<>();
        String sql = "SELECT [User_Id]\n"
                + "      ,[user_name]\n"
                + "      ,[user_mail]\n"
                + "      ,[user_password]\n"
                + "      ,[user_role]\n"
                + "      ,[user_gender]\n"
                + "      ,[user_address]\n"
                + "      ,[user_phone]\n"
                + "      ,[user_avatar]\n"
                + "      ,[user_status]\n"
                + "  FROM [dbo].[User]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt("User_Id"), rs.getString("user_name"), rs.getString("user_mail"), rs.getString("user_password"), rs.getInt("user_role"), rs.getInt("user_gender"), rs.getString("user_address"), rs.getString("user_phone"), rs.getString("user_avatar"), rs.getInt("user_status"));
                list.add(u);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public User getInformationUser(int id) {
        String sql = "SELECT  *\n"
                + "  FROM [SWP-Project].[dbo].[User]\n"
                + "  where [User_Id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User u = new User(rs.getString(7), rs.getString(8), rs.getString(9),
                        rs.getString(11), rs.getDate(12), rs.getString(13),
                        rs.getString(14), rs.getString(15), rs.getString(16),
                        rs.getString(17), rs.getString(18));
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void updateAvatar(String s, int id) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [user_avatar] = ?\n"
                + " WHERE [User_Id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateName(String s, int id) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [user_fullname] = ?\n"
                + " WHERE [User_Id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateBirthday(String s, int id) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [user_birthday] = ?\n"
                + " WHERE [User_Id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updatePhone(String s, int id) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [user_phone] = ?\n"
                + " WHERE [User_Id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateCountry(String s, int id) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [user_country] = ?\n"
                + " WHERE [User_Id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateAddress(String s, int id) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [user_address] = ?\n"
                + " WHERE [User_Id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateFacebook(String s, int id) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [user_facebook] = ?\n"
                + " WHERE [User_Id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateLinkedln(String s, int id) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [user_linkedln] = ?\n"
                + " WHERE [User_Id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateTwitter(String s, int id) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [user_twitter] = ?\n"
                + " WHERE [User_Id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateSummary(String s, int id) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [user_summary] = ?\n"
                + " WHERE [User_Id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateAchievement(String s, int id) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [user_achievement] = ?\n"
                + " WHERE [User_Id]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public User getUserById(int id) {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[User]\n"
                + "  where User_Id =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                User u = new User(rs.getInt(1),rs.getString(2), rs.getString(7), 
                        rs.getString(8), rs.getString(9), rs.getString(11), 
                        rs.getDate(12), rs.getString(13), rs.getString(17), 
                        rs.getString(18));
                return u ;
            }
        } catch (SQLException e) {
        }
        return null ;
    }

    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
//        Date date = Date.valueOf("2023-01-26");
//        dao.updateBirthday("2023-02-26", 1);
        System.out.println(dao.getUserById(1));

    }

}
