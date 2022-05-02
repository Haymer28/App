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
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

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
    
    public Usuario validar(String usr, String pss) {
        //instancia la clase de registro beens ya que tiene constructores y getters and setters
        Usuario usu = new Usuario();
        
        String sql = "Select * from registro where Nombres=? and Password=?";
        
        try {
            con= cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, usr);
            ps.setString(2, pss);
            
            rs = ps.executeQuery();
            while (rs.next()) {
                //aca no es necesario las demas cosas que no son nombres y password
                //ya que en "select * from etc " solamente se necesita nombres y password claramente
                
                usu.setId(rs.getInt("id"));
                usu.setNombre(rs.getString("Nombres"));
                usu.setCelular(rs.getString("Celular"));
                usu.setEmail(rs.getString("Correo"));
                usu.setPass(rs.getString("Password"));
                usu.setRol(rs.getString("Rol"));

            }
        } catch (SQLException ex) {
            Logger.getLogger(RegistroDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return usu;
    }
}
