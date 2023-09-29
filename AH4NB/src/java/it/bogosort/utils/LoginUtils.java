package it.bogosort.utils;
import it.bogosort.exception.InvalidParamException;
/**
 *
 * @author jusem
 */
public class LoginUtils{
    
    
    private static String[] username={"hpLove","PinoInsegno"};
   private static String[] password={"ilovemycat","kakapaga"};
    
    public static boolean checkPassword(String inUsername, String inPassword)throws InvalidParamException {
     
      
      for(int i=0; i<username.length && i<password.length ;i++){
    
           if(inUsername == null ? username[i] == null : inUsername.equals(username[i])){
               if(inPassword == null ? password[i] == null : inPassword.equals(password[i]))return true;
        }}
      return false;
     
    }

    
    
}
    
    

            
        
  
