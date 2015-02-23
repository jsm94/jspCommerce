/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package beans;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.*;
import utiles.BD;

/**
 * 
 * @author Juan Antonio Seco Merchán
 */
public class Almacen {
    private ArrayList<Producto> productos;

    public ArrayList<Producto> getProductos() {
        Connection con = null;
        productos = new ArrayList<>();
        try {
            con = BD.conectar();
            Statement stm = con.createStatement();
            String sql = "SELECT * FROM Productos;";
            ResultSet rs = stm.executeQuery(sql);
            while(rs.next()){
                Producto pro = new Producto();
                pro.setId(rs.getInt("idProducto"));
                pro.setNombre(rs.getString("nombre"));
                pro.setDescripcion(rs.getString("descripcion"));
                pro.setPrecio(rs.getDouble("precio"));
                pro.setImagen(rs.getString("imagen"));
                productos.add(pro);
            }
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Almacen.class.getName()).log(Level.SEVERE, null, ex);
        }
        return productos;
    }
    
    public ArrayList<Producto> getProductosByName(String name) {
        Connection con = null;
        productos = new ArrayList<>();
        try {
            con = BD.conectar();
            Statement stm = con.createStatement();
            String sql = "SELECT * FROM Productos WHERE nombre LIKE '%" + name + "%';";
            ResultSet rs = stm.executeQuery(sql);
            while(rs.next()){
                Producto pro = new Producto();
                pro.setId(rs.getInt("idProducto"));
                pro.setNombre(rs.getString("nombre"));
                pro.setDescripcion(rs.getString("descripcion"));
                pro.setPrecio(rs.getDouble("precio"));
                pro.setImagen(rs.getString("imagen"));
                productos.add(pro);
            }
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Almacen.class.getName()).log(Level.SEVERE, null, ex);
        }
        return productos;
    }
    
    
}
