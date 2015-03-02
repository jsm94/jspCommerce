package beans.dao;

import beans.Almacen;
import beans.Carrito;
import beans.Producto;
import beans.LineaVenta;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import utiles.BD;

/**
 *
 * @author Juan Antonio Seco Merchán
 */
public class CarritoDaoImpl implements CarritoDao {

    private Carrito carrito = new Carrito();

    @Override
    public void addProducto(Producto pro) {
        LineaVenta lineaTemp = new LineaVenta();
        lineaTemp.setProducto(pro);
        int indice = carrito.getLineas().indexOf(lineaTemp);
        if (indice != -1) {
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
        LineaVenta lineaTemp = new LineaVenta();
        lineaTemp.setProducto(pro);
        //int indice = carrito.getLineas().indexOf(lineaTemp);
        carrito.getLineas().remove(lineaTemp);
    }

    @Override
    public Double total() {
        double total = 0.00;
        for (LineaVenta linea : carrito.getLineas()) {
            total = total + linea.getSubTotal();
        }
        return total;
    }

    public ArrayList<LineaVenta> getLineas() {
        return carrito.getLineas();
    }

    public void guardarCompra(String nombreYApellidos, String direccion) {
        Connection con = null;
        try {
            con = BD.conectar();
            Statement stm = con.createStatement();
            String sql = "SELECT idVenta FROM Ventas ORDER BY idVenta DESC LIMIT 1;";
            ResultSet rs = stm.executeQuery(sql);
            int idVenta = 0;
            if (rs.next()) {
                idVenta = rs.getInt(1) + 1;
            }
            PreparedStatement stmSQL = con.prepareStatement(
                    "INSERT INTO Ventas (idVenta,nombreCliente,direccionCliente) values (?,?,?);");
            stmSQL.setInt(1, idVenta);
            stmSQL.setString(2, nombreYApellidos);
            stmSQL.setString(3, direccion);
            stmSQL.executeUpdate();

            // Realizamos la insercion de los productos por venta
            PreparedStatement stmSQL2 = con.prepareStatement(
                    "INSERT INTO VentasProductos (idVenta,idProducto,cantidad,subtotal) values (?,?,?,?);");
            String insert = "";
            ArrayList<LineaVenta> lineas = carrito.getLineas();
            for (LineaVenta linea : lineas) {
                stmSQL2.setInt(1, idVenta);
                stmSQL2.setInt(2, linea.getProducto().getId());
                stmSQL2.setInt(3, linea.getCantidad());
                stmSQL2.setDouble(4, linea.getSubTotal());
                stmSQL2.executeUpdate();
            }
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Almacen.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void limpiar() {
        carrito.getLineas().clear();
    }
    
    @Override
    public String toString() {
        return "" + carrito.getLineas() + " = " + total();
    }
}
