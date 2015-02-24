
package beans;

/**
 * 
 * @author Juan Antonio Seco Merchán
 */
public class LineaVenta {
    /*
    idProducto : int (lectura/escritura)
cantidad : int (lectura/escritura)
precio : double (lectura)
descripcion : String (lectura)
subtotal : double (lectura)
    */
    private Producto producto;
    private Integer cantidad;
    private Double subTotal;

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    public Double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(Double subTotal) {
        this.subTotal = subTotal;
    }

    @Override
    public boolean equals(Object obj) {
        return producto.getId().equals(((LineaVenta)obj).getProducto().getId()); //To change body of generated methods, choose Tools | Templates.
    }
    
}
