/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import dal.DAO ;
import dal.EnrollDAO;
import dal.PercentageDAO;

/**
 *
 * @author admin
 */
public class Course {
    private int course_id;
    private String course_name;
    private String course_description;
    private float course_price;
    private int course_number_lesson;
    private String course_image;
    private int user_id ;
    private int percentage ;
    private int course_number_user ;

    public Course() {
    }

    public Course(int course_id, String course_name, String course_description, float course_price, int course_number_lesson, String course_image) {
        this.course_id = course_id;
        this.course_name = course_name;
        this.course_description = course_description;
        this.course_price = course_price;
        this.course_number_lesson = course_number_lesson;
        this.course_image = course_image;
    }

    public int getCourse_number_user() {
        EnrollDAO dao = new EnrollDAO();
        return dao.getNumberUser(course_id);
    }

    public void setCourse_number_user(int course_number_user) {
        this.course_number_user = course_number_user;
    }
    

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getCourse_description() {
        return course_description;
    }

    public void setCourse_description(String course_description) {
        this.course_description = course_description;
    }

    public int getCourse_price() {
        return (int)course_price;
    }

    public void setCourse_price(float course_price) {
        this.course_price = course_price;
    }

    public int getCourse_number_lesson() {
        return course_number_lesson;
    }

    public void setCourse_number_lesson(int course_number_lesson) {
        this.course_number_lesson = course_number_lesson;
    }

    public String getCourse_image() {
        return course_image;
    }

    public void setCourse_image(String course_image) {
        this.course_image = course_image;
    }

    public int getNumbercomment(){
        DAO d= new DAO();
        return d.countCommentCourse(course_id);
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getPercentage() {
        PercentageDAO dao = new PercentageDAO();
        int num = dao.getPercentageOfCourse(course_id, user_id);
        int result = num*100/course_number_lesson;
        return result;
    }

    public void setPercentage(int percentage) {
        this.percentage = percentage;
    }
    

   
    
}
