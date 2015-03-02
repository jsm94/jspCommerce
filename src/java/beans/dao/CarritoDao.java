/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans.dao;

import beans.Producto;

/**
 *
 * @author Juan Antonio Seco Merchán
 */
public interface CarritoDao {
    public void addProducto(Producto pro) ;
    public void remProducto(Producto pro);
    public void guardarCompra(String nombreYApellidos, String direccion);
    public Double total();
    public void limpiar();
}
