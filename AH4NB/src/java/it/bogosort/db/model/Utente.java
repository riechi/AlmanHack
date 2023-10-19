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
public class Utente {
    
    private String username;
    private String passw;
    private String nome;
    private String cognome;
    
    
    public Utente(){}
    
    public String getUsername(){return username;}
    
    public void setUsername(String username){this.username=username;}
    
    public String getPassw(){ return passw;}
    
    public void setPassw(String passw){this.passw=passw;}
    
    public String getNome(){return nome;}
    
    public void setNome(String nome){this.nome=nome;}
    
    public String getCognome(){return cognome;}
    
    public void setCognome(String cognome){this.cognome=cognome;}
    
    @Override
    public boolean equals(Object obj){
    if(this==obj){return true;}
    if(this==null){return false;}
    if(getClass()!=obj.getClass()){return false;}
    
    final Utente other=(Utente) obj;
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
