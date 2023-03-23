/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class User {

    private int user_id;
    private String user_name;
    private String user_password;
    private String user_mail;
    private int user_role;
    private int user_gender;
    private String user_address;
    private String user_phone;
    private String user_avatar;
    private int status;
    private String user_fullname;
    private Date user_birthday;
    private String user_country;
    private String user_facebook;
    private String user_linkedln;
    private String user_twitter;
    private String user_summary;
    private String user_achievement;

    public User() {
    }

    public User(int user_id, String user_name, String user_mail, String user_password, int user_role, int user_gender, String user_address, String user_phone, String user_avatar, int status) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_password = user_password;
        this.user_mail = user_mail;
        this.user_role = user_role;
        this.user_gender = user_gender;
        this.user_address = user_address;
        this.user_phone = user_phone;
        this.user_avatar = user_avatar;
        this.status = status;
    }

    public User(int user_id, String user_name, String user_password, String user_mail, int user_role, int user_gender, String user_address, String user_phone, String user_avatar) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_password = user_password;
        this.user_mail = user_mail;
        this.user_role = user_role;
        this.user_gender = user_gender;
        this.user_address = user_address;
        this.user_phone = user_phone;
        this.user_avatar = user_avatar;
    }

    public User(int user_id, String user_name, String user_password, int user_role) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_password = user_password;
        this.user_role = user_role;
    }

    public User(String user_name, String user_password, int user_role) {

        this.user_name = user_name;
        this.user_password = user_password;
        this.user_role = user_role;
    }

    public User(int user_id, String user_name, String user_password, int user_role, String user_avatar) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_password = user_password;
        this.user_role = user_role;
        this.user_avatar = user_avatar;
    }

    public User(String user_address, String user_phone, String user_avatar, String user_fullname, Date user_birthday, String user_country, String user_facebook, String user_linkedln, String user_twitter, String user_summary, String user_achievement) {
        this.user_address = user_address;
        this.user_phone = user_phone;
        this.user_avatar = user_avatar;
        this.user_fullname = user_fullname;
        this.user_birthday = user_birthday;
        this.user_country = user_country;
        this.user_facebook = user_facebook;
        this.user_linkedln = user_linkedln;
        this.user_twitter = user_twitter;
        this.user_summary = user_summary;
        this.user_achievement = user_achievement;
    }

    public User(int user_id, String user_name,String user_address, String user_phone, String user_avatar, String user_fullname, Date user_birthday, String user_country, String user_summary, String user_achievement) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_address = user_address;
        this.user_phone = user_phone;
        this.user_avatar = user_avatar;
        this.user_fullname = user_fullname;
        this.user_birthday = user_birthday;
        this.user_country = user_country;
        this.user_summary = user_summary;
        this.user_achievement = user_achievement;
    }
    
    

    public String getUser_fullname() {
        return user_fullname;
    }

    public void setUser_fullname(String user_fullname) {
        this.user_fullname = user_fullname;
    }

    public Date getUser_birthday() {
        return user_birthday;
    }

    public void setUser_birthday(Date user_birthday) {
        this.user_birthday = user_birthday;
    }

    public String getUser_country() {
        return user_country;
    }

    public void setUser_country(String user_country) {
        this.user_country = user_country;
    }

    public String getUser_facebook() {
        return user_facebook;
    }

    public void setUser_facebook(String user_facebook) {
        this.user_facebook = user_facebook;
    }

    public String getUser_linkedln() {
        return user_linkedln;
    }

    public void setUser_linkedln(String user_linkedln) {
        this.user_linkedln = user_linkedln;
    }

    public String getUser_twitter() {
        return user_twitter;
    }

    public void setUser_twitter(String user_twitter) {
        this.user_twitter = user_twitter;
    }

    public String getUser_summary() {
        return user_summary;
    }

    public void setUser_summary(String user_summary) {
        this.user_summary = user_summary;
    }

    public String getUser_achievement() {
        return user_achievement;
    }

    public void setUser_achievement(String user_achievement) {
        this.user_achievement = user_achievement;
    }
    
    

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public String getUser_mail() {
        return user_mail;
    }

    public void setUser_mail(String user_mail) {
        this.user_mail = user_mail;
    }

    public int getUser_role() {
        return user_role;
    }

    public void setUser_role(int user_role) {
        this.user_role = user_role;
    }

    public int getUser_gender() {
        return user_gender;
    }

    public void setUser_gender(int user_gender) {
        this.user_gender = user_gender;
    }

    public String getUser_address() {
        return user_address;
    }

    public void setUser_address(String user_address) {
        this.user_address = user_address;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getUser_avatar() {
        return user_avatar;
    }

    public void setUser_avatar(String user_avatar) {
        this.user_avatar = user_avatar;
    }

    @Override
    public String toString() {
        return "User{" + "user_id=" + user_id + ", user_name=" + user_name + ", user_password=" + user_password + ", user_mail=" + user_mail + ", user_role=" + user_role + ", user_gender=" + user_gender + ", user_address=" + user_address + ", user_phone=" + user_phone + ", user_avatar=" + user_avatar + ", status=" + status + ", user_fullname=" + user_fullname + ", user_birthday=" + user_birthday + ", user_country=" + user_country + ", user_facebook=" + user_facebook + ", user_linkedln=" + user_linkedln + ", user_twitter=" + user_twitter + ", user_summary=" + user_summary + ", user_achievement=" + user_achievement + '}';
    }

    

}
