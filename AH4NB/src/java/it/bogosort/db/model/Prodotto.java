/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package it.bogosort.db.model;


import java.util.Objects;
/**
 *
 * @author jusem
 */
public class Prodotto {
 private long id;
 private String username;
 private String titolo;
 private String autore;
 private String imgCopertina;
 private String descrizione;
 private float  prezzo;
 private String tipologia;
 
 
 public Prodotto(){};
 
 public long getID(){ return id;}
 public void setID(long id){this.id=id;}
 
 public String getUsername(){ return username;}
 public void setUsername(String username){this.username=username;}
 
 public String getTitolo(){ return titolo;}
 public void setTitolo(String titolo){this.titolo=titolo;}
 
 public String getAutore(){ return autore;}
 public void getAutore(String autore){this.autore=autore;}
 
 public String getImgCopertina(){ return imgCopertina;}
 public void setImgCopertina(String imgCopertina){this.imgCopertina=imgCopertina;}
 
 public String getDescrizione(){ return descrizione;}
 public void setDescrizione(String descrizione){this.descrizione=descrizione;}
 
 public float getPrezzo(){ return prezzo;}
 public void setPrezzo(float prezzo){this.prezzo=prezzo;}
 
 public String getTipologia(){ return tipologia;}
 public void setTipologia(String tipologia){this.tipologia=tipologia;}
 
 
 
@Override
    public boolean equals(Object obj){
    if(this==obj){return true;}
    if(this==null){return false;}
    if(getClass()!=obj.getClass()){return false;}
    
    final Prodotto other=(Prodotto) obj;
    if(!Objects.equals(this.username, other.username)){return false;}
    return true;
    }
    
    @Override
    public int hashCode(){
    int hash=7;
    hash=79*hash+Objects.hashCode(this.username);
    return hash;    
    }
    
 
}
