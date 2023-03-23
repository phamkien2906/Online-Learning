/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.user;
import java.io.File;
/**
 *
 * @author Admin
 */
public class test {
     public static void main(String[] args) {
        try {
            File afile = new File("D:\\h1.jsp");
 
            if (afile.renameTo(new File("D:\\new\\" + afile.getName()))) {
                System.out.println("File is moved successful!");
            } else {
                System.out.println("File is failed to move!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
