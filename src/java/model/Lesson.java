/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class Lesson {

    private int lesson_id;
    private String lesson_video;
    private String lesson_level;
    private int chapter_id;
    private int image_id;
    private String lesson_content;
    private int lesson_number;
    private int course_id;


    public Lesson() {
    }

    public Lesson(int lesson_id, String lesson_video, String lesson_lever, int chapter_id, int image_id, String lesson_content, int lesson_number) {
        this.lesson_id = lesson_id;
        this.lesson_video = lesson_video;
        this.lesson_level = lesson_lever;
        this.chapter_id = chapter_id;
        this.image_id = image_id;
        this.lesson_content = lesson_content;
        this.lesson_number = lesson_number;

    }

    public Lesson(int lesson_id, String lesson_video, String lesson_level, int chapter_id, int image_id, String lesson_content, int lesson_number, int course_id) {
        this.lesson_id = lesson_id;
        this.lesson_video = lesson_video;
        this.lesson_level = lesson_level;
        this.chapter_id = chapter_id;
        this.image_id = image_id;
        this.lesson_content = lesson_content;
        this.lesson_number = lesson_number;
        this.course_id = course_id;
    }
    

    public Lesson(int lesson_id, String lesson_level, int chapter_id, String lesson_content, int lesson_number, int course_id) {
        this.lesson_id = lesson_id;
        this.lesson_level = lesson_level;
        this.chapter_id = chapter_id;
        this.lesson_content = lesson_content;
        this.lesson_number = lesson_number;
        this.course_id = course_id;
    }

    public Lesson(int lesson_id, String lesson_level, int chapter_id, String lesson_content, int lesson_number) {
        this.lesson_id = lesson_id;
        this.lesson_level = lesson_level;
        this.chapter_id = chapter_id;
        this.lesson_content = lesson_content;
        this.lesson_number = lesson_number;
    }

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }

    

    public int getLesson_id() {
        return lesson_id;
    }

    public void setLesson_id(int lesson_id) {
        this.lesson_id = lesson_id;
    }

    public String getLesson_video() {
        return lesson_video;
    }

    public void setLesson_video(String lesson_video) {
        this.lesson_video = lesson_video;
    }


    public String getLesson_level() {
        return lesson_level;
    }

    public void setLesson_level(String lesson_lever) {
        this.lesson_level = lesson_lever;
    }

    public int getChapter_id() {
        return chapter_id;
    }

    public void setChapter_id(int chapter_id) {
        this.chapter_id = chapter_id;
    }

    public int getImage_id() {
        return image_id;
    }

    public void setImage_id(int image_id) {
        this.image_id = image_id;
    }


    public String getLesson_content() {
        return lesson_content;
    }

    public void setLesson_content(String lesson_content) {
        this.lesson_content = lesson_content;
    }

    public int getLesson_number() {
        return lesson_number;
    }

    public void setLesson_number(int lesson_number) {
        this.lesson_number = lesson_number;
    }

    
}
