/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author SAMSUNG-PC
 */
public class RegistroDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resultado;

    public int insertar(Usuario r) {
        //aca va a consultar el nombre y la contraseña, etc esten localizadas en la base de datos
         //String consulta guardara eso. 
        String sql = "insert into registro(Nombres,Celular,Correo,Password)"
                + "values(?,?,?,?)";
        try {
            
            con = cn.getConnection();
            ps = con.prepareStatement(sql);

            ps.setString(1, r.getNombre());
            ps.setString(2, r.getCelular());
            ps.setString(3, r.getEmail());
            ps.setString(4, r.getPass());
            //esta diciendo aca que el parametro 1 es el usuario y el parametro 2 es la contraseña
            ps.executeUpdate();
            //Ejecuta la sentencia
        } catch (Exception e) {
        }
        //y si se ejecuta bien la sentencia retorna un valor entero
        return resultado;
    } 
    
    public void agregar(Usuario u){
        
        String sql = "insert into registro(Nombres, Celular, Correo, Password)" + "values(?,?,?,?";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, u.getNombre());
            ps.setString(2,u.getCelular());
            ps.setString(3,u.getEmail());
            ps.setString(4,u.getPass());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        
    }
}
