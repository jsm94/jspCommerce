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
        try {
            con = BD.conectar();
            Statement stm = con.createStatement();
            String sql = "";
            ResultSet rs = stm.executeQuery(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Almacen.class.getName()).log(Level.SEVERE, null, ex);
        }
        return productos;
    }
}
