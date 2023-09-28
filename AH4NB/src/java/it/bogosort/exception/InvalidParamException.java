/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package it.bogosort.exception;

import java.io.IOException;
import java.io.PrintWriter;




/**
 *
 * @author jusem
 */


public class InvalidParamException extends Exception {
    public InvalidParamException(String errorMessage){
    super(errorMessage);
    }
  
}
