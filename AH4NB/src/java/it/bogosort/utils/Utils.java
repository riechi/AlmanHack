/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package it.bogosort.utils;
import it.bogosort.exception.InvalidParamException;
/**
 *
 * @author jusem
 */
public class Utils {
    
    public static void checkString(String param, int min, int max)throws InvalidParamException {
    if(param==null) throw new InvalidParamException("parametro nullo");
    if(param.length()<min || param.length() >max) throw new InvalidParamException("grandezza illegale deve essere compresa tra " + min + "e" + max);
   
    }    
    
    public static void checkInteger(String param, int min, int max)throws InvalidParamException {
        try{
    int value= Integer.valueOf(param);
    if(value<min || value>max)throw new InvalidParamException("scemo numero troppo grande o piccolo");
    }catch(NumberFormatException e){
        throw new InvalidParamException("valore invalido");
            }
}
}