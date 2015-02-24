
package beans;

import java.util.ArrayList;

/**
 * 
 * @author Juan Antonio Seco Merchán
 */
public class Carrito {
    private String nombreCliente;
    private String direccionCliente;
    private ArrayList<LineaVenta> lineas = new ArrayList<>();
    private LineaVenta nuevaLinea;
    private Double total;

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getDireccionCliente() {
        return direccionCliente;
    }

    public void setDireccionCliente(String direccionCliente) {
        this.direccionCliente = direccionCliente;
    }

    public ArrayList<LineaVenta> getLineas() {
        return lineas;
    }

    public void setNuevaLinea(LineaVenta nuevaLinea) {
        this.nuevaLinea = nuevaLinea;
        lineas.add(nuevaLinea);
    }

    public Double getTotal() {
        return total;
    }
}
