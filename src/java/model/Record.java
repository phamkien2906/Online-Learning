/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Record {
    private int record_id ;
    private int user_id ;
    private int Course_id ;
    private String record_date;
    private String record_mark ;
    private String recod_quizz ;

    public Record(int user_id, int Course_id, String record_date, String record_mark, String recod_quizz) {
        this.user_id = user_id;
        this.Course_id = Course_id;
        this.record_date = record_date;
        this.record_mark = record_mark;
        this.recod_quizz = recod_quizz;
    }

    public Record(int record_id, int user_id, int Course_id, String record_date, String record_mark, String recod_quizz) {
        this.record_id = record_id;
        this.user_id = user_id;
        this.Course_id = Course_id;
        this.record_date = record_date;
        this.record_mark = record_mark;
        this.recod_quizz = recod_quizz;
    }
    

    public int getRecord_id() {
        return record_id;
    }

    public void setRecord_id(int record_id) {
        this.record_id = record_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getCourse_id() {
        return Course_id;
    }

    public void setCourse_id(int Course_id) {
        this.Course_id = Course_id;
    }

    public String getRecord_date() {
        return record_date;
    }

    public void setRecord_date(String record_date) {
        this.record_date = record_date;
    }

    public String getRecord_mark() {
        return record_mark;
    }

    public void setRecord_mark(String record_mark) {
        this.record_mark = record_mark;
    }

    public String getRecod_quizz() {
        return recod_quizz;
    }

    public void setRecod_quizz(String recod_quizz) {
        this.recod_quizz = recod_quizz;
    }

    @Override
    public String toString() {
        return "Record{" + "record_id=" + record_id + ", user_id=" + user_id + ", Course_id=" + Course_id + ", record_date=" + record_date + ", record_mark=" + record_mark + ", recod_quizz=" + recod_quizz + '}';
    }
    
    
}
