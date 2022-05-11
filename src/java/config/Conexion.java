/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author SENA-WS-H50-1
 */
//ESTA CLASE TIENE TODA 
//LA CONEXION CON LA BASE DE DATOS ESTA NOS AYUDA A CONOCER LA CONEXION A LA BASE DE DATOS
public class Conexion {
    Connection con;
    String url="jdbc:mysql://localhost/bdcarritocompras";
    String usr="root";
    String pass="";
    
    public Connection getConnection(){
       
           try {
            //se carga el driver mysql
              Class.forName("com.mysql.jdbc.Driver");
            //se hace la autentificacion de la bd
         con= (Connection) DriverManager.getConnection(url, usr, pass);
         if(con != null)
            {
                System.out.println("Conexión establecida");
                return con;
            }
         } 
           
         catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        
        
    }
    public static void main(String[] args){
    Conexion miCone = new Conexion();
    miCone.getConnection();
    }
    

    
    
}

