package it.bogosort.utils;
import it.bogosort.exception.InvalidParamException;
/**
 *
 * @author jusem
 */
public class LoginUtils{
    
    
    private static String[] username={"hpLove","PinoInsegno"};
   private static String[] password={"ilovemycat","kakapaga"};
    
    public static void checkPasswordi(String inUsername, String inPassword)throws InvalidParamException {
      boolean flag1=true;
      
      for(int i=0; i<username.length && i<password.length ;i++){
    
           if(inUsername == null ? username[i] == null : inUsername.equals(username[i])){
               if(inPassword == null ? password[i] == null : inPassword.equals(password[i]))flag1=false;
        }}
     if(flag1)throw new InvalidParamException("Password Errata");
     
     
    }
    
    

}
    
    

            
        
  
