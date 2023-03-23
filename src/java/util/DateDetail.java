/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Admin
 */
public class DateDetail {
    public static String getDateDetail() {
         Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("E,MMM dd,yyyy 'at' HH:mm:ss zzz");
        String strDate = formatter.format(date);
        return strDate ;
    }
}
