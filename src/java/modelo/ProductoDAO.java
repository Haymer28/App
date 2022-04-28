/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import config.Conexion;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User1
 */
public class ProductoDAO {
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public List Listar(){
        List<Producto>lista=new ArrayList<>();
        String sql="select * from producto";
        try {
        con=cn.getConnection();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        while(rs.next()){
            Producto p=new Producto();
            p.setId(rs.getInt(1));
            p.setNom(rs.getString(2));
            p.setFoto(rs.getBinaryStream(3));
            p.setDes(rs.getString(4));
            p.setPrecio(rs.getDouble(5));
            p.setStock(rs.getInt(6));
            lista.add(p);
        }
        } catch (Exception e) {
        }
        return lista;
        
    }
    
    public void listarImg(int id, HttpServletResponse response){
        String sql="select * from producto where idProducto="+id;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        
        try {
            outputStream=response.getOutputStream();
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            if(rs.next()){
                inputStream=rs.getBinaryStream("Foto");
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i=0;
            while((i=bufferedInputStream.read() )!= -1){
                bufferedOutputStream.write(i);
            }
        } catch (Exception ex) {
        }
    }
    
    public void agregar(Producto p){
        
        String sql = "insert in to producto(Nombres, Foto, Descripcion, Precio, Stock)" + "values(?,?,?,?,?)";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, p.getNom());
            ps.setBlob(2,p.getFoto());
            ps.setString(3,p.getDes());
            ps.setDouble(4,p.getPrecio());
            ps.setInt(5,p.getStock());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        
    }
    
}
