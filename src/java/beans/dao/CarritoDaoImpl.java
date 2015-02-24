
package beans.dao;

import beans.Carrito;
import beans.Producto;
import beans.LineaVenta;

/**
 * 
 * @author Juan Antonio Seco Merchán
 */
public class CarritoDaoImpl implements CarritoDao{
    private Carrito carrito = new Carrito();    
    
    @Override
    public void addProducto(Producto pro) {
        int indice = carrito.getLineas().indexOf(pro);
        if(indice != -1){
            LineaVenta linea = carrito.getLineas().get(indice);
            int cantidad = linea.getCantidad();
            linea.setCantidad(++cantidad);
            linea.setSubTotal(pro.getPrecio() * cantidad);
        } else {
            LineaVenta linea = new LineaVenta();
            linea.setProducto(pro);
            linea.setCantidad(1);
            linea.setSubTotal(pro.getPrecio());
            carrito.getLineas().add(linea);
        }
    }

    @Override
    public void remProducto(Producto pro) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Double total() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String toString() {
        return ""+carrito.getLineas();
    }
}
