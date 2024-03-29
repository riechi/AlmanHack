/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package it.bogosort.db.model;

import java.util.List;
import it.bogosort.db.DatabaseManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jusem
 */
public class ProdottiFactory {
    private static ProdottiFactory instance;
    private ProdottiFactory(){};
    
    
    public static ProdottiFactory getInstance(){
    if(instance==null){
    instance= new ProdottiFactory();
    }
    return instance;
    }
    
    @SuppressWarnings("empty-statement")
    public List<Prodotto> getAllProdotti(){
    Connection conn=null;
    PreparedStatement stmt=null;
    ResultSet set=null;
    List<Prodotto> prodotti= new ArrayList<>();
    
    try{
    conn= DatabaseManager.getInstance().getDbConnection();
    
    String query="SELECT * FROM prodotti";
    stmt=conn.prepareStatement(query);    
    set= stmt.executeQuery();
    
    while(set.next()){
        Prodotto prodotto= new Prodotto();
        prodotto.setID(set.getLong("id"));
        prodotto.setUsername(set.getString("username"));
        prodotto.setTitolo(set.getString("titolo"));
        prodotto.setAutore(set.getString("autore"));
        prodotto.setImgCopertina(set.getString("copertina"));
        prodotto.setDescrizione(set.getString("descrizione"));
        prodotto.setPrezzo(set.getFloat("prezzo"));
        prodotto.setTipologia(set.getString("categoria"));
        
        prodotti.add(prodotto);
    }
    return prodotti;
    }catch(SQLException e){
        Logger.getLogger(UtenteFactory.class.getName()).log(Level.SEVERE, null, e);
       
    }finally{
    try{set.close();}catch(Exception e){};
    try{stmt.close();}catch(Exception e){};
    try{conn.close();}catch(Exception e){};
    }
       return null;
    }
    
    
    //metodo per inserire il prodotto
    public void inserisciProdotto(String username, String titolo, String autore,String prezzo, String immagine_copertina, String descrizione, String categoria){
    Connection conn=null;
    PreparedStatement stmt=null;
    ResultSet set=null;
        
    try{
    conn= DatabaseManager.getInstance().getDbConnection();
      
    String query="INSERT INTO prodotti VALUES (default, '" +username+ "', '" +titolo+ "', '" +autore+ "', '" +immagine_copertina+ "', '" +descrizione+ "', " +prezzo+ ", '"  +categoria+"')" ;
    stmt=conn.prepareStatement(query);    
    set= stmt.executeQuery();      
    
    }catch(SQLException e){
        Logger.getLogger(UtenteFactory.class.getName()).log(Level.SEVERE, null, e);
       
    }finally{
    try{set.close();}catch(Exception e){};
    try{stmt.close();}catch(Exception e){};
    try{conn.close();}catch(Exception e){};
    }
    }
    
    
    
}
