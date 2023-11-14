/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package it.bogosort.db.model;




import java.sql.Connection ;
import java.sql.SQLException;
import it.bogosort.db.DatabaseManager;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
/**
 *
 * @author jusem
 */
public class UtenteFactory {
    private static UtenteFactory instance;
    
    private UtenteFactory(){};
    
    public static UtenteFactory getInstance(){
        if(instance==null){
            instance= new UtenteFactory();
        }
    
    return instance;
    }
    
    public Utente getUtenteByUsernamePassword(String username, String passw){
    Connection conn=null;
    PreparedStatement stmt=null;
    ResultSet set=null;
    
    try{
    conn= DatabaseManager.getInstance().getDbConnection();
    
    String query="SELECT * FROM utenti WHERE username = ? AND passw = ?";
    stmt=conn.prepareStatement(query);
    stmt.setString(1, username);
    stmt.setString(2, passw);
    
    set= stmt.executeQuery();
    
    if(set.next()){
        Utente utente= new Utente();
        utente.setUsername(set.getString("username"));
        utente.setPassw(set.getString("passw"));
        utente.setNome(set.getString("nome"));
        utente.setCognome(set.getString("cognome"));
        return utente;
    }else{return null;}   
    
    }catch(SQLException e){
        Logger.getLogger(UtenteFactory.class.getName()).log(Level.SEVERE, null, e);
       
    }finally{
    try{set.close();}catch(Exception e){};
    try{stmt.close();}catch(Exception e){};
    try{conn.close();}catch(Exception e){};
    }
    
    return null;
    }
}
